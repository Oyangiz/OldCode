/**
 * Created by icbrains on 17-5-26.
 */
$(document).ready(function () {
    $(".user-login").click(function () {
        $.ajax({
            type:"POST",
            uri:"http://localhost:8080/sshdemo/account/login",
            data:{requestLogin:"login"},
            error:function (re,status,xhr) {
                $.ajax({
                    type:"GET",
                    uri:"/error/404.jsp",
                });
            }
        });
    });

    $(".user-login").click(function () {
        $.ajax({
            type:"GET",
            url:"/account/login",
            data:{login:"login"}
        });
    });

    // $(".mobile-develop").click(function () {
    //    // alert("success");
    //     $.ajax({
    //         type:"GET",
    //         url:"/plate/mobiledevelop",
    //         data:{mobile:"mobile"}
    //         // success:function (data,status,xhr) {
    //         //     if (!(status=="success")){
    //         //         $.ajax({
    //         //             type:"GET",
    //         //             url:"/error/404",
    //         //             data:"404"
    //         //         });
    //         //     }
    //         // }
    //     });
    //
    // });
});
