import MySQLdb
import re
import os

count = 0

conn = MySQLdb.connect(host="ma2year.XXXXXX.rds.amazonaws.com", user="arthur", passwd="millionarthur", db="ma2year",charset="utf8")
cursor = conn.cursor()
if conn:
    print("Database  Connected")


def readfile(filepath):
    with open(filepath) as f:
        origin = f.readline().strip('\n').replace('ma(', '')
        maid = f.name.split("-")[-1].split(".")[0]
        login_days = re.search(r'(?<=login_days":")(.*?)(?=",)', origin)
        create_days = re.search(r'(?<=create_days":")(.*?)(?=",)', origin)
        top100 = re.search(r'(?<=top100":")(.*?)(?=",)', origin)
        free_gold = re.search(r'(?<=free_gold":")(.*?)(?=",)', origin)
        lost = re.search(r'(?<=lost":")(.*?)(?=",)', origin)
        register_time = re.search(r'(?<=register_time":")(.*?)(?=",)', origin)
        shipping = re.search(r'(?<=shipping":")(.*?)(?="})', origin)
        # print(maid)
        # print(origin)
        # print(int(login_days.group()))
        # print(int(create_days.group()))
        # print(int(top100.group()))
        # print(int(free_gold.group()))
        # print(int(lost.group()))
        # print(register_time.group())
        # print(int(shipping.group()))

        if free_gold.group().isdigit():
            sql = "insert into maplayer(maid, origin, login_days, create_days, top100, free_gold, lost,register_time, shipping) values(%s, %s, %s, %s, %s, %s, %s, str_to_date(%s,'%%Y-%%m-%%d'), %s)"
            param = (maid, origin, login_days.group(), create_days.group(), top100.group(),
                     free_gold.group(), lost.group(), register_time.group(), shipping.group())
            try:
                cursor.execute(sql, param)
                conn.commit()
                print("commit")

            except:
                conn.rollback()
                print("rollback")

        else:
            sql = "insert into maplayer(maid, origin, login_days, create_days, top100, lost,register_time, shipping) values(%s, %s, %s, %s, %s, %s, str_to_date(%s,'%%Y-%%m-%%d'), %s)"
            param = (
            maid, origin, login_days.group(), create_days.group(), top100.group(), lost.group(),
            register_time.group(), shipping.group())
            try:
                cursor.execute(sql, param)
                conn.commit()
                print("commit")

            except:
                conn.rollback()
                print("rollback")


def eachfile(filepath):
    pathDir = os.listdir(filepath)  # 获取当前路径下的文件名，返回List
    lenth = len(pathDir)
    for s in pathDir:
        newDir = os.path.join(filepath, s)  # 将文件名加入到当前文件路径后面
        global count
        count += 1
        print(count, "/", lenth)
        if os.path.isfile(newDir):  # 如果是文件
            if os.path.splitext(newDir)[1] == ".json":  # 判断是否是txt
                readfile(newDir)  # 读文件
                pass
        else:
            pass

eachfile("/Users/oyangiz/PycharmProjects/toAWS")



cursor.close()
conn.close()
