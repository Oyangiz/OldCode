/**
 * Created by oyangiz on 2017/9/19.
 */
import java.io.*;
import java.util.*;
import java.util.zip.InflaterInputStream;

public class ExtractYYS {
    static String OUT_PATH = "/Users/oyangiz/Developer/GamesLab/test/out/";
    //        static String NPK_PATH = "/media/data/Onmyoji/script.npk";
    static String NPK_PATH = "/Users/oyangiz/Developer/GamesLab/test/image.npk";
    static String PNG_HEAD = "8950";//89504E470D0A1A0A
    static String ZLIB_HEAD = "789c";
    static String ENCRYPT_ZLIB_HEAD = "1d04";
    //    static String ZLIB_HEAD = "1d04";
    static Set<Head> HEADS = null;

    public static void main(String[] args) throws IOException {
        File file = new File(NPK_PATH);
        RandomAccessFile af = new RandomAccessFile(file, "r");
        List<FileInfo> fileInfos = extractFileInfo(af);
        extractAllFile(af, fileInfos);
//        excludeDuplicates();
    }


    private static Set<Head> getHeads() {
        if (HEADS == null) {
            HEADS = new HashSet<Head>();
            HEADS.add(new Head("ab4b5458", ".ktx"));
            HEADS.add(new Head("89504E470D0A1A0A", ".x.png"));
            HEADS.add(new Head("ffd8ffe1070345786966", ".exif.jpg"));
            HEADS.add(new Head("52474953", ".gis"));//rgis
            HEADS.add(new Head("3c4e", ".NeoX.xml"));
            HEADS.add(new Head("3c3f786d6c", ".xml"));
            HEADS.add(new Head("3480c8bb020005", ".bkg"));
        }
        return HEADS;
    }

    private static List<FileInfo> extractFileInfo(RandomAccessFile af) throws IOException {
        af.seek(0x14);
        String op = read(af, 4);
        long p = Long.parseLong(op, 16);
        af.seek(p);
        long len = af.length();
        List<FileInfo> fileInfos = new ArrayList<FileInfo>();
        while (af.getFilePointer() < len) {
            FileInfo fileInfo = new FileInfo();
            fileInfo.setSign(read(af, 4));
            fileInfo.setOffset(read(af, 4));
            fileInfo.setLength(read(af, 4));
            fileInfo.setOriginalLength(read(af, 4));
            fileInfo.setHash(read(af, 8));
            fileInfo.setUnknown(read(af, 4));
            fileInfos.add(fileInfo);
        }
        return fileInfos;
    }

    private static void analysisHead(RandomAccessFile af, List<FileInfo> fileInfos) throws IOException {
        Map<String, Integer> s = new HashMap<String, Integer>();
        for (FileInfo fileInfo : fileInfos) {
            long offset = Long.parseLong(fileInfo.offset, 16);
            af.seek(offset);
            String c = read(af, 2, false);
            if (s.get(c) == null) {
                s.put(c, 0);
            }
            s.put(c, s.get(c) + 1);
        }
        for (Map.Entry<String, Integer> ss : s.entrySet()) {
            System.out.println(ss.getKey() + "--" + ss.getValue());
        }
    }

    private static void extractAllFile(RandomAccessFile af, List<FileInfo> fileInfos) throws IOException {
        long fileNum = 0, size = fileInfos.size(), sTime = new Date().getTime();
        for (FileInfo fileInfo : fileInfos) {
            long offset = Long.parseLong(fileInfo.offset, 16);
            af.seek(offset);
            String head = read(af, 2, false);
            if (PNG_HEAD.equalsIgnoreCase(head)) {
                saveFile(af, fileInfo, ".png");
            } else if (ZLIB_HEAD.equalsIgnoreCase(head)) {
                decompressToFile(af, fileInfo);
            } else if (ENCRYPT_ZLIB_HEAD.equalsIgnoreCase(head)) {
                decrypt(af, fileInfo);
            } else {
                saveFile(af, fileInfo, ".text");
            }
            fileNum++;
            if (fileNum % 100 == 0) {
                System.out.println(fileNum + "/" + size + " s:" + (new Date().getTime() - sTime) / 1000);
            }
        }
    }

    private static void decrypt(RandomAccessFile af, FileInfo fileInfo) {

    }

    private static void saveFile(RandomAccessFile af, FileInfo fileInfo, String suffix) throws IOException {
        if (suffix == null) {
            suffix = "";
        }
        long size = Long.parseLong(fileInfo.getLength(), 16);
        af.seek(Long.parseLong(fileInfo.getOffset(), 16));
        String fileName = OUT_PATH + fileInfo.getSign() + suffix;
        File file = new File(fileName);
        FileOutputStream os = new FileOutputStream(file);
        try {
            for (long i = 0L; i < size; i++) {
                os.write(af.readUnsignedByte());
            }
        } finally {
            os.close();
        }
    }

    private static void decompressToFile(RandomAccessFile af, FileInfo fileInfo) throws IOException {
        long offset = Long.parseLong(fileInfo.offset, 16),
                size = Long.parseLong(fileInfo.getLength(), 16);
        String fileName = OUT_PATH + fileInfo.getSign();
        ByteArrayOutputStream bos = null;
        ByteArrayInputStream bis = null;
        InflaterInputStream iis = null;
        FileOutputStream fos = null;
        try {
            bos = new ByteArrayOutputStream();
            af.seek(offset);
            for (long i = 0; i < size; i++) {
                bos.write(af.readUnsignedByte());
            }
            bis = new ByteArrayInputStream(bos.toByteArray());
            iis = new InflaterInputStream(bis);
            File file = new File(fileName);
            fos = new FileOutputStream(file);
            String suffix = null;
            byte[] bytes = new byte[2048];
            int s;
            while ((s = iis.read(bytes)) != -1) {
                if (suffix == null) {
                    suffix = analysisFileSuffix(bytes);
//                    if(!".x.png".equalsIgnoreCase(suffix)){
//                        throw new IOException("");
//                    }
                }
                fos.write(bytes, 0, s);
            }
//            int s;
//            while ((s = iis.read()) != -1) {
//                fos.write(s);
//            }
            if (suffix.length() > 0) {
                file.renameTo(new File(fileName + suffix));
            }

            fos.close();
//            renameFileSuffix(fileName);
        } catch (IOException e) {
            (new File(fileName)).delete();
//            System.out.println(e);
//            throw e;
        } finally {
            if (bos != null) bos.close();
            if (bis != null) bis.close();
            if (iis != null) iis.close();
            if (fos != null) fos.close();
        }
    }

    private static String analysisFileSuffix(byte[] bytes) throws IOException {
        String suffix = "";
        Set<Head> heads = getHeads();
        for (Head head : heads) {
            String h = bytesToHexString(bytes, head.getLength());
            if (head.getVal().equalsIgnoreCase(h)) {
                suffix = head.getSuffix();
                break;
            }
        }
        return suffix;
    }

    private static void renameFileSuffix(String fileName) throws IOException {
        FileInputStream fis = null;
        try {
            File file = new File(fileName);
            fis = new FileInputStream(file);
            int len = file.length() < 1024 ? (int) file.length() : 1024;
            byte[] bytes = new byte[len];
            fis.read(bytes);
            fis.close();
            String suffix = null;
            Set<Head> heads = getHeads();
            for (Head head : heads) {
                String h = bytesToHexString(bytes, head.getLength());
                if (head.getVal().equalsIgnoreCase(h)) {
                    suffix = head.getSuffix();
                    break;
                }
            }
            if (suffix != null) {
                file.renameTo(new File(fileName + suffix));
            }
        } finally {
            if (fis != null) fis.close();
        }
    }

    public static String bytesToHexString(byte[] bytes) {
        return bytesToHexString(bytes, bytes.length);
    }

    public static String bytesToHexString(byte[] bytes, int len) {
        StringBuilder stringBuilder = new StringBuilder("");
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        for (int i = 0; i < len; i++) {
            int v = bytes[i] & 0xFF;
            String hv = Integer.toHexString(v);
            if (hv.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }

    private static String read(RandomAccessFile af, int size) throws IOException {
        return read(af, size, true);
    }

    private static String read(RandomAccessFile af, int size, boolean reverse) throws IOException {
        byte[] bytes = new byte[size];
        if (reverse) {
            for (int i = size - 1; i >= 0; i--) {
                bytes[i] = af.readByte();
            }
        } else {
            for (int i = 0; i < size; i++) {
                bytes[i] = af.readByte();
            }
        }
        return bytesToHexString(bytes);
    }

    private static String readOld(RandomAccessFile af, int size, boolean reverse) throws IOException {
        List<Integer> bytes = new ArrayList<Integer>();
        for (int i = 0; i < size; i++) {
            bytes.add(af.readUnsignedByte());
        }
        StringBuilder bs = new StringBuilder();
        if (reverse) {
            Collections.reverse(bytes);
        }
        String b;
        for (Integer byt : bytes) {
            b = Integer.toHexString(byt);
            if (b.length() == 1) {
                b = "0" + b;
            }
            bs.append(b);
        }
        return bs.toString();
    }

    static class Head {
        private String val;
        private Integer length = null;
        private String suffix;

        public Head(String val, String suffix) {
            this.val = val;
            this.suffix = suffix;
        }

        public String getVal() {
            return val;
        }

        public void setVal(String val) {
            this.val = val;
        }

        public int getLength() {
            if (length == null) {
                length = val.length() / 2;
            }
            return length;
        }

        public String getSuffix() {
            return suffix;
        }

        public void setSuffix(String suffix) {
            this.suffix = suffix;
        }
    }

    static class FileInfo {
        private String sign;
        private String offset;
        private String length;
        private String originalLength;
        private String hash;
        private String unknown;

        public String getSign() {
            return sign;
        }

        public void setSign(String sign) {
            this.sign = sign;
        }

        public String getOffset() {
            return offset;
        }

        public void setOffset(String offset) {
            this.offset = offset;
        }

        public String getLength() {
            return length;
        }

        public void setLength(String length) {
            this.length = length;
        }

        public String getOriginalLength() {
            return originalLength;
        }

        public void setOriginalLength(String originalLength) {
            this.originalLength = originalLength;
        }

        public String getHash() {
            return hash;
        }

        public void setHash(String hash) {
            this.hash = hash;
        }

        public String getUnknown() {
            return unknown;
        }

        public void setUnknown(String unknown) {
            this.unknown = unknown;
        }
    }
}
