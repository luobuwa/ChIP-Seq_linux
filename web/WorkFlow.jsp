<%@ page import="java.net.URLEncoder" %>
<<<<<<< HEAD
<%@ page import="ChIP_Seq.TokenProcessor" %>
=======
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/9 0009
  Time: 下午 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <METE NAME="renderer" CONTENT="webkit|ie-comp|ie-stand"/>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache"/>
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"/>
    <META HTTP-EQUIV="expires" CONTENT="0"/>
    <title></title>
    <link rel="stylesheet" href="./layer/skin/layer.css">
    <link rel="stylesheet" href="./layer/skin/layer.ext.css">
    <link rel="stylesheet" href="./css/banner.css">
    <link rel="stylesheet" href="./css/workflow.css">
    <script src="./jquery-1.11.1/jquery.js"></script>
    <script src="./layer/layer.js"></script>
    <script src="./js/banner.js"></script>
    <script src="./js/workflow.js"></script>
    <script src="./js/jquery.easyui.min.js"></script>
    <script src="./js/jquery.min.js"></script>
    <script language="JavaScript">
<<<<<<< HEAD
        function ValidateChar(s) {
            var valid=false;
            var pattern = new Array("~", "`", "!", "@", "#", "$", "%", "^", "&", "{", "}", "[", "]", "(", ")",";","\"", "'", "\\", "<", ">", "?", "/", "<<", ">>","+");
            for (var i = 0; i < pattern.length; i++){
                if (s.indexOf(pattern[i]) >= 0){
                    valid=true;
                    break;
                }
                else{
                    valid=false;
                }
            }
            if(valid){
                return true;
            }
            else{
                return false;
            }
        }
        function searchData(id,btnbox,waitbox) {
            var flag = "valid";
            //    var pattern = new RegExp("[<>\"`~!@#$^&*()=|{}';'\\[\\]<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]") ;
            var frm = document.getElementById(id).getElementsByTagName("input");
            for (var i = 0; i < frm.length; i++) {
                if (frm[i].type == "text") {
                    if(frm[i].value=="" || frm[i].value==null){
                        flag="empty";
                        break;
                    }
                    else{
                        if (ValidateChar(frm[i].value)) {
                            flag = "invalid";
                            break;
                        }
                        else{
                            flag="valid";
                        }
                    }
                }
            }
            if (flag=="invalid") {
                alert("The input contains invalid character,please input again!");
                return false;
            }
            else if(flag=="empty"){
                alert("The input cannot be empty!");
                return false;
            }
            else {
                document.getElementById(btnbox).style.backgroundColor = '#666666';
                document.getElementById(waitbox).style.display = 'block';
                return true;
            }
        }
        function checkFileExt(filename,box) {
            var flag=null; //状态
            var arr = ["fasta","fastq","FASTA","FASTQ","fa","fq","sam","SAM","BED","bed","txt","TXT"];
            //取出上传文件的扩展名
            var index = filename.lastIndexOf(".");
            var ext = filename.substr(index+1);
            //循环比较
            if(document.getElementById(box).value=="" || document.getElementById(box).value==null){
                flag="empty";
            }
            else{
                for(var i=0;i<arr.length;i++) {
                    if(ext == arr[i])
                    {
                        flag = "valid"; //一旦找到合适的，立即退出循环
                        break;
                    }
                    else{
                        flag="invalid";
                    }
                }
            }

            //条件判断
            if(flag=="valid")
            {
               return  true;
            }
            else if(flag=="empty"){
                alert("The input cannot be empty!");
                document.getElementById(box).value="";
                return false;
            }
            else{
                alert("The file uploaded should be in right format!");
                document.getElementById(box).value="";
                return false;
            }
        }
        function fileChange(target,box){
            var filename;
            filename=target.files[0].name;
            var fileSize;
            var filemaxsize = 2048*1024;//1G
            fileSize = target.files[0].size;
            var size = fileSize / 1024;
            if(size>filemaxsize){
                alert("Upload files can not be larger than 2G!");
                document.getElementById(box).value="";
                target.value ="";
                return false;
            }
            if(size<=0){
                alert("Upload files can not be empty!");
                target.value ="";
                return false;
            }
            else{
                document.getElementById(box).value=filename;
                return true;
            }
        }
=======

>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
        function del() {
            var msg = "If you leave this page, the operation will be stopped!";
            if (confirm(msg)==true){
                return true;
            }else{
                return false;
            }
        }

        window.onload=function() {
            var count=1;
            var login =<%=session.getAttribute("login")%>;
            var obj = document.getElementById('choose_home');
            obj.onclick = function () {
                var x = document.getElementsByClassName("Upload_wait_div");
                var i;
                for (i = 0; i < x.length; i++) {
                    if (x[i].style.display == 'block') {
                        if (del()) {
                            if (login == '2') {
                                window.location.href = "home.jsp";
                            }
                            else {
                                window.location.href = "home_initial.jsp";
                            }
                        }
                        else {
                            return false;
                        }
                    }
                    else {
                        if (login == '2') {
                            window.location.href = "home.jsp";
                        }
                        else {
                            window.location.href = "home_initial.jsp";
                        }
                    }
                }
            }
            var obj = document.getElementById('choose_tool');
            obj.onclick = function () {
                var x = document.getElementsByClassName("Upload_wait_div");
                var i;
                for (i = 0; i < x.length; i++) {
                    if (x[i].style.display == 'block') {
                        if (del()) {
                            window.location.href = "Tools_initial.jsp";
                        }
                        else {
                            return false;
                        }
                    }
                    else {
                        window.location.href = "Tools_initial.jsp";
                    }
                }
            }
            var obj = document.getElementById('choose_meme');
            obj.onclick = function () {
                var x = document.getElementsByClassName("Upload_wait_div");
                var i;
                for (i = 0; i < x.length; i++) {
                    if (x[i].style.display == 'block') {
                        if (del()) {
                            window.location.href = "MEME.jsp";
                        }
                        else {
                            return false;
                        }
                    }
                    else {
                        window.location.href = "MEME.jsp";
                    }
                }
            }
            var obj = document.getElementById('choose_work');
            obj.onclick = function () {
                var x = document.getElementsByClassName("Upload_wait_div");
                var i;
                for (i = 0; i < x.length; i++) {
                    if (x[i].style.display == 'block') {
                        if (del()) {
                            window.location.href = "WorkFlow.jsp";
                        }
                        else {
                            return false;
                        }
                    }
                    else {
                        window.location.href = "WorkFlow.jsp";
                    }
                }
            }
            var obj = document.getElementById('choose_help');
            obj.onclick = function () {
                var x = document.getElementsByClassName("Upload_wait_div");
                var i;
                for (i = 0; i < x.length; i++) {
                    if (x[i].style.display == 'block') {
                        if (del()) {
                            window.location.href = "ContactUs.jsp";
                        }
                        else {
                            return false;
                        }
                    }
                    else {
                        window.location.href = "ContactUs.jsp";
                    }
                }
            }

            //flag显示define还是result
<<<<<<< HEAD
            if("${flag}"=="1"||"${flag}"=="2"||"${flag}"=="3"){
                for (var i = 1; i <= 3; i++) {
=======
            if("${flag}"=="1"||"${flag}"=="2"||"${flag}"=="3"||"${flag}"=="4"){
                for (var i = 1; i <= 4; i++) {
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                    document.getElementById("side_right_" + i).style.display = "none";
                    document.getElementById("side_son_" + i).style.backgroundColor = "#dadada";
                    document.getElementById("side_son_" + i).style.color = "#555555";
                }
                document.getElementById("side_son_" +'${flag}').style.backgroundColor = "#fa7923";
                document.getElementById("side_son_" + '${flag}').style.color = "#ffffff";
                document.getElementById("side_right_" + '${flag}').style.display = "block";
            }

//是否显示命令行查看框
            if('${flag_command}'==1){
                document.getElementById("workflow_resultTips").style.display="block";
            }
            else{
                document.getElementById("workflow_resultTips").style.display="none";
            }

            //mapping可视化的图片
            if("${mapping_scope}"==""){
                if('${mapping_visual_scope}'==''&& '${workflowCustom_path}'==''){
<<<<<<< HEAD
                  //  path="/home/bio/software/apache-tomcat-7.0.73/webapps/ROOT/img/mapping_visual.png";
                  //  $("#mapping_img").attr("src","http://compubio.csu.edu.cn/mapping_img.jsp?path="+path);
                    $("#mapping_img").attr("src","/img/mapping_visual.png");
=======
                    path="/home/bio/software/apache-tomcat-7.0.73/webapps/ChIP-Seq_linux_war/img/mapping_visual.png";
                    $("#mapping_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path);
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
                else{
                    var scope;
                    if('${mapping_visual_scope}'==''){
                        scope="all";
                    }
                    else{
                        scope="${mapping_visual_scope}";
                        scope=scope.replace(/\|/g,"_");
                        scope=scope.replace(/:/g,"_");
                    }
<<<<<<< HEAD
                   // var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                 //   $("#mapping_img").attr("src","http://compubio.csu.edu.cn/mapping_img.jsp?path="+path);
                    $("#mapping_img").attr("src","/img/mapping_visual.png");
=======
                    var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                    $("#mapping_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path);
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
            }
            else{
                scope="${mapping_scope}";
                scope=scope.replace(/\|/g,"_");
                scope=scope.replace(/:/g,"_");
<<<<<<< HEAD
               // var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
              //  $("#mapping_img").attr("src","http://compubio.csu.edu.cn/mapping_img.jsp?path="+path);
                $("#mapping_img").attr("src","/img/mapping_visual.png");
=======
                var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                $("#mapping_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path);
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            }
            //peakcalling可视化的图片
            if('${peakcalling_scope}'==''){
                if('${peakcalling_visual_scope}'==''&& '${workflowCustom_path}'==''){
<<<<<<< HEAD
                  //  $("#peakcalling_img").attr("src","http://compubio.csu.edu.cn/img/peakcalling_visual.png");
                    $("#peakcalling_img").attr("src","/img/peakcalling_visual.png");
=======
                    $("#peakcalling_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/img/peakcalling_visual.png");
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
                else{
                    var scope;
                    if('${peakcalling_visual_scope}'==''){
                        scope="all";
                    }
                    else{
                        scope="${peakcalling_visual_scope}";
                        scope=scope.replace(/\|/g,"_");
                        scope=scope.replace(/:/g,"_");
                    }
<<<<<<< HEAD
                  //  var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                 //   $("#peakcalling_img").attr("src","http://compubio.csu.edu.cn/mapping_img.jsp?path="+path);
                    $("#peakcalling_img").attr("src","/img/peakcalling_visual.png");
=======
                    var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                    $("#peakcalling_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path);
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
            }
            else{
                var scope;
                scope="${peakcalling_scope}";
                scope=scope.replace(/\|/g,"_");
                scope=scope.replace(/:/g,"_");
<<<<<<< HEAD
               // var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
               // $("#peakcalling_img").attr("src","http://compubio.csu.edu.cn/mapping_img.jsp?path="+path);
                $("#peakcalling_img").attr("src","/img/peakcalling_visual.png");
=======
                var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                $("#peakcalling_img").attr("src","http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path);
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            }

            if('${Session}'=='Y')
            {
                document.getElementById("login_spanUpdate").style.display="block";
            }
            else{
                document.getElementById("login_spanUpdate").style.display="none";
            }

        }


        function expandPhoto(){
            var overlay=document.createElement("div");
            overlay.setAttribute("id","overlay");
            overlay.setAttribute("class","overlay");
            document.body.appendChild(overlay);

            var img=document.createElement("img");
            img.setAttribute("class","overlayimg");
            if('${mapping_scope}'==''){
                if('${mapping_visual_scope}'==''&& '${workflowCustom_path}'==''){
<<<<<<< HEAD
                    img.src="http://compubio.csu.edu.cn/img/mapping_visual.png";
=======
                    img.src="http://202.197.61.235/ChIP-Seq_linux_war/img/mapping_visual.png";
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
                else{
                    var scope;
                    if('${mapping_visual_scope}'==''){
                        scope="all";
                    }
                    else{
                        scope="${mapping_visual_scope}";
                        scope=scope.replace(/\|/g,"_");
                        scope=scope.replace(/:/g,"_");
                    }
<<<<<<< HEAD
                   // var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                   // img.src="http://compubio.csu.edu.cn/mapping_img.jsp?path="+path;
                    img.src="http://compubio.csu.edu.cn/img/mapping_visual.png";
=======
                    var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                    img.src="http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path;
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
            }
            else{
                var scope="${mapping_scope}";
                scope=scope.replace(/\|/g,"_");
                scope=scope.replace(/:/g,"_");
<<<<<<< HEAD
              //  var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
              //  img.src="http://compubio.csu.edu.cn/mapping_img.jsp?path="+path;
                img.src="http://compubio.csu.edu.cn/img/mapping_visual.png";
=======
                var path="${workflowCustom_path}"+"/"+scope+"_mapping.png";
                img.src="http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path;
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            }
            document.getElementById("overlay").appendChild(img);
            img.onclick=restore;
        }
        function expandPhoto1(){
            var overlay=document.createElement("div");
            overlay.setAttribute("id","overlay");
            overlay.setAttribute("class","overlay");
            document.body.appendChild(overlay);

            var img=document.createElement("img");
            img.setAttribute("class","overlayimg");
            if("${peakcalling_scope}"==''){
                if('${peakcalling_visual_scope}'==''&& '${workflowCustom_path}'==''){
<<<<<<< HEAD
                    img.src="http://compubio.csu.edu.cn/img/peakcalling_visual.png";
=======
                    img.src="http://202.197.61.235/ChIP-Seq_linux_war/img/peakcalling_visual.png";
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
                else{
                    var scope;
                    if('${peakcalling_visual_scope}'==''){
                        scope="all";
                    }
                    else{
                        scope="${peakcalling_visual_scope}";
                        scope=scope.replace(/\|/g,"_");
                        scope=scope.replace(/:/g,"_");
                    }
<<<<<<< HEAD
                 //   var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                 //   img.src="http://compubio.csu.edu.cn/mapping_img.jsp?path="+path;
                    img.src="http://compubio.csu.edu.cn/img/peakcalling_visual.png";
=======
                    var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                    img.src="http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path;
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                }
            }
            else{
                scope="${peakcalling_scope}";
                scope=scope.replace(/\|/g,"_");
                scope=scope.replace(/:/g,"_");
<<<<<<< HEAD
              //  var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
               // img.src="http://compubio.csu.edu.cn/mapping_img.jsp?path="+path;
                img.src="http://compubio.csu.edu.cn/img/peakcalling_visual.png";
=======
                var path="${workflowCustom_path}"+"/"+scope+"_peakcalling.png";
                img.src="http://202.197.61.235/ChIP-Seq_linux_war/mapping_img.jsp?path="+path;
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            }
            document.getElementById("overlay").appendChild(img);
            img.onclick=restore;
        }
        function restore(){
            document.body.removeChild(document.getElementById("overlay"));
            document.body.removeChild(document.getElementById("img"));
        }

        function Add_div(){
            var oDiv=document.createElement("div");
            oDiv.style.border="1px solid black";

        }

        function recentShow(){
            window.location.href = "RecentJob.jsp";
        }
        var count=1;
        function Tip_click(TipId){
            var id="#tip"+TipId;
            if(TipId==1){
                if(count==1){
                    layer.tips('Please input .fastq format file',id,{tips:[1,'#fa7923'],time:10000});
                    count++;
                }
                   else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==2){
                if(count==1){
                    layer.tips('If you choose to input reference ,please input .fasta format file.',id,{tips:[1,'#fa7923'],time:10000});
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }

            }
            else if(TipId==3){
                if(count==1){
                layer.tips('Please input .fastq format file.',id,{
                    tips:[1,'#fa7923'],time:10000
                });
                    count++;}
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==4) {
                if(count==1) {
                    layer.tips('Choose the mapping tool you want to use.', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==5){
                if(count==1) {
                    layer.tips('Choose the Peak calling tool you want to use."S" means the tool is suitable for detecting the sharp peaks, "B" means the tool is suitable for detecting the broad peaks.', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==6){
                if(count==1) {
                    layer.tips('Newly generated file:generated by the workflow finished just now.', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==7){
                if(count==1) {
                    layer.tips('Specify the name of the chrom and the loci(e.g.,chr1:113,114,120-113,164,120)', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==8){
                if(count==1) {
                    layer.tips('Newly generated file:generated by the workflow finished just now.', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==9){
                if(count==1) {
                    layer.tips('Specify the name of the chrom and the loci(e.g.,chr1:113,114,120-113,164,120)', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else if(TipId==10){
                if(count==1) {
                    layer.tips('The output file will be sent to this e-mail address.', id, {
                        tips: [1, '#fa7923'],time:10000
                    });
                    count++;
                }
                else{
                    layer.close(layer.index);
                    count--;
                }
            }
            else{}
        }

    </script>
<style type="text/css">
    #logo_span{
        width:236px;
        height:125px;
        float:left;
        margin-left:8%;
        margin-top:10px;
        background-image: url("./img/logo.png");
    }
    #login_spanUpdate{
        width:110px;
        height:30px;
        text-align: center;
        line-height: 30px;
        top:20px;
        right:30px;
        color:#ffffff;
        position:absolute;
    }
    #login_spanUpdate:hover{
        width:110px;
        height:30px;
        top:20px;
        right:30px;
        text-align: center;
        line-height: 30px;
        border-radius: 5px;
        background-color:rgba(255,255,255,0.9);
        text-shadow:1px 2px 3px #bdbcbb;
        color:#fa7923;
        position:absolute;
        font-weight: 200;
    }
    .tip1{
        width:15px;
        height:15px;
        margin-left:-8px;
    }
    a{
        color:#999999;
        font-size:12px;
    }
    a1{
       color:#999999;
        font-size:12px;
        margin-left:3px;
    }
    h3{
        position:relative;
        margin-top:-20px;
        padding-left:5px;
        color:#999999;
        font-size:12px;
    }
    h4{
        margin-top:-20px;
        margin-left:135px;
        color:#999999;
        font-size:12px;
    }
    h6{
        font-size:12px;
        font-weight: 200;
        color:#666666;
        margin-top:5px;
        margin-bottom:5px;
    }
    h7{
        font-size:13px;
        color:#999999;
    }
    h5{
        font-size:25px;
        font-weight: 400;
        margin-left:35px;
        margin-top:5px;
    }
</style>
</head>
<body>
<<<<<<< HEAD
<%
    //获取令牌类实例
    TokenProcessor processor = TokenProcessor.getInstance();
    //获取令牌值
    String token = processor.getToken(request);
%>
<div id="back">
    <div id="banner">
        <input type="hidden" name="org.sunxin.token" value="<%=token%>"/>
        <input type="text" name="Session" style="display:none" value="<%=session.getAttribute("Session")%>" >
=======
<div id="back">
    <div id="banner">
        <input type="text" name="Session" style="display:none" value="<%=session.getAttribute("Session")%>">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
        <div id="logo_span"></div>
        <div id="list_choose">
            <div id="choose_help">About Us</div>
            <div id="choose_meme">Downstream Analysis</div>
            <div id="choose_tool">Tools</div>
            <div  id="choose_work">Work Flow</div>
            <div  id="choose_home">Home</div>
        </div>
        <div id="login_spanUpdate" style="display: none" onclick="recentShow();">Recent Jobs</div>

    </div>
    <div id="side_center">
        <div id="left_side">
            <div class="side_radio"></div>
            <div class="side_top"><h5>Work Flow</h5></div>
            <div class="side_parent" id="side_parent1">
                <div class="arrow1" id="arrow1" style="display:block"></div>
                <div class="arrow2" id="arrow2" style="display:none"></div>
                Custom workflow</div>
<<<<<<< HEAD
            <div class="side_son" id="side_son_1" style="background-color: #fa7923;color:#ffffff" onclick="JavaScript:side_right_show(1,3)">Define workflow input</div>

            <div class="side_parent" id="side_parent2">
                <div class="arrow1" id="arrow5" style="display:block"></div>
                <div class="arrow2" id="arrow6" style="display:none"></div>
                Visualization</div>
            <div class="side_son" id="side_son_2" onclick="JavaScript:side_right_show(2,3)">Mapping visualization</div>
            <div class="side_son" id="side_son_3" onclick="JavaScript:side_right_show(3,3)">Peakcalling visualization</div>

        <div id="demo_describe">
            <span style="font-size: 18px ;color:#ffffff">Demo dataset:</span>  <br>
            <input type="button" id="Demo_btn" class="Demo_btn" value="Use demo dataset" style="display:block;"onclick="window.location.reload();"/>(Click here to fill the input.)<br>
=======
            <div class="side_son" id="side_son_1" style="background-color: #fa7923;color:#ffffff" onclick="JavaScript:side_right_show(1,4)">Define workflow input</div>
            <div class="side_parent" id="side_parent2" style="display:none">
                <div class="arrow1" id="arrow3" style="display:block"></div>
                <div class="arrow2" id="arrow4" style="display:none"></div>
                Demo workflow</div>
            <div class="side_son" id="side_son_2" style="display:none" onclick="JavaScript:side_right_show(2,4)">Demo workflow input</div>

            <div class="side_parent" id="side_parent3">
                <div class="arrow1" id="arrow5" style="display:block"></div>
                <div class="arrow2" id="arrow6" style="display:none"></div>
                Visualization</div>
            <div class="side_son" id="side_son_3" onclick="JavaScript:side_right_show(3,4)">Mapping visualization</div>
            <div class="side_son" id="side_son_4" onclick="JavaScript:side_right_show(4,4)">Peakcalling visualization</div>

        <div id="demo_describe">
            <span style="font-size: 18px ;color:#ffffff">Demo dataset:</span>  <br>
            <input type="button" id="Demo_btn" class="Demo_btn" value="Use demo dataset" style="display:block;"onclick="Demo_right(1)"/>(Click here to fill the input.)<br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            <span style="font-size:16px;color:#ffffff">all experiments:</span>GEO GSE41187<br>
            <span style="font-size:16px;color:#ffffff">reference:</span> Escherichia_coli_K12.fasta<br>
            <span style="font-size:16px;color:#ffffff">experiment:</span>IP ChIP-seq Anaerobic A (SRX189773 - SRR576933)<br>
            <span style="font-size:16px;color:#ffffff">control:</span>anaerobic INPUT DNA (SRX189778 - SRR576938)<br>
            <span style="font-size:16px;color:#ffffff">The above demo dataset is from:</span>  <br>Myers et al. Genome-scale analysis of escherichia coli FNR reveals complex features of transcription factor binding. PLOS Genetics 9(6):e1003565 (2013).<br>
        </div>
<<<<<<< HEAD
    </div>
        <div id="side_right">
=======

    </div>
        <div id="side_right">
            <div id="side_right_2" style="display:none">
                <form action="demo_workflow_exe" enctype="multipart/form-data" method="post" onsubmit="document.getElementById('btn_workflow1').style.backgroundColor='#666666';document.getElementById('wait_workflow1').style.display='block';">
                    <iframe class="frame_1" src="work_right_2.jsp"></iframe>
                    <input type="submit" value="Execute" class="Execute_btn_side2" id="btn_workflow1"/>
                    <div id="wait_workflow1" class="Upload_wait_div_demo" style="display:none;">
                        <img src="./img/wait.gif" class="Upload_wait" />
                        Uploading and processing your file,please wait.You may click the "Recent Jobs" at the top to access your job's results after the processing.
                    </div>
                </form>
            </div>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
            <div class="side_right" id="side_right_1" style="display:block">
                <div id="attention1" class="blackdown_tips_1">
                    The input of Demo workflow has been filled on this page. Please click the "Execute" to run the demo.
                    <br>
                </div>
<<<<<<< HEAD
                <form action="customWorkflow_exe" id="customWorkflow_exe" enctype="multipart/form-data" method="post" onsubmit="return searchData('customWorkflow_exe','btn_workflow','wait_workflow');" >
=======
                <form action="customWorkflow_exe" enctype="multipart/form-data" method="post" onsubmit="document.getElementById('btn_workflow').style.backgroundColor='#666666';document.getElementById('wait_workflow').style.display='block';">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                <div class="blacktop_1">
                    Select type of the input
                    <s:fielderror fieldName="workflow_type" cssStyle="color:red;float:right;margin-top:0px;"  />
                </div>
                <div class="blackdown_1">
                    <input type="radio" name="workflow_type" value="1" checked="true"  onclick="document.getElementById('file-box_workflow_sequence').style.display='block';document.getElementById('file-box_workflow_paired').style.display='none';">single-end
                    <input type="radio" name="workflow_type" value="2" onclick="document.getElementById('file-box_workflow_sequence').style.display='none';document.getElementById('file-box_workflow_paired').style.display='block';">paired-end
                </div>
                    <div class="blacktop_1">
                        Select reference to build index or use a built-in index
                        <div class="tip_out"><img class="tip" id="tip2" src="./img/tip.png" onclick="JavaScript:Tip_click(2)"></div>
                        <s:fielderror fieldName="workflowCustom_reference" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                    </div>
                    <div class="blackdown_2_workflow">
                        <input type="radio" name="refer_index_workCustom"  value="1" checked="true" onclick="document.getElementById('file-box_workflow_reference').style.display='block';document.getElementById('workflowCustom_build').style.display='none';"/>Select reference to build index
                        <input type="radio" name="refer_index_workCustom"  value="2" onclick="document.getElementById('file-box_workflow_reference').style.display='none';document.getElementById('workflowCustom_build').style.display='block';"/>Use a built-in index
                        <div class="file-box" id="file-box_workflow_reference" style="display:block">
                            <input type='text' name='workflowCustom_reference' id="workflowCustom_reference" value="Escherichia_coli_K12.fasta" class='input_text' />
                            <input type='button' class='btn' value='Choose File' />
<<<<<<< HEAD
                            <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_re" onchange="return  checkFileExt(this,'workflowCustom_reference')" />
=======
                            <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_re" onchange="document.getElementById('workflowCustom_reference').value=this.value;fileChange(this,'workflowCustom_reference');" />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                        </div>
                        <div id="workflowCustom_build" style="display:none">
                            <select name="workflowCustom_build" class="gomo_select">
                                <option value="1" selected="selected">Human(b37) hg19</option>
                                <option value="-2">Human(b37) hg38</option>
                            </select><br>
                        </div>
                    </div>
                <div class="blacktop_1">
                    Input the sequences file
                    <div class="tip_out"><img class="tip" id="tip1" src="./img/tip.png" onclick="JavaScript:Tip_click(1)"></div>
                    <s:fielderror fieldName="workflowCustom_sequence" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                    <s:fielderror fieldName="workflowCustom_sequence_pair1text" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                    <s:fielderror fieldName="workflowCustom_sequence_pair2" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                </div>
                <div class="blackdown_1">
                    <div class="file-box" id="file-box_workflow_sequence" style="display:block">
<<<<<<< HEAD
                        <input type='text' name='workflowCustom_sequence' id="workflowCustom_sequence" value="SRR576933.fastq"  class='input_text'/>
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_se" onchange="return (fileChange(this,'workflowCustom_sequence' )&& checkFileExt(this.value,'workflowCustom_sequence'))" />
                    </div>
                    <div class="file-box" id="file-box_workflow_paired" style="display:none;">
                        <input type="text" name="workflowCustom_sequence_pair1text" value="reads_1.fastq" class="input_text_pair" id="workflowCustom_sequence_pair1text" onBlur="ValidateChar(this.value,'workflowCustom_sequence_pair1text')"/>
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_file1" onchange="return (fileChange(this,'workflowCustom_sequence_pair1text' )&& checkFileExt(this.value,'workflowCustom_sequence_pair1text'))" />
                        <input type="text" name="workflowCustom_sequence_pair2" value="reads_2.fastq" class="input_text_pair" id="workflowCustom_sequence_pair2" onBlur="ValidateChar(this.value,'workflowCustom_sequence_pair2')"/>
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_file2" onchange="return (fileChange(this,'workflowCustom_sequence_pair2' )&& checkFileExt(this.value,'workflowCustom_sequence_pair2'))" />
=======
                        <input type='text' name='workflowCustom_sequence' id="workflowCustom_sequence" value="SRR576933.fastq"  class='input_text' />
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_se" onchange="document.getElementById('workflowCustom_sequence').value=this.value;fileChange(this,'workflowCustom_sequence');" />
                    </div>
                    <div class="file-box" id="file-box_workflow_paired" style="display:none;">
                        <input type="text" name="workflowCustom_sequence_pair1text" class="input_text_pair" id="workflowCustom_sequence_pair1"/>
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_file1" onchange="document.getElementById('workflowCustom_sequence_pair1').value=this.value;fileChange(this,'workflowCustom_sequence_pair1');" />
                        <input type="text" name="workflowCustom_sequence_pair2" class="input_text_pair" id="workflowCustom_sequence_pair2"/>
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_file2" onchange="document.getElementById('workflowCustom_sequence_pair2').value=this.value;fileChange(this,'workflowCustom_sequence_pair2');" />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                    </div>
                </div>

                <div class="blacktop_1">
                    Input the control file
                <div class="tip_out"><img class="tip" id="tip3" src="./img/tip.png" onclick="JavaScript:Tip_click(3)"></div>
                 <s:fielderror fieldName="workflowCustom_control" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                </div>
                <div class="blackdown_1">
                    <div class="file-box" style="display:block">
<<<<<<< HEAD
                        <input type='text' name='workflowCustom_control' id="workflowCustom_control" value="SRR576938.fastq" class='input_text' onBlur="ValidateChar(this.value,'workflowCustom_control')" />
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_control" onchange="return (fileChange(this,'workflowCustom_control' )&& checkFileExt(this.value,'workflowCustom_control'))" />
=======
                        <input type='text' name='workflowCustom_control' id="workflowCustom_control" value="SRR576938.fastq" class='input_text' />
                        <input type='button' class='btn' value='Choose File' />
                        <input type="file" name="fileField_workflow" class="fileField" id="fileField_workflow_control" onchange="document.getElementById('workflowCustom_control').value=this.value;fileChange(this,'workflowCustom_control');" />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                    </div>
                </div>

                    <div class="blacktop_1">
                        Mapping
                        <div class="tip_out"><img class="tip" id="tip4" src="./img/tip.png" onclick="JavaScript:Tip_click(4)"></div>
                    </div>
                    <div class="blackdown_1_workflowCustom" style="overflow-y:scroll;">
                        <input type="radio" name="workflowCustom_mapping" value="1" onclick="
                    document.getElementById('workflowCustom_option_1').style.display='block';
                    document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='none';">BWA<a1>mapping DNA sequences against a large reference genome</a1><br>
                        <div id="workflowCustom_option_1" style="display:none">
                            -Choose the type of the reference genome.<br>
                            <input type="radio" name="long_short" value="1"/>long genome
                            <input type="radio" name="long_short" value="2" checked="true"/>short genome<br>
                            -Whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_bwa" value="1" checked="true" onclick="document.getElementById('workflow_custom_bwa').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_bwa" value="2" onclick="document.getElementById('workflow_custom_bwa').style.display='block'">setting by yourself
                        </div>
                        <div id="workflow_custom_bwa" class="inputOption_setting" style="display:none;">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                maximum edit distance if the value is integer, or the fraction of missing alignments given 2% uniform base error rate if float. In the latter case, the maximum edit distance is automatically chosen for different read lengths.<br>
                                <h6>aln -n; default=0.04</h6>
<<<<<<< HEAD
                                <input type="text" id="analysisMode_n" name="analysisMode_n" class="input_setting_text" value="0.04"/>
                                maximum number or gap openings<br>
                                <h6>aln -o; default=1</h6>
                                <input type="text" id="analysisMode_o" name="analysisMode_o" class="input_setting_text" value="1"/>
                                maximum number of gap extensions<br>
                                <h6>aln -e; -1 disables long gaps and invokes k-difference mode; default=-1</h6>
                                <input type="text" id="analysisMode_e" name="analysisMode_e" class="input_setting_text" value="-1"/>
                                do not put an indel within this many bp towards the ends<br>
                                <h6>aln -i; default=5</h6>
                                <input type="text" id="analysisMode_i" name="analysisMode_i" class="input_setting_text" value="5" />
                                maximum occurrences for extending a long deletion<br>
                                <h6>aln -d; default=10</h6>
                                <input type="text" id="analysisMode_d" name="analysisMode_d" class="input_setting_text" value="10"  />
                                seed length<br>
                                <h6>aln -l; default=32</h6>
                                <input type="text" id="analysisMode_l" name="analysisMode_l" class="input_setting_text" value="32" />
                                maximum differences in the seed<br>
                                <h6>aln -k; default=2</h6>
                                <input type="text" id="analysisMode_k" name="analysisMode_k" class="input_setting_text" value="2" />
                                maximum entries in the queue<br>
                                <h6>aln -m; default=2000000</h6>
                                <input type="text" id="analysisMode_m" name="analysisMode_m" class="input_setting_text" value="2000000" />
                                mismatch penalty<br>
                                <h6>aln -M; default=3</h6>
                                <input type="text" id="analysisMode_MM" name="analysisMode_M" class="input_setting_text" value="3" />
                                gap open penalty<br>
                                <h6>aln -O; default=11</h6>
                                <input type="text" id="analysisMode_OO" name="analysisMode_O" class="input_setting_text" value="11" />
                                gap extension penalty<br>
                                <h6>aln -E; default=4</h6>
                                <input type="text" id="analysisMode_EE" name="analysisMode_E" class="input_setting_text" value="4" />
                                stop searching when there are more than this value of equally best hits<br>
                                <h6>aln -R; default=30</h6>
                                <input type="text" id="analysisMode_R" name="analysisMode_R" class="input_setting_text" value="30"/>
                                quality threshold for read trimming down to 35bp<br>
                                <h6>aln -q; default=0</h6>
                                <input type="text" id="analysisMode_q" name="analysisMode_q" class="input_setting_text" value="0" />
                                length of barcode<br>
                                <h6>aln -B; optional parameter</h6>
                                <input type="text" id="analysisMode_B" name="analysisMode_B" class="input_setting_text" value="0"/>
                                log-scaled gap penalty for long deletions<br>
                                <h6>aln -L; optional parameter</h6>
                                <input type="text" id="analysisMode_LL" name="analysisMode_L" class="input_setting_text" value="0"/>
=======
                                <input type="text" name="analysisMode_n" class="input_setting_text" value="0.04"/>
                                maximum number or gap openings<br>
                                <h6>aln -o; default=1</h6>
                                <input type="text" name="analysisMode_o" class="input_setting_text" value="1"/>
                                maximum number of gap extensions<br>
                                <h6>aln -e; -1 disables long gaps and invokes k-difference mode; default=-1</h6>
                                <input type="text" name="analysisMode_e" class="input_setting_text" value="-1"/>
                                do not put an indel within this many bp towards the ends<br>
                                <h6>aln -i; default=5</h6>
                                <input type="text" name="analysisMode_i" class="input_setting_text" value="5"/>
                                maximum occurrences for extending a long deletion<br>
                                <h6>aln -d; default=10</h6>
                                <input type="text" name="analysisMode_d" class="input_setting_text" value="10"/>
                                seed length<br>
                                <h6>aln -l; default=32</h6>
                                <input type="text" name="analysisMode_l" class="input_setting_text" value="32"/>
                                maximum differences in the seed<br>
                                <h6>aln -k; default=2</h6>
                                <input type="text" name="analysisMode_k" class="input_setting_text" value="2"/>
                                maximum entries in the queue<br>
                                <h6>aln -m; default=2000000</h6>
                                <input type="text" name="analysisMode_m" class="input_setting_text" value="2000000"/>
                                mismatch penalty<br>
                                <h6>aln -M; default=3</h6>
                                <input type="text" name="analysisMode_M" class="input_setting_text" value="3"/>
                                gap open penalty<br>
                                <h6>aln -O; default=11</h6>
                                <input type="text" name="analysisMode_O" class="input_setting_text" value="11"/>
                                gap extension penalty<br>
                                <h6>aln -E; default=4</h6>
                                <input type="text" name="analysisMode_E" class="input_setting_text" value="4"/>
                                stop searching when there are more than this value of equally best hits<br>
                                <h6>aln -R; default=30</h6>
                                <input type="text" name="analysisMode_R" class="input_setting_text" value="30"/>
                                quality threshold for read trimming down to 35bp<br>
                                <h6>aln -q; default=0</h6>
                                <input type="text" name="analysisMode_q" class="input_setting_text" value="0"/>
                                length of barcode<br>
                                <h6>aln -B; optional parameter</h6>
                                <input type="text" name="analysisMode_B" class="input_setting_text"/>
                                log-scaled gap penalty for long deletions<br>
                                <h6>aln -L; optional parameter</h6>
                                <input type="text" name="analysisMode_L" class="input_setting_text"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_bwa').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_bwa').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="2" checked="true" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='block';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='none';">Bowtie<a1>short read aligner geared toward quickly aligning large sets of short DNA sequences (reads) to large genomes.</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_2" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_bowtie" value="1" onclick="document.getElementById('workflow_custom_bowtie').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_bowtie" value="2" checked="true" onclick="document.getElementById('workflow_custom_bowtie').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_bowtie" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                Skip (i.e. do not align) the first s reads or pairs in the input.
                                <h6>-s/--skip s ;default:0</h6>
<<<<<<< HEAD
                                <input type="text" id="bowtie_s" name="bowtie_s" class="input_setting_text" value="0"/><br>
                                Only align the first u reads or read pairs from the input (after the -s/--skip reads or pairs have been skipped). <br>
                                <h6>-u/--qupto ;Default: no limit.</h6>
                                <input type="text" id="bowtie_u" name="bowtie_u" class="input_setting_text" value="100000000"/><br>
                                Trim the bases from high-quality (left) end of each read before alignment <br>
                                <h6>-5/--trim5 ;default: 0</h6>
                                <input type="text" id="bowtie_5" name="bowtie_5" class="input_setting_text" value="0" /><br>
                                Trim the bases from low-quality (right) end of each read before alignment <br>
                                <h6>-3/--trim3 ;default: 0</h6>
                                <input type="text" id="bowtie_3" name="bowtie_3" class="input_setting_text" value="1" /><br>
=======
                                <input type="text" name="bowtie_s" class="input_setting_text" value="0"/><br>
                                Only align the first u reads or read pairs from the input (after the -s/--skip reads or pairs have been skipped). <br>
                                <h6>-u/--qupto ;Default: no limit.</h6>
                                <input type="text" name="bowtie_u" class="input_setting_text" value="100000000"/><br>
                                Trim the bases from high-quality (left) end of each read before alignment <br>
                                <h6>-5/--trim5 ;default: 0</h6>
                                <input type="text" name="bowtie_5" class="input_setting_text" value="0"/><br>
                                Trim the bases from low-quality (right) end of each read before alignment <br>
                                <h6>-3/--trim3 ;default: 0</h6>
                                <input type="text" name="bowtie_3" class="input_setting_text" value="1"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Maq accepts quality values in the Phred quality scale, but internally rounds values to the nearest 10, with a maximum of 30.<br>
                                <h6>By default, bowtie also rounds --nomaqround. --nomaqround prevents this rounding in bowtie.</h6>
                                <input type="radio" value="1" name="bowtie_nomaqround" checked="true">Off
                                <input type="radio" value="2" name="bowtie_nomaqround">On
                                <br>The minimum insert size for valid paired-end alignments. E.g. if -I 60 is specified and a paired-end alignment consists of two 20-bp alignments in the appropriate orientation with a 20-bp gap between them, that alignment is considered valid (as long as -X is also satisfied). A 19-bp gap would not be valid in that case. If trimming options -3 or -5 are also used, the -I constraint is applied with respect to the untrimmed mates.<br>
                                <h6>-I/--minins ;Default: 0.</h6>
<<<<<<< HEAD
                                <input type="text" id="bowtie_I" name="bowtie_I" class="input_setting_text" value="0"/><br>
                                The maximum insert size for valid paired-end alignments. E.g. if -X 100 is specified and a paired-end alignment consists of two 20-bp alignments in the proper orientation with a 60-bp gap between them, that alignment is considered valid (as long as -I is also satisfied). A 61-bp gap would not be valid in that case. If trimming options -3 or -5 are also used, the -X constraint is applied with respect to the untrimmed mates, not the trimmed mates.<br>
                                <h6>-X/--maxins ;Default: 250.</h6>
                                <input type="text" id="bowtie_X" name="bowtie_X" class="input_setting_text" value="250"/><br>
                                Report up to k valid alignments per read or pair <br>
                                <h6>-k ;default: 1 </h6>
                                <input type="text" id="bowtie_k" name="bowtie_k" class="input_setting_text" value="1"/><br>
=======
                                <input type="text" name="bowtie_I" class="input_setting_text" value="0"/><br>
                                The maximum insert size for valid paired-end alignments. E.g. if -X 100 is specified and a paired-end alignment consists of two 20-bp alignments in the proper orientation with a 60-bp gap between them, that alignment is considered valid (as long as -I is also satisfied). A 61-bp gap would not be valid in that case. If trimming options -3 or -5 are also used, the -X constraint is applied with respect to the untrimmed mates, not the trimmed mates.<br>
                                <h6>-X/--maxins ;Default: 250.</h6>
                                <input type="text" name="bowtie_X" class="input_setting_text" value="250"/><br>
                                Report up to k valid alignments per read or pair <br>
                                <h6>-k ;default: 1 </h6>
                                <input type="text" name="bowtie_k" class="input_setting_text" value="1"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Report all valid alignments per read or pair <br>
                                <h6>-a/--all ;default: off.</h6>
                                <input type="radio" name="bowtie_a" value="1" checked="true"/>Off
                                <input type="radio" name="bowtie_a" value="2"/>on<br>
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_bowtie').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_bowtie').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="3" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='block';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='none';">Bowtie2<a1>It is particularly good at aligning reads of about 50 up to 100s or 1,000s of characters to relatively long</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_3" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_bowtie2" value="1" onclick="document.getElementById('workflow_custom_bowtie2').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_bowtie2" value="2" onclick="document.getElementById('workflow_custom_bowtie2').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_bowtie2" style="display:none;">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll; ">
                                Skip the first that many reads or pairs in the input<br>
                                <h6>-s/--skip; default=0</h6>
<<<<<<< HEAD
                                <input type="text" id="setting_skip" name="setting_skip" class="input_setting_text" value="0" /><br>
                                Align the first that many reads or read pairs from the input then stop<br>
                                <h6>-u/--qupto; for default behavior (no limit) leave this value very large</h6>
                                <input type="text" id="setting_u" name="setting_u" class="input_setting_text" value="100000000" /><br>
                                Trim that many bases from 5' (left) end of each read before alignment<br>
                                <h6>-5/--trim5; default=0</h6>
                                <input type="text" id="setting_trim5" name="setting_trim5" class="input_setting_text" value="0" /><br>
                                Trim that many bases from 3' (right) end of each read before alignment<br>
                                <h6>-3/--trim3; default=0</h6>
                                <input type="text" id="setting_trim3" name="setting_trim3" class="input_setting_text" value="0" /><br>
=======
                                <input type="text" name="setting_skip" class="input_setting_text" value="0"/><br>
                                Align the first that many reads or read pairs from the input then stop<br>
                                <h6>-u/--qupto; for default behavior (no limit) leave this value very large</h6>
                                <input type="text" name="setting_u" class="input_setting_text" value="100000000"/><br>
                                Trim that many bases from 5' (left) end of each read before alignment<br>
                                <h6>-5/--trim5; default=0</h6>
                                <input type="text" name="setting_trim5" class="input_setting_text" value="0"/><br>
                                Trim that many bases from 3' (right) end of each read before alignment<br>
                                <h6>-3/--trim3; default=0</h6>
                                <input type="text" name="setting_trim3" class="input_setting_text" value="0"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Set the number of mismatches to be allowed in a seed alignment during multiseed alignment<br>
                                <h6>-N; Can be set to 0 or 1. Setting this higher makes alignment slower (often much slower) but increases sensitivity; default=0</h6>
                                <select name="alignment_N" class="GOMo_select"/>
                                <option value="0" selected="selected">0</option>
                                <option value="1">1</option>
                                </select><br>
                                Sets the length of the seed substrings to align during multiseed alignment<br>
                                <h6>-L; Smaller values make alignment slower but more sensitive. Default=22</h6>
<<<<<<< HEAD
                                <input type="text" id="alignment_L" name="alignment_L" class="input_setting_text" value="22"/><br>
                                Set a function governing the interval between seed substrings to use during multiseed alignment.Also see description of this option below in the help section.<br>
                                <h6>-i;Default=`S,1,1.15`</h6>
                                <input type="text" id="alignment_i" name="alignment_i"class="input_setting_text" value="S,1,1.15" /><br>
                                Set a function governing the maximum number of ambiguous characters (usually `N`s and/or `.`s) allowed in a read as a function of read length.<br>
                                <h6>--n-ceil;Default=`L,0,0.15`</h6>
                                <input type="text" id="alignment_n" name="alignment_n"class="input_setting_text" value="L,0,0.15" /><br>
                                Pad dynamic programming problems by that many columns on either side to allow gaps.<br>
                                <h6>--dpad; default=15</h6>
                                <input type="text" id="alignment_dpad" name="alignment_dpad"class="input_setting_text" value="15"/><br>
                                Disallow gaps within that many positions of the beginning or end of the read<br>
                                <h6>--gbar; default=4</h6>
                                <input type="text" id="alignment_gbar" name="alignment_gbar"class="input_setting_text" value="4" /><br>
                                Set the match bonus<br>
                                <h6>--ma; Default=2</h6>
                                <input type="text" id="score_ma" name="score_ma" class="input_setting_text" value="2" /><br>
                                Set the maximum (`MX`) and minimum (`MN`) mismatch penalties, both integers<br>
                                <h6>--mp;Default=6,2</h6>
                                <input type="text" id="score_mp" name="score_mp" class="input_setting_text" value="6,2" /><br>
                                Sets penalty for positions where the read, reference, or both, contain an ambiguous character such as `N`<br>
                                <h6>--np; Default=1</h6>
                                <input type="text" id="score_np" name="score_np" class="input_setting_text" value="1"/><br>
                                Set the read gap opening penalty<br>
                                <h6>--rdg; this is the first component of --rdg flag - opening penalty; Default=5</h6>
                                <input type="text" id="score_rdg5" name="score_rdg5" class="input_setting_text" value="5"/><br>
                                Set the read gap extension penalty<br>
                                <h6>--rdg; this is the second component of --rdg flag - extension penalty; Default=3</h6>
                                <input type="text" id="score_rdg3" name="score_rdg3" class="input_setting_text" value="3"/><br>
                                Set the reference gap opening penalty<br>
                                <h6> --rfg; this is the first component of --rfg flag - opening penalty; Default=5</h6>
                                <input type="text" id="score_rfg5" name="score_rfg5" class="input_setting_text" value="5" /><br>
                                Set the reference gap extension penalty<br>
                                <h6>--rfg; this is the second component of --rfg flag - extension penalty; Default=3</h6>
                                <input type="text" id="score_rfg3" name="score_rfg3" class="input_setting_text" value="3" /><br>
=======
                                <input type="text" name="alignment_L" class="input_setting_text" value="22"/><br>
                                Set a function governing the interval between seed substrings to use during multiseed alignment.Also see description of this option below in the help section.<br>
                                <h6>-i;Default=`S,1,1.15`</h6>
                                <input type="text" name="alignment_i"class="input_setting_text" value="S,1,1.15"/><br>
                                Set a function governing the maximum number of ambiguous characters (usually `N`s and/or `.`s) allowed in a read as a function of read length.<br>
                                <h6>--n-ceil;Default=`L,0,0.15`</h6>
                                <input type="text" name="alignment_n"class="input_setting_text" value="L,0,0.15"/><br>
                                Pad dynamic programming problems by that many columns on either side to allow gaps.<br>
                                <h6>--dpad; default=15</h6>
                                <input type="text" name="alignment_dpad"class="input_setting_text" value="15"/><br>
                                Disallow gaps within that many positions of the beginning or end of the read<br>
                                <h6>--gbar; default=4</h6>
                                <input type="text" name="alignment_gbar"class="input_setting_text" value="4"/><br>
                                Set the match bonus<br>
                                <h6>--ma; Default=2</h6>
                                <input type="text" name="score_ma" class="input_setting_text" value="2"/><br>
                                Set the maximum (`MX`) and minimum (`MN`) mismatch penalties, both integers<br>
                                <h6>--mp;Default=6,2</h6>
                                <input type="text" name="score_mp" class="input_setting_text" value="6,2"/><br>
                                Sets penalty for positions where the read, reference, or both, contain an ambiguous character such as `N`<br>
                                <h6>--np; Default=1</h6>
                                <input type="text" name="score_np" class="input_setting_text" value="1"/><br>
                                Set the read gap opening penalty<br>
                                <h6>--rdg; this is the first component of --rdg flag - opening penalty; Default=5</h6>
                                <input type="text" name="score_rdg5" class="input_setting_text" value="5"/><br>
                                Set the read gap extension penalty<br>
                                <h6>--rdg; this is the second component of --rdg flag - extension penalty; Default=3</h6>
                                <input type="text" name="score_rdg3" class="input_setting_text" value="3"/><br>
                                Set the reference gap opening penalty<br>
                                <h6> --rfg; this is the first component of --rfg flag - opening penalty; Default=5</h6>
                                <input type="text" name="score_rfg5" class="input_setting_text" value="5"/><br>
                                Set the reference gap extension penalty<br>
                                <h6>--rfg; this is the second component of --rfg flag - extension penalty; Default=3</h6>
                                <input type="text" name="score_rfg3" class="input_setting_text" value="3"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_bowtie2').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_bowtie2').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="4" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='block';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='none';">SOAP<a1>SOAP has been in evolution from a single alignment tool package that provides full solution to next generation sequencing data analysis.</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_4" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_SOAP" value="1" onclick="document.getElementById('workflow_custom_SOAP').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_SOAP" value="2" onclick="document.getElementById('workflow_custom_SOAP').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_SOAP" style="display:none;">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll; ">
                                -M <br>
                                <h6>match mode for each read or the seed part of read, which shouldn't contain more than 2 mismaches, [4]<br>
                                    0: exact match only<br>
                                    1: 1 mismatch match only<br>
                                    2: 2 mismatch match only<br>
                                    4: find the best hits<br>
                                </h6>
<<<<<<< HEAD
                                <input type="text" id="SOAP_MM" name="SOAP_M" class="input_setting_text" value="4" /><br>
                                -l
                                <h6>align the initial n bps as a seed [256] means whole length of read</h6>
                                <input type="text" id="SOAP_l" name="SOAP_l" class="input_setting_text" value="256"/>
                                -n
                                <h6>filter low-quality reads containing >n Ns before alignment, [5]</h6>
                                <input type="text" id="SOAP_n" name="SOAP_n" class="input_setting_text" value="5" /><br>
                                -r[0,1,2]
                                <h6>how to report repeat hits, 0=none; 1=random one; 2=all, [1]</h6>
                                <input type="text" id="SOAP_r" name="SOAP_r" class="input_setting_text" value="1"/>
                                -m
                                <h6>minimal insert size allowed, [400]</h6>
                                <input type="text" id="SOAP_m" name="SOAP_m" class="input_setting_text" value="400" /><br>
                                -x
                                <h6>maximal insert size allowed, [600]</h6>
                                <input type="text" id="SOAP_x" name="SOAP_x" class="input_setting_text" value="600"/><br>
                                -v
                                <h6>maximum number of mismatches allowed on a read. [5] bp</h6>
                                <input type="text" id="SOAP_v" name="SOAP_v" class="input_setting_text" value="5" /><br>
                                -s
                                <h6>minimal alignment length (for soft clip) [255] bp</h6>
                                <input type="text" id="SOAP_s" name="SOAP_s" class="input_setting_text" value="255" />
                                -g
                                <h6>one continuous gap size allowed on a read. [0] bp</h6>
                                <input type="text" id="SOAP_g" name="SOAP_g" class="input_setting_text" value="0"/><br>
                                -e
                                <h6>will not allow gap exist inside n-bp edge of a read, default=5</h6>
                                <input type="text" id="SOAP_e" name="SOAP_e" class="input_setting_text" value="5"/>
                                -p
                                <h6>number of processors to use, [1]</h6>
                                <input type="text" id="SOAP_p" name="SOAP_p" class="input_setting_text" value="1"/>
=======
                                <input type="text" name="SOAP_M" class="input_setting_text" value="4"/><br>
                                -l
                                <h6>align the initial n bps as a seed [256] means whole length of read</h6>
                                <input type="text" name="SOAP_l" class="input_setting_text" value="256"/>
                                -n
                                <h6>filter low-quality reads containing >n Ns before alignment, [5]</h6>
                                <input type="text" name="SOAP_n" class="input_setting_text" value="5"/><br>
                                -r[0,1,2]
                                <h6>how to report repeat hits, 0=none; 1=random one; 2=all, [1]</h6>
                                <input type="text" name="SOAP_r" class="input_setting_text" value="1"/>
                                -m
                                <h6>minimal insert size allowed, [400]</h6>
                                <input type="text" name="SOAP_m" class="input_setting_text" value="400"/><br>
                                -x
                                <h6>maximal insert size allowed, [600]</h6>
                                <input type="text" name="SOAP_x" class="input_setting_text" value="600"/><br>
                                -v
                                <h6>maximum number of mismatches allowed on a read. [5] bp</h6>
                                <input type="text" name="SOAP_v" class="input_setting_text" value="5"/><br>
                                -s
                                <h6>minimal alignment length (for soft clip) [255] bp</h6>
                                <input type="text" name="SOAP_s" class="input_setting_text" value="255"/>
                                -g
                                <h6>one continuous gap size allowed on a read. [0] bp</h6>
                                <input type="text" name="SOAP_g" class="input_setting_text" value="0"/><br>
                                -e
                                <h6>will not allow gap exist inside n-bp edge of a read, default=5</h6>
                                <input type="text" name="SOAP_e" class="input_setting_text" value="5"/>
                                -p
                                <h6>number of processors to use, [1]</h6>
                                <input type="text" name="SOAP_p" class="input_setting_text" value="1"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_SOAP').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_SOAP').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="5" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='block';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='none';">BLAST<a1>The program compares nucleotide or protein sequences to sequences databases and calculates the statistical significance.</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_5" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_BLAST" value="1" onclick="document.getElementById('workflow_custom_BLAST').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_BLAST" value="2" onclick="document.getElementById('workflow_custom_BLAST').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_BLAST" style="display:none;">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll; ">
                                num_descriptions<br>
                                <h6>default:500;Show one-line descriptions for this number of database sequences.</h6>
<<<<<<< HEAD
                                <input type="text" id="blast_num_descriptions" name="blast_num_descriptions" class="input_setting_text" value="500"/>
                                num_alignments	<br>
                                <h6>default:250;Show alignments for this number of database sequences.</h6>
                                <input type="text" id="blast_num_align" name="blast_num_align" class="input_setting_text" value="250"/>
                                max_target_seqs<br>
                                <h6>default:500	Number of aligned sequences to keep.
                                    Use with report formats that do not have separate definition line and alignment sections such as tabular (all outfmt > 4). Not compatible with num_descriptions or num_alignments.</h6>
                                <hao input type="text" id="blast_max_target_seqs"  name="blast_max_target_seqs" class="input_setting_text" value="500" />
=======
                                <input type="text" name="blast_num_descriptions" class="input_setting_text" value="500"/>
                                num_alignments	<br>
                                <h6>default:250;Show alignments for this number of database sequences.</h6>
                                <input type="text" name="blast_num_align" class="input_setting_text" value="250"/>
                                max_target_seqs<br>
                                <h6>default:500	Number of aligned sequences to keep.
                                    Use with report formats that do not have separate definition line and alignment sections such as tabular (all outfmt > 4). Not compatible with num_descriptions or num_alignments.</h6>
                                <hao input type="text" name="blast_max_target_seqs" class="input_setting_text" value="500"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_BLAST').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_BLAST').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="6" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='block';document.getElementById('workflowCustom_option_7').style.display='none';">Subread<a1>The package comprises a suite of software programs for processing next-gen sequencing read data.</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_6" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_Subread" value="1" onclick="document.getElementById('workflow_custom_Subread').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_Subread" value="2" onclick="document.getElementById('workflow_custom_Subread').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_Subread" style="display:none;">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll; ">
                                -B < int >( nBestLocations )<br>
                                <h6>Specify the maximal number of equally-best mapping locations al-
                                    lowed to be reported for each read. 1 by default.
                                </h6>
<<<<<<< HEAD
                                <input type="text" id="Subread_B2" name="Subread_B2" class="input_setting_text" value="1">
                                -d < int >( minFragLength )<br>
                                <h6>Specify the minimum fragment/template length, 50 by default.</h6>
                                <input type="text" id="Subread_d" name="Subread_d" class="input_setting_text" value="50"/>
                                -D < int >( maxFragLength )<br>
                                <h6>Specify the maximum fragment/template length, 600 by default.</h6>
                                <input type="text" id="Subread_DD" name="Subread_D" class="input_setting_text" value="600"/>
                                -I < int >( indels )<br>
                                <h6>Specify the number of INDEL bases allowed in the mapping. 5 by
                                    default. Indels of up to 200bp long can be detected.</h6>
                                <input type="text" id="Subread_I" name="Subread_I" class="input_setting_text" value="5"/>
                                -m < int >( TH1 )<br>
                                <h6>Specify the consensus threshold, which is the minimal number of
                                    consensus subreads required for reporting a hit.3 by default.</h6>
                                <input type="text" id="Subread_m" name="Subread_m" class="input_setting_text" value="3"/>
=======
                                <input type="text" name="Subread_B2" class="input_setting_text" value="1">
                                -d < int >( minFragLength )<br>
                                <h6>Specify the minimum fragment/template length, 50 by default.</h6>
                                <input type="text" name="Subread_d" class="input_setting_text" value="50"/>
                                -D < int >( maxFragLength )<br>
                                <h6>Specify the maximum fragment/template length, 600 by default.</h6>
                                <input type="text" name="Subread_D" class="input_setting_text" value="600"/>
                                -I < int >( indels )<br>
                                <h6>Specify the number of INDEL bases allowed in the mapping. 5 by
                                    default. Indels of up to 200bp long can be detected.</h6>
                                <input type="text" name="Subread_I" class="input_setting_text" value="5"/>
                                -m < int >( TH1 )<br>
                                <h6>Specify the consensus threshold, which is the minimal number of
                                    consensus subreads required for reporting a hit.3 by default.</h6>
                                <input type="text" name="Subread_m" class="input_setting_text" value="3"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -M < int >( maxMismatches )<br>
                                <h6>Specify the maximum number of mis-matched bases allowed in the
                                    alignment. 3 by default. Mis-matches found in soft-clipped bases
                                    are not counted.</h6>
<<<<<<< HEAD
                                <input type="text" id="Subread_M2" name="Subread_M2" class="input_setting_text" value="3"/>
                                -n < int >( nsubreads )<br>
                                <h6>Specify the number of subreads extracted from each read, 10 by
                                    default.</h6>
                                <input type="text" id="Subread_n" name="Subread_n" class="input_setting_text" value="10"/>
                                -p < int >( TH2 )<br>
                                <h6>Specify the minimum number of consensus subreads both reads
                                    from the same pair must have.1 by default.</h6>
                                <input type="text" id="Subread_p" name="Subread_p" class="input_setting_text" value="1"/>
                                -P < 3 : 6 >( phredOffset )<br>
                                <h6>Specify the format of Phred scores used in the input data, ’3’ for
                                    phred+33 and ’6’ for phred+64. ’3’ by default.</h6>
                                <input type="text" id="Subread_PP" name="Subread_P" class="input_setting_text" value="3"/>
=======
                                <input type="text" name="Subread_M2" class="input_setting_text" value="3"/>
                                -n < int >( nsubreads )<br>
                                <h6>Specify the number of subreads extracted from each read, 10 by
                                    default.</h6>
                                <input type="text" name="Subread_n" class="input_setting_text" value="10"/>
                                -p < int >( TH2 )<br>
                                <h6>Specify the minimum number of consensus subreads both reads
                                    from the same pair must have.1 by default.</h6>
                                <input type="text" name="Subread_p" class="input_setting_text" value="1"/>
                                -P < 3 : 6 >( phredOffset )<br>
                                <h6>Specify the format of Phred scores used in the input data, ’3’ for
                                    phred+33 and ’6’ for phred+64. ’3’ by default.</h6>
                                <input type="text" name="Subread_P" class="input_setting_text" value="3"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -S < f f : f r : rf >( PE orientation )<br>
                                <h6>Specify the orientation of the two reads from the same pair. It has
                                    three possible values including ‘fr’, ‘ff’ and ‘’rf. Letter ‘f’ denotes
                                    the forward strand and letter ‘r’ the reverse strand. ‘fr’ by default</h6>
<<<<<<< HEAD
                                <input type="text" id="Subread_S" name="Subread_S" class="input_setting_text" value="fr"/>
                                -T < int >( nthreads )<br>
                                <h6>Specify the number of threads/CPUs used for mapping. The value
                                    should be between 1 and 32. 1 by default.</h6>
                                <input type="text" id="Subread_T" name="Subread_T" class="input_setting_text" value="1"/>
                                −−trim5 < int >( nTrim5 )<br>
                                <h6>Trim off < int > number of bases from 5’ end of each read. 0 by
                                    default.</h6>
                                <input type="text" id="Subread_trim5" name="Subread_trim5" class="input_setting_text" value="0"/>
                                −−trim3 < int >( nTrim3 )<br>
                                <h6>Trim off < int > number of bases from 3’ end of each read. 0 by
                                    default.</h6>
                                <input type="text" id="Subread_trim3" name="Subread_trim3" class="input_setting_text" value="0"/>
=======
                                <input type="text" name="Subread_S" class="input_setting_text" value="fr"/>
                                -T < int >( nthreads )<br>
                                <h6>Specify the number of threads/CPUs used for mapping. The value
                                    should be between 1 and 32. 1 by default.</h6>
                                <input type="text" name="Subread_T" class="input_setting_text" value="1"/>
                                −−trim5 < int >( nTrim5 )<br>
                                <h6>Trim off < int > number of bases from 5’ end of each read. 0 by
                                    default.</h6>
                                <input type="text" name="Subread_trim5" class="input_setting_text" value="0"/>
                                −−trim3 < int >( nTrim3 )<br>
                                <h6>Trim off < int > number of bases from 3’ end of each read. 0 by
                                    default.</h6>
                                <input type="text" name="Subread_trim3" class="input_setting_text" value="0"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_Subread').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_Subread').style.display='none'"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_mapping" value="7" onclick="document.getElementById('workflowCustom_option_1').style.display='none';document.getElementById('workflowCustom_option_2').style.display='none';document.getElementById('workflowCustom_option_3').style.display='none';document.getElementById('workflowCustom_option_4').style.display='none';document.getElementById('workflowCustom_option_5').style.display='none';document.getElementById('workflowCustom_option_6').style.display='none';document.getElementById('workflowCustom_option_7').style.display='block';">NGM<a1>It is a flexible highly sensitive short read mapping tool that handles much higher mismatch rates than comparable algorithms.</a1><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_7" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_NGM" value="1" onclick="document.getElementById('workflow_custom_NGM').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_NGM" value="2" onclick="document.getElementById('workflow_custom_NGM').style.display='block'">setting by yourself
                        </div>
                        <div class="inputOption_setting" id="workflow_custom_NGM" style="display:none;">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll; ">
                                --force-rlength-check <br>
                                <h6>Forces NextgenMap to run through all reads to
                                    find the max. read length. (default: off)</h6>
                                <input type="radio" name="NGM_frc" value="1">on
                                <input type="radio" name="NGM_frc" value="2" checked="true">off
                                -n/--topn <br>
                                <h6>Prints the n best alignments sorted by
                                    alignment score (default: 1)</h6>
<<<<<<< HEAD
                                <input type="text" id="NGM_n" name="NGM_n" class="input_setting_text" value="1" />
=======
                                <input type="text" name="NGM_n" class="input_setting_text" value="1"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --keep-tags <br>
                                <h6>Copy BAM/SAM tags present in input file to
                                    output file (default: off)</h6>
                                <input type="radio" name="NGM_kt" value="1">on
                                <input type="radio" name="NGM_kt" value="2" checked="true">off
                                -t/--threads <br>
                                <h6>Number of candidate search threads</h6>
<<<<<<< HEAD
                                <input type="text" id="NGM_t" name="NGM_t" class="input_setting_text" value="1" />
=======
                                <input type="text" name="NGM_t" class="input_setting_text" value="1"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Scale estimated sensitivity:<br>
                                <h6>--very fast;Much faster, much less accurate<br>
                                    --fast;Scale estimated sensitivity: Faster, less accurate<br>
                                    --sensitive;Scale estimated sensitivity: More accurate, slower<br>
                                    --very-sensitive;Scale estimated sensitivity: Much more accurate, much slower</h6>
                                <input type="radio" name="NGM_sen" value="1">very fast
                                <input type="radio" name="NGM_sen" value="2" checked="true">fast
                                <input type="radio" name="NGM_sen" value="3">sensitive
                                <input type="radio" name="NGM_sen" value="4">very-sensitive
                                -i/--min-identity <0-1> <br>
                                <h6>All reads mapped with an identity lower than
                                    this threshold will be reported as unmapped
                                    (default: 0.65)</h6>
<<<<<<< HEAD
                                <input type="text" id="NGM_i" name="NGM_i" class="input_setting_text" value="0.65" />
=======
                                <input type="text" name="NGM_i" class="input_setting_text" value="0.65"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -R/--min-residues <br>
                                <h6>All reads mapped with lower than
                                    * read length residues
                                    will be reported as unmapped. (default: 0.5)</h6>
<<<<<<< HEAD
                                <input type="text" id="NGM_R" name="NGM_R" class="input_setting_text" value="0.5" />
                                -Q/--min-mq <br>
                                <h6>All reads mapped with lower than n mapping quality will be reported as unmapped.
                                    (default: 0)</h6>
                                <input type="text" id="NGM_Q" name="NGM_Q" class="input_setting_text" value="0" />
                                --bs-cutoff <br>
                                <h6>Max. number of Ts in a k-mer. All k-mers were
                                    the number of Ts is higher than b are ignored (default: 8)</h6>
                                <input type="text" id="NGM_bc" name="NGM_bc" class="input_setting_text" value="8"/>
                                -k/--kmer [10-14] <br>
                                <h6>Kmer length in bases. (default: 13)</h6>
                                <input type="text" id="NGM_k" name="NGM_k" class="input_setting_text" value="13" />
                                --kmer-skip <br>
                                <h6>Number of k-mers to skip when building the
                                    lookup table from the reference(default: 2)</h6>
                                <input type="text" id="NGM_ks" name="NGM_ks" class="input_setting_text" value="2" />
                                --kmer-min <br>
                                <h6>Minimal number of k-mer hits required to
                                    consider a region a CMR. (default: 0)</h6>
                                <input type="text" id="NGM_km" name="NGM_km" class="input_setting_text" value="0"/>
=======
                                <input type="text" name="NGM_R" class="input_setting_text" value="0.5"/>
                                -Q/--min-mq <br>
                                <h6>All reads mapped with lower than n mapping quality will be reported as unmapped.
                                    (default: 0)</h6>
                                <input type="text" name="NGM_Q" class="input_setting_text" value="0"/>
                                --bs-cutoff <br>
                                <h6>Max. number of Ts in a k-mer. All k-mers were
                                    the number of Ts is higher than b are ignored (default: 8)</h6>
                                <input type="text" name="NGM_bc" class="input_setting_text" value="8"/>
                                -k/--kmer [10-14] <br>
                                <h6>Kmer length in bases. (default: 13)</h6>
                                <input type="text" name="NGM_k" class="input_setting_text" value="13"/>
                                --kmer-skip <br>
                                <h6>Number of k-mers to skip when building the
                                    lookup table from the reference(default: 2)</h6>
                                <input type="text" name="NGM_ks" class="input_setting_text" value="2"/>
                                --kmer-min <br>
                                <h6>Minimal number of k-mer hits required to
                                    consider a region a CMR. (default: 0)</h6>
                                <input type="text" name="NGM_km" class="input_setting_text" value="0"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -l/--local <br>
                                <h6>Perform local alignment. Ends might get clipped.
                                    (default: on)</h6>
                                <input type="radio" value="1" name="NGM_l" checked="true">on
                                <input type="radio" value="2" name="NGM_l" >off
                                -e/--end-to-end   <br>
                                <h6>Perform end-to-end alignment. No clipping.
                                    (default: off)</h6>
                                <input type="radio" value="1" name="NGM_e" >on
                                <input type="radio" value="2" name="NGM_e" checked="true">off
                                --affine     <br>
                                <h6>Use alignment algorithms that support affine gap
                                    costs. This will give you better alignments for
                                    longer indels but will also increase the runtime.
                                    (default: off)</h6>
                                <input type="radio" value="1" name="NGM_a" >on
                                <input type="radio" value="2" name="NGM_a" checked="true">off
                                --skip-mate-check     <br>
                                <h6>Don't check that both mates have the same name
                                    (default: off)</h6>
                                <input type="radio" value="1" name="NGM_smc" >on
                                <input type="radio" value="2" name="NGM_smc" checked="true">off<br>
                                <input type="button" value="submit" class="btn_submit" onclick="document.getElementById('workflow_custom_NGM').style.display='none'"/>
                                <input type="button" value="cancel" class="btn_cancel" onclick="document.getElementById('workflow_custom_NGM').style.display='none'"/>
                            </div>
                        </div>
                    </div>

                    <div class="blacktop_1">
                        Peak calling
                        <div class="tip_out"><img class="tip" id="tip5" src="./img/tip.png" onclick="JavaScript:Tip_click(5)"></div>
                    </div>
                    <div class="blackdown_2_workflowCustom" style="overflow-y:scroll;">
                        <input type="radio" name="workflowCustom_peak" value="1"  checked="true" onclick="document.getElementById('workflowCustom_option_macs').style.display='block';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">MACS<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>MACS captures the influence of genome complexity to evaluate the significance of enriched ChIP region.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_macs" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_macs" value="1" onclick="document.getElementById('workflow_custom_macs').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_macs" value="2" checked="true" onclick="document.getElementById('workflow_custom_macs').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_macs" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll;">
                                Tag size<br>
                                <h6>This will overide the auto detected tag size.default:25</h6>
<<<<<<< HEAD
                                <input type="text" id="macs_s" name="macs_s" value="25" class="input_setting_text" /><br>
                                Band width<br>
                                <h6>This value is only used while building the shifting model. DEFAULT: 300</h6>
                                <input type="text"  id="macs_bw" name="macs_bw" value="400" class="input_setting_text" /><br>
                                Pvalue cutoff for peak detection<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text"  id="macs_p" name="macs_p" value="1e-5" class="input_setting_text"/><br>
                                Effective genome size:this is the size of the genome considered "usable" for peak calling.
                                <h6>default:2700000000.0</h6>
                                <input type="text" id="macs_gs"  name="macs_gs" value="4639675" class="input_setting_text" /><br>
=======
                                <input type="text" name="macs_s" value="25" class="input_setting_text"/><br>
                                Band width<br>
                                <h6>This value is only used while building the shifting model. DEFAULT: 300</h6>
                                <input type="text" name="macs_bw" value="400" class="input_setting_text"/><br>
                                Pvalue cutoff for peak detection<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text" name="macs_p" value="1e-5" class="input_setting_text"/><br>
                                Effective genome size:this is the size of the genome considered "usable" for peak calling.
                                <h6>default:2700000000.0</h6>
                                <input type="text" name="macs_gs" value="4639675" class="input_setting_text"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_macs').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_macs').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="2" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='block';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">MACS2<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>It is the upgraded version of MACS.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_macs2" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_macs2" value="1" onclick="document.getElementById('workflow_custom_macs2').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_macs2" value="2" onclick="document.getElementById('workflow_custom_macs2').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_macs2" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center"  style="overflow-y:scroll;">
                                Effective genome size<br>
                                <h6>default: hs</h6>
<<<<<<< HEAD
                                <input type="text" id="macs2_g"  name="macs2_g" value="hs" class="input_setting_text" />
                                Tag size<br>
                                <h6>This will overide the auto detected tag size.default:25</h6>
                                <input type="text" id="macs2_s" name="macs2_s" value="25" class="input_setting_text" />
                                Band width<br>
                                <h6>This value is only used while building the shifting model. DEFAULT: 300</h6>
                                <input type="text" id="macs2_bw" name="macs2_bw" value="300" class="input_setting_text" />
                                The qvalue (minimum FDR) cutoff to call significant regions.<br>
                                <h6>Default is 0.01. For broad marks, you can try 0.05 as cutoff. Q-values are calculated from p-values using Benjamini-Hochberg procedure.</h6>
                                <input type="text" id="macs2_q" name="macs2_q" value="0.01" class="input_setting_text" />
                                This parameter is used to select the regions within MFOLD range of high-confidence enrichment ratio against background to build model.<br>
                                <h6>-m/–mfold,default:5,50</h6>
                                <input type="text" id="macs2_m" name="macs2_m" value="5 50" class="input_setting_text" />
=======
                                <input type="text" name="macs2_g" value="hs" class="input_setting_text"/>
                                Tag size<br>
                                <h6>This will overide the auto detected tag size.default:25</h6>
                                <input type="text" name="macs2_s" value="25" class="input_setting_text"/>
                                Band width<br>
                                <h6>This value is only used while building the shifting model. DEFAULT: 300</h6>
                                <input type="text" name="macs2_bw" value="300" class="input_setting_text"/>
                                The qvalue (minimum FDR) cutoff to call significant regions.<br>
                                <h6>Default is 0.01. For broad marks, you can try 0.05 as cutoff. Q-values are calculated from p-values using Benjamini-Hochberg procedure.</h6>
                                <input type="text" name="macs2_q" value="0.01" class="input_setting_text"/>
                                This parameter is used to select the regions within MFOLD range of high-confidence enrichment ratio against background to build model.<br>
                                <h6>-m/–mfold,default:5,50</h6>
                                <input type="text" name="macs2_m" value="5 50" class="input_setting_text"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_macs2').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_macs2').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="3" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='block';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">PeakSeq<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>It is a program for identifying and ranking peak regions in ChIP-Seq experiments.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_peakseq" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_peakseq" value="1" onclick="document.getElementById('workflow_custom_peakseq').style.display='none'">default
                            <input type="radio" name="workflowCustom_option_peakseq" value="2" onclick="document.getElementById('workflow_custom_peakseq').style.display='block'">setting by yourself
                        </div>
                        <div id="workflow_custom_peakseq" class="inputOption_setting" style="display:none">
                            <div  class="inputOption_setting_center" style="overflow-y:scroll;" >
                                Enrichment fragment length For tag extension, this is the value of average fragment length.<br>
                                <h6>Enrichment_fragment_length ;default:200</h6>
<<<<<<< HEAD
                                <input type="text" id="peakseq_length" name="peakseq_length" value="200" class="input_setting_text"/>
                                Target FDR in the simulations.<br>
                                <h6>target_FDR ;default:0.05</h6>
                                <input type="text" id="peakseq_fdr" name="peakseq_fdr" value="0.05" class="input_setting_text"/>
                                Number of simulations performed while estimating the putative peaks.<br>
                                <h6>N_Simulations ;default:10</h6>
                                <input type="text" id="peakseq_N" name="peakseq_N" value="10" class="input_setting_text" />
                                Minimum distance between consecutive peaks<br>
                                <h6>Minimum_interpeak_distance ;default:200</h6>
                                <input type="text" id="peakseq_Min" name="peakseq_Min" value="200" class="input_setting_text"/>
                                Q-value threshold applied on the final set of peaks.<br>
                                <h6>max_Qvalue ;default:0.05</h6>
                                <input type="text" id="peakseq_qvalue" name="peakseq_qvalue" value="0.05" class="input_setting_text" />
=======
                                <input type="text" name="peakseq_length" value="200" class="input_setting_text"/>
                                Target FDR in the simulations.<br>
                                <h6>target_FDR ;default:0.05</h6>
                                <input type="text" name="peakseq_fdr" value="0.05" class="input_setting_text"/>
                                Number of simulations performed while estimating the putative peaks.<br>
                                <h6>N_Simulations ;default:10</h6>
                                <input type="text" name="peakseq_N" value="10" class="input_setting_text"/>
                                Minimum distance between consecutive peaks<br>
                                <h6>Minimum_interpeak_distance ;default:200</h6>
                                <input type="text" name="peakseq_Min" value="200" class="input_setting_text"/>
                                Q-value threshold applied on the final set of peaks.<br>
                                <h6>max_Qvalue ;default:0.05</h6>
                                <input type="text" name="peakseq_qvalue" value="0.05" class="input_setting_text"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                There are currently two models for simulating the background for threshold selection<br>
                                <input type="radio" name="peakseq_mode" value="1"/>Poisson
                                <input type="radio" name="peakseq_mode" value="2"/>Simulated<br>
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_peakseq').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_peakseq').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="4" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='block';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">PeakRanger<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>uses a staged algorithm to discover enriched regions and the summits within them.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_peakranger" style="display:none">
                            Select the tool to call peaks<br>
                            <input type="radio" name="workflowCustom_option_peakranger" value="1" onclick="document.getElementById('peakranger_ranger').style.display='block';document.getElementById('peakranger_ccat').style.display='none';document.getElementById('peakranger_bcp').style.display='none';">ranger
                            <input type="radio" name="workflowCustom_option_peakranger" value="2" onclick="document.getElementById('peakranger_ranger').style.display='none';document.getElementById('peakranger_ccat').style.display='block';document.getElementById('peakranger_bcp').style.display='none';">ccat
                            <input type="radio" name="workflowCustom_option_peakranger" value="3" onclick="document.getElementById('peakranger_ranger').style.display='none';document.getElementById('peakranger_ccat').style.display='none';document.getElementById('peakranger_bcp').style.display='block';">bcp
                        </div>
                        <div id="peakranger_ranger" class="inputOption_setting" style="display:none">
                            <div  class="inputOption_setting_center" style="overflow-y:scroll;" >
                                Whether generate html reports?<br>
                                <h6>`--report`</h6>
                                <input type="radio" name="peakranger_mode" value="1"/>Yes
                                <input type="radio" name="peakranger_mode" value="2"/>No<br>
                                the length of the snapshort regions in the HTML report.<br>
                                <h6>`--plot_region`;It also controls the search span for nearby genes.</h6>
<<<<<<< HEAD
                                <input type="text" id="peakranger_length" name="peakranger_length" value="0" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text"  id="peakranger_annofile" name="peakranger_annofile" value="0" class="input_setting_text" />
                                p value cut off<br>
                                <h6>`-p,--pval` </h6>
                                <input type="text"  id="peakranger_pvalue" name="peakranger_pvalue" value="0" class="input_setting_text"/>
                                FDR cut off<br>
                                <h6>`-q,--FDR`   </h6>
                                <input type="text"  id="peakranger_fdr" name="peakranger_fdr" value="0" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" id="peakranger_relength" name="peakranger_relength" value="0" class="input_setting_text" />
                                sensitivity of the summit detector<br>
                                <h6>`-r,--delta`</h6>
                                <input type="text"  id="peakranger_delta" name="peakranger_delta" value="0" class="input_setting_text" />
                                smoothing bandwidth.<br>
                                <h6>`-b,--bandwidth` </h6>
                                <input type="text"  id="peakranger_bandwidth" name="peakranger_bandwidth" value="0" class="input_setting_text"/>
                                pad read coverage to avoid false positive summits<br>
                                <h6>`--pad` </h6>
                                <input type="text" id="peakranger_pad" name="peakranger_pad" value="0" class="input_setting_text" />
                                number of threads.<br>
                                <h6>`-t`  ;default: 1</h6>
                                <input type="text" id="peakranger_t" name="peakranger_t" value="1" class="input_setting_text" />
=======
                                <input type="text" name="peakranger_length" value="" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text" name="peakranger_annofile" value="" class="input_setting_text"/>
                                p value cut off<br>
                                <h6>`-p,--pval` </h6>
                                <input type="text" name="peakranger_pvalue" value="" class="input_setting_text"/>
                                FDR cut off<br>
                                <h6>`-q,--FDR`   </h6>
                                <input type="text" name="peakranger_fdr" value="" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" name="peakranger_relength" value="" class="input_setting_text"/>
                                sensitivity of the summit detector<br>
                                <h6>`-r,--delta`</h6>
                                <input type="text" name="peakranger_delta" value="" class="input_setting_text"/>
                                smoothing bandwidth.<br>
                                <h6>`-b,--bandwidth` </h6>
                                <input type="text" name="peakranger_bandwidth" value="" class="input_setting_text"/>
                                pad read coverage to avoid false positive summits<br>
                                <h6>`--pad` </h6>
                                <input type="text" name="peakranger_pad" value="" class="input_setting_text"/>
                                number of threads.<br>
                                <h6>`-t`  ;default: 1</h6>
                                <input type="text" name="peakranger_t" value="" class="input_setting_text"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('peakranger_ranger').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('peakranger_ranger').style.display='none';"/>
                            </div>
                        </div>
                        <div id="peakranger_ccat" class="inputOption_setting" style="display:none">
                            <div  class="inputOption_setting_center" style="overflow-y:scroll;" >
                                Whether generate html reports?<br>
                                <h6>`--report`</h6>
                                <input type="radio" name="peakranger_mode" value="1"/>Yes
                                <input type="radio" name="peakranger_mode" value="2"/>No<br>
                                the length of the snapshort regions in the HTML report.<br>
                                <h6>`--plot_region`;It also controls the search span for nearby genes.</h6>
<<<<<<< HEAD
                                <input type="text" id="peakranger_length1" name="peakranger_length" value="0" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text" id="peakranger_annofile1" name="peakranger_annofile" value="0" class="input_setting_text"/>
                                FDR cut off<br>
                                <h6>`-q,--FDR`</h6>
                                <input type="text" id="peakranger_fdr1" name="peakranger_fdr" value="0" class="input_setting_text"/>
                                sliding window size<br>
                                <h6>`--win_size`</h6>
                                <input type="text" id="peakranger_winsize" name="peakranger_winsize" value="0" class="input_setting_text" />
                                window moving step<br>
                                <h6>`--win_step`</h6>
                                <input type="text" id="peakranger_winstep" name="peakranger_winstep" value="0" class="input_setting_text"/>
                                minimum window reads count<br>
                                <h6>`--min_count`</h6>
                                <input type="text" id="peakranger_imcount" name="peakranger_imcount" value="0" class="input_setting_text" />
                                minimum window reads fold change<br>
                                <h6>`--min_score`</h6>
                                <input type="text" id="peakranger_minscore" name="peakranger_minscore" value="0" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" id="peakranger_relength1" name="peakranger_relength" value="0" class="input_setting_text"/>
                                p value cut off<br>
                                <h6>`-p,--pval` </h6>
                                <input type="text" id="peakranger_pvalue1" name="peakranger_pvalue" value="0" class="input_setting_text" />
=======
                                <input type="text" name="peakranger_length" value="" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text" name="peakranger_annofile" value="" class="input_setting_text"/>
                                FDR cut off<br>
                                <h6>`-q,--FDR`</h6>
                                <input type="text" name="peakranger_fdr" value="" class="input_setting_text"/>
                                sliding window size<br>
                                <h6>`--win_size`</h6>
                                <input type="text" name="peakranger_winsize" value="" class="input_setting_text"/>
                                window moving step<br>
                                <h6>`--win_step`</h6>
                                <input type="text" name="peakranger_winstep" value="" class="input_setting_text"/>
                                minimum window reads count<br>
                                <h6>`--min_count`</h6>
                                <input type="text" name="peakranger_imcount" value="" class="input_setting_text"/>
                                minimum window reads fold change<br>
                                <h6>`--min_score`</h6>
                                <input type="text" name="peakranger_minscore" value="" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" name="peakranger_relength" value="" class="input_setting_text"/>
                                p value cut off<br>
                                <h6>`-p,--pval` </h6>
                                <input type="text" name="peakranger_pvalue" value="" class="input_setting_text"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('peakranger_ccat').style.display='none';JavaScript:peakranger_radio(peakseq_length.value,peakseq_fdr.value,peakseq_N.value,peakseq_Min.value,peakseq_mode.value,peakseq_qvalue.value);"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('peakranger_ccat').style.display='none';"/>
                            </div>
                        </div>
                        <div id="peakranger_bcp" class="inputOption_setting" style="display:none">
                            <div  class="inputOption_setting_center" style="overflow-y:scroll;" >
                                Whether generate html reports?<br>
                                <h6>`--report`</h6>
                                <input type="radio" name="peakranger_mode" value="1"/>Yes
                                <input type="radio" name="peakranger_mode" value="2"/>No<br>
                                the length of the snapshort regions in the HTML report.<br>
                                <h6>`--plot_region`;It also controls the search span for nearby genes.</h6>
<<<<<<< HEAD
                                <input type="text" id="peakranger_length2" name="peakranger_length" value="0" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text" id="peakranger_annofile2" name="peakranger_annofile" value="0" class="input_setting_text"/>
                                sliding window size<br>
                                <h6>`--win_size`</h6>
                                <input type="text" id="peakranger_winsize2" name="peakranger_winsize" value="0" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" id="peakranger_relength2" name="peakranger_relength" value="0" class="input_setting_text"/><br>
=======
                                <input type="text" name="peakranger_length" value="" class="input_setting_text"/>
                                the gene annotation file<br>
                                <h6>`--gene_annot_file`</h6>
                                <input type="text" name="peakranger_annofile" value="" class="input_setting_text"/>
                                sliding window size<br>
                                <h6>`--win_size`</h6>
                                <input type="text" name="peakranger_winsize" value="" class="input_setting_text"/>
                                read extension length<br>
                                <h6>`-l,--ext_length` </h6>
                                <input type="text" name="peakranger_relength" value="" class="input_setting_text"/><br>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('peakranger_bcp').style.display='none';JavaScript:peakranger_radio(peakseq_length.value,peakseq_fdr.value,peakseq_N.value,peakseq_Min.value,peakseq_mode.value,peakseq_qvalue.value);"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('peakranger_bcp').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="5" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='block';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">SICER<img class="tip" src="./img/tip_B.png"><a>Delineation of the significantly ChIP-enriched regions,and identification of reads on the ChIP-enriched regions.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_sicer" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_sicer" value="1" onclick="document.getElementById('workflow_custom_sicer').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_sicer" value="2" onclick="document.getElementById('workflow_custom_sicer').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_sicer" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
<<<<<<< HEAD
                                Species: allowed species and genome versions are listed in GenomeData.py.<br> <h6>
                                can add your own species and/or genome versions and relevant data there.</h6>
                                <input type="text" id="sicer_sp" value="hg18" class="input_setting_text" name="sicer_sp">
                                Redundancy Threshold<br>
                                <h6>The number of copies of identical reads allowed in a library</h6>
                                <input type="text" id="sicer_RT" value="1" class="input_setting_text" name="sicer_RT">
                                Window size<br>
                                <h6>Resolution of SICER algorithm. For histone modifications, one can use 200 bp.Default:200</h6>
                                <input type="text" id="sicer_ws" value="200" class="input_setting_text" name="sicer_ws" >
                                Fragment size<br>
                                <h6>for determination of the amount of shift from the beginning of a read to the center of the DNA fragment represented by the read. FRAGMENT_SIZE=150 means the shift is 75.</h6>
                                <input type="text" id="sicer_fs" value="150" class="input_setting_text" name="sicer_fs" >
                                Effective genome fraction<br>
                                <h6>Effective Genome as fraction of the genome size. It depends on read length.</h6>
                                <input type="text" id="sicer_egf" value="0.74" class="input_setting_text" name="sicer_egf" >
                                Gap size<br>
                                <h6>Needs to be multiples of window size. Namely if the window size is 200, the gap size should be 0, 200, 400, 600, ...</h6>
                                <input type="text" id="sicer_gs" value="600" class="input_setting_text" name="sicer_gs" >
                                Statistic threshold value<br>
                                <h6>FDR (with control) or E-value (without control)</h6>
                                <input type="text" id="sicer_fdr" value="0.01" class="input_setting_text" name="sicer_fdr">
=======
                                Species: allowed species and genome versions are listed in GenomeData.py.<br> <h6>You
                                can add your own species and/or genome versions and relevant data there.</h6>
                                <input type="text" value="hg18" class="input_setting_text" name="sicer_sp">
                                Redundancy Threshold<br>
                                <h6>The number of copies of identical reads allowed in a library</h6>
                                <input type="text" value="1" class="input_setting_text" name="sicer_RT">
                                Window size<br>
                                <h6>Resolution of SICER algorithm. For histone modifications, one can use 200 bp.Default:200</h6>
                                <input type="text" value="200" class="input_setting_text" name="sicer_ws">
                                Fragment size<br>
                                <h6>for determination of the amount of shift from the beginning of a read to the center of the DNA fragment represented by the read. FRAGMENT_SIZE=150 means the shift is 75.</h6>
                                <input type="text" value="150" class="input_setting_text" name="sicer_fs">
                                Effective genome fraction<br>
                                <h6>Effective Genome as fraction of the genome size. It depends on read length.</h6>
                                <input type="text" value="0.74" class="input_setting_text" name="sicer_egf">
                                Gap size<br>
                                <h6>Needs to be multiples of window size. Namely if the window size is 200, the gap size should be 0, 200, 400, 600, ...</h6>
                                <input type="text" value="600" class="input_setting_text"name="sicer_gs">
                                Statistic threshold value<br>
                                <h6>FDR (with control) or E-value (without control)</h6>
                                <input type="text" value="0.01" class="input_setting_text" name="sicer_fdr">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_sicer').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_sicer').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="6" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='block';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">PePr<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>It uses a negative binomial distribution to model the read counts among the samples in the same group.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_pepr" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_pepr" value="1" onclick="document.getElementById('workflow_custom_pepr').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_pepr" value="2" onclick="document.getElementById('workflow_custom_pepr').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_pepr" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                --peaktype.sharp or broad. <br>
                                <h6>Default is broad.</h6>
<<<<<<< HEAD
                                <input type="text" id="pepr_peaktype" value="broad" class="input_setting_text" name="pepr_peaktype">
                                --threshold<br>
                                <h6>p-value cutoff. Default:1e-5.</h6>
                                <input type="text" id="pepr_p" value="1e-5" class="input_setting_text" name="pepr_p" >
                                --keep-max-dup<br>
                                <h6>maximum number of duplicated reads at each single position to keep. If not specified, will not remove any duplicate.</h6>
                                <input type="text" id="pepr_keep" value="2" class="input_setting_text" name="pepr_keep">
                                --num-processors<br>
                                <h6>Number of CPUs to run in parallel.</h6>
                                <input type="text" id="pepr_num" value="1" class="input_setting_text" name="pepr_num" >
=======
                                <input type="text" value="broad" class="input_setting_text" name="pepr_peaktype">
                                --threshold<br>
                                <h6>p-value cutoff. Default:1e-5.</h6>
                                <input type="text" value="1e-5" class="input_setting_text" name="pepr_p">
                                --keep-max-dup<br>
                                <h6>maximum number of duplicated reads at each single position to keep. If not specified, will not remove any duplicate.</h6>
                                <input type="text" value="2" class="input_setting_text" name="pepr_keep">
                                --num-processors<br>
                                <h6>Number of CPUs to run in parallel.</h6>
                                <input type="text" value="1" class="input_setting_text" name="pepr_num">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_pepr').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_pepr').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="7" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='block';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">BCP<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>It is a flexible tool for ChIP-Seq peaks analysis.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_BCP" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_BCP" value="1" onclick="document.getElementById('workflow_custom_BCP').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_BCP" value="2" onclick="document.getElementById('workflow_custom_BCP').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_BCP" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                fragment size<br>
                                <h6>-f;Here fragment size is decided by the ChIP experiment sonication size (default value is 200bp)</h6>
<<<<<<< HEAD
                                <input type="text" id="BCP_f" value="200" class="input_setting_text" name="BCP_f">
                                window size<br>
                                <h6>Window size is a resolution parameter that is decided by user.We recommend 200bp as the default value because it isapproximately the size of a single nucleosome. </h6>
                                <input type="text" id="BCP_W" value="200" class="input_setting_text" name="BCP_W" >
                                p-value<br>
                                <h6>P-values are used when calling signicant segments compared to control data (default is 1e-3). </h6>
                                <input type="text" id="BCP_p" value="1e-3" class="input_setting_text" name="BCP_p" >
=======
                                <input type="text" value="200" class="input_setting_text" name="BCP_f">
                                window size<br>
                                <h6>Window size is a resolution parameter that is decided by user.We recommend 200bp as the default value because it isapproximately the size of a single nucleosome. </h6>
                                <input type="text" value="200" class="input_setting_text" name="BCP_W">
                                p-value<br>
                                <h6>P-values are used when calling signicant segments compared to control data (default is 1e-3). </h6>
                                <input type="text" value="1e-3" class="input_setting_text" name="BCP_p">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_BCP').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_BCP').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="8" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='block';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">diffReps<img class="tip" src="./img/tip_B.png"><a>It scans the whole genome using a sliding window,performing millions of statistical tests and report the significant hits. </a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_diff" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_diff" value="1" onclick="document.getElementById('workflow_custom_diff').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_diff" value="2" onclick="document.getElementById('workflow_custom_diff').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_diff" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                --mode<br>
                                <h6>Scanning mode: a selection implies a different window size.<br>
                                    Set window and step size manually to override.<br>
                                    (p)eak      (=1000)  Histone mark peak (Default).<br>
                                    (n)ucleosome(=200)   Single nucleosome (+DNAlinker).<br>
                                    (b)lock     (=10000) Large chromatin modification block.<br>
                                </h6>
                                <input type="radio" value="1" checked="true"  name="diff_mode">peak
                                <input type="radio" value="2" name="diff_mode">nucleosome
                                <input type="radio" value="3" name="diff_mode">block
                                --window(1000)<br>
                                <h6>Window size (default=Histone mark peak size).</h6>
<<<<<<< HEAD
                                <input type="text" id="diff_w" value="1000" class="input_setting_text" name="diff_w" >
                                --step(1/10 win) <br>
                                <h6>Window moving step size.</h6>
                                <input type="text" id="diff_step" value="1" class="input_setting_text" name="diff_step" >
                                --gap(0)<br>
                                <h6>Gap allowed between two consecutive windows.</h6>
                                <input type="text" id="diff_gap" value="0" class="input_setting_text" name="diff_gap">
=======
                                <input type="text" value="1000" class="input_setting_text" name="diff_w">
                                --step(1/10 win) <br>
                                <h6>Window moving step size.</h6>
                                <input type="text" value="1" class="input_setting_text" name="diff_step">
                                --gap(0)<br>
                                <h6>Gap allowed between two consecutive windows.</h6>
                                <input type="text" value="0" class="input_setting_text" name="diff_gap">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --nsd(broad)<br>
                                <h6>Z-score cutoff for low read count. Choose from two default modes or set your own.<br>
                                    (b)road     (=2)   Broad peak such as H3K36me3.<br>
                                    (s)harp     (=20)  Sharp peak such as H3K4me3 or Transcription factors.</h6>
                                <input type="radio" value="1" name="diff_nsd" checked="true">broad
                                <input type="radio" value="2" name="diff_nsd">sharp
                                --alpha(0.05)  <br>
                                <h6>Alpha for right-trimmed mean, must be in: [0, 0.5).</h6>
<<<<<<< HEAD
                                <input type="text" id="diff_alpha" value="0.05" class="input_setting_text" name="diff_alpha">
                                --bkg(0)<br>
                                <h6>Use fold enrichment vs. background as filter instead. Set a float number such as 2.0 here.</h6>
                                <input type="text" id="diff_bkg" value="0" class="input_setting_text" name="diff_bkg" >
=======
                                <input type="text" value="0.05" class="input_setting_text" name="diff_alpha">
                                --bkg(0)<br>
                                <h6>Use fold enrichment vs. background as filter instead. Set a float number such as 2.0 here.</h6>
                                <input type="text" value="0" class="input_setting_text" name="diff_bkg">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_diff').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_diff').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="9" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='block';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">SISSRs<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>A novel algorithm for precise identification of binding sites from short reads generated from ChIP-Seq experiments.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_SISSRs" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_SISSRs" value="1" onclick="document.getElementById('workflow_custom_SISSRs').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_SISSRs" value="2" onclick="document.getElementById('workflow_custom_SISSRs').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_SISSRs" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                False discovery rate if random background model based on Poisson probabilities need to be
                                used as control<br>
                                <h6>
                                    i.e., no background data is available.Default: 0.001
                                </h6>
<<<<<<< HEAD
                                <input type="text" id="SISSR_D" value="0.001" class="input_setting_text" name="SISSR_D" >
                                e-value threshold.<br>
                                <h6>It is the maximum number of “enriched regions” one can expect to see by
                                    chance (Poisson probabilities), when analyzing a similar-sized dataset.Default: 10</h6>
                                <input type="text" id="SISSR_e" value="10" class="input_setting_text" name="SISSR_e">
=======
                                <input type="text" value="0.001" class="input_setting_text" name="SISSR_D">
                                e-value threshold.<br>
                                <h6>It is the maximum number of “enriched regions” one can expect to see by
                                    chance (Poisson probabilities), when analyzing a similar-sized dataset.Default: 10</h6>
                                <input type="text" value="10" class="input_setting_text" name="SISSR_e">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                p-value threshold.<br>
                                <h6>For a given F value (average DNA fragment length) and a candidate binding
                                    site (represented as genomic coordinate t in Fig 1 of Jothi et al [1]), let u be the number of tags
                                    mapped to the region [t - F, t] on the sense strand, and let v be the number of tags mapped to the
                                    region [t, t + F] on the anti-sense strand.Default: 0.001</h6>
<<<<<<< HEAD
                                <input type="text" id="SISSR_p" value="0.001" class="input_setting_text" name="SISSR_p">
                                Fraction of genome (0.0 to 1.0) mappable by reads.<br>
                                <h6>Default: 0.8 for hg18, assuming ELAND was used for mapping. This could be different for
                                    different organisms and other mapping algorithms.</h6>
                                <input type="text" id="SISSR_m" value="0.8" class="input_setting_text" name="SISSR_m" >
=======
                                <input type="text" value="0.001" class="input_setting_text" name="SISSR_p">
                                Fraction of genome (0.0 to 1.0) mappable by reads.<br>
                                <h6>Default: 0.8 for hg18, assuming ELAND was used for mapping. This could be different for
                                    different organisms and other mapping algorithms.</h6>
                                <input type="text" value="0.8" class="input_setting_text" name="SISSR_m">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Size of the overlapping/sliding scanning window (must be an even number >1), which is one of
                                the parameters that attempts to control for noise in the data<br>
                                <h6>The amount of background noise in the data is a important factor one needs to
                                    consider before setting the size of the window.
                                    Default: 20</h6>
<<<<<<< HEAD
                                <input type="text" id="SISSR_w" value="20" class="input_setting_text" name="SISSR_w" >
=======
                                <input type="text" value="20" class="input_setting_text" name="SISSR_w">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                Number of “directional” reads required within F base pairs on either side of the inferred
                                binding site.<br>
                                <h6>Default: 2 (assuming that the data file contains ~2 to ~5 million reads; the value may need to
                                    be increased if the total number of reads is much larger).</h6>
<<<<<<< HEAD
                                <input type="text" id="SISSR_EE" value="2" class="input_setting_text" name="SISSR_E" >
                                Upper-bound on the DNA fragment length. It is the approximate length/size of the longest
                                DNA fragment that was sequenced.<br>
                                <h6>Default: 500</h6>
                                <input type="text" id="SISSR_L" value="500" class="input_setting_text" name="SISSR_L" >
=======
                                <input type="text" value="2" class="input_setting_text" name="SISSR_E">
                                Upper-bound on the DNA fragment length. It is the approximate length/size of the longest
                                DNA fragment that was sequenced.<br>
                                <h6>Default: 500</h6>
                                <input type="text" value="500" class="input_setting_text" name="SISSR_L">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_SISSRs').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_SISSRs').style.display='none';"/>
                            </div>
                        </div>
                        <input type="radio" name="workflowCustom_peak" value="10" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='block';">findPeaks<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>a Peak Finder/Analysis application for the ChIP-Seq or RNA-Seq experiments</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_findPeaks" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_findPeaks" value="1" onclick="document.getElementById('workflow_custom_findPeaks').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_findPeaks" value="2" onclick="document.getElementById('workflow_custom_findPeaks').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_findPeaks" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                -g GSIZE, --gsize=GSIZE<br>
                                <h6>Effective genome size. It can be 1.0e+9 or 1000000000,
                                    or shortcuts:'hs' for human (2.7e9), 'mm' for mouse
                                    (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for
                                    fruitfly (1.2e8), Default:hs</h6>
<<<<<<< HEAD
                                <input type="text" id="findPeaks_g" value="hs" class="input_setting_text" name="findPeaks_g" >
                                -s TSIZE, --tsize=TSIZE<br>
                                <h6>Tag size. This will overide the auto detected tag
                                    size. DEFAULT: 25</h6>
                                <input type="text" id="findPeaks_s" value="25" class="input_setting_text" name="findPeaks_s" >
                                --bw=BW<br>
                                <h6>Band width. This value is only used while building the
                                    shifting model. DEFAULT: 300</h6>
                                <input type="text" id="findPeaks_bw" value="300" class="input_setting_text" name="findPeaks_bw" >
                                -p PVALUE, --pvalue=PVALUE<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text" id="findPeaks_p" value="1e-5" class="input_setting_text" name="findPeaks_p" >
=======
                                <input type="text" value="hs" class="input_setting_text" name="findPeaks_g">
                                -s TSIZE, --tsize=TSIZE<br>
                                <h6>Tag size. This will overide the auto detected tag
                                    size. DEFAULT: 25</h6>
                                <input type="text" value="25" class="input_setting_text" name="findPeaks_s">
                                --bw=BW<br>
                                <h6>Band width. This value is only used while building the
                                    shifting model. DEFAULT: 300</h6>
                                <input type="text" value="300" class="input_setting_text" name="findPeaks_bw">
                                -p PVALUE, --pvalue=PVALUE<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text" value="1e-5" class="input_setting_text" name="findPeaks_p">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -m MFOLD, --mfold=MFOLD<br>
                                <h6>Select the regions within MFOLD range of high-
                                    confidence enrichment ratio against background to
                                    build model. The regions must be lower than upper
                                    limit, and higher than the lower limit. DEFAULT:10,30</h6>
<<<<<<< HEAD
                                <input type="text" id="findPeaks_m" value="10,30" class="input_setting_text" name="findPeaks_m">
=======
                                <input type="text" value="10,30" class="input_setting_text" name="findPeaks_m">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --slocal=SMALLLOCAL <br>
                                <h6>The small nearby region in basepairs to calculate
                                    dynamic lambda. This is used to capture the bias near
                                    the peak summit region. Invalid if there is no control
                                    data. DEFAULT: 1000</h6>
<<<<<<< HEAD
                                <input type="text" id="findPeaks_slocal" value="1000" class="input_setting_text" name="findPeaks_slocal">
=======
                                <input type="text" value="1000" class="input_setting_text" name="findPeaks_slocal">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --shiftsize=SHIFTSIZE<br>
                                <h6>The arbitrary shift size in bp. When nomodel is true,
                                    MACS will use this value as 1/2 of fragment size.
                                    DEFAULT: 100</h6>
<<<<<<< HEAD
                                <input type="text" id="findPeaks_shift" value="100" class="input_setting_text" name="findPeaks_shift" >
=======
                                <input type="text" value="100" class="input_setting_text" name="findPeaks_shift">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --verbose=VERBOSE   <br>
                                <h6>Set verbose level. 0: only show critical message, 1:
                                    show additional warning message, 2: show process
                                    information, 3: show debug messages. DEFAULT:2</h6>
<<<<<<< HEAD
                                <input type="text"  id="findPeaks_verbose" value="2" class="input_setting_text" name="findPeaks_verbose" >
                                --fe-min=FEMIN     <br>
                                <h6>For diagnostics, min fold enrichment to consider.
                                    DEFAULT: 0</h6>
                                <input type="text" id="findPeaks_femin" value="0" class="input_setting_text" name="findPeaks_femin">
                                --EM-converge-diff=MIN_CHANGE<br>
                                <h6>The minimum entropy change between iterations before
                                    halting E-M steps. DEFAULT : 1e-05</h6>
                                <input type="text" id="findPeaks_EM_cd" value="1e-05" class="input_setting_text" name="findPeaks_EM_cd" >
                                --EM-min-score=MIN_SCORE<br>
                                <h6>Minimum enrichment score. Windows below this threshold
                                    will all look the same to the aligner. DEFAULT : 1.5</h6>
                                <input type="text" id="findPeaks_EM_min" value="1.5" class="input_setting_text" name="findPeaks_EM_min" >
                                --prior-snp=PRIOR_PROB_SNP<br>
                                <h6>Prior probability that a SNP occurs at any base in the
                                    genome. DEFAULT : 0.001</h6>
                                <input type="text" id="findPeaks_ps" value="0.001" class="input_setting_text" name="findPeaks_ps" >
=======
                                <input type="text" value="2" class="input_setting_text" name="findPeaks_verbose">
                                --fe-min=FEMIN     <br>
                                <h6>For diagnostics, min fold enrichment to consider.
                                    DEFAULT: 0</h6>
                                <input type="text" value="0" class="input_setting_text" name="findPeaks_femin">
                                --EM-converge-diff=MIN_CHANGE<br>
                                <h6>The minimum entropy change between iterations before
                                    halting E-M steps. DEFAULT : 1e-05</h6>
                                <input type="text" value="1e-05" class="input_setting_text" name="findPeaks_EM_cd">
                                --EM-min-score=MIN_SCORE<br>
                                <h6>Minimum enrichment score. Windows below this threshold
                                    will all look the same to the aligner. DEFAULT : 1.5</h6>
                                <input type="text" value="1.5" class="input_setting_text" name="findPeaks_EM_min">
                                --prior-snp=PRIOR_PROB_SNP<br>
                                <h6>Prior probability that a SNP occurs at any base in the
                                    genome. DEFAULT : 0.001</h6>
                                <input type="text" value="0.001" class="input_setting_text" name="findPeaks_ps">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_findPeaks').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_findPeaks').style.display='none';"/>
                            </div>
                        </div>

                        <input type="radio" name="workflowCustom_peak" value="11" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='block';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">AREM<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>A peak caller for ChIP-Seq experiments that robustly handles short reads with *multiple* possible mappings.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_AREM" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_AREM" value="1" onclick="document.getElementById('workflow_custom_AREM').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_AREM" value="2" onclick="document.getElementById('workflow_custom_AREM').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_AREM" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center" style="overflow-y:scroll;">
                                -g GSIZE, --gsize=GSIZE<br>
                                <h6>Effective genome size. It can be 1.0e+9 or 1000000000,
                                    or shortcuts:'hs' for human (2.7e9), 'mm' for mouse
                                    (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for
                                    fruitfly (1.2e8), Default:hs</h6>
<<<<<<< HEAD
                                <input type="text" id="AREM_g" value="hs" class="input_setting_text" name="AREM_g" >
                                -s TSIZE, --tsize=TSIZE<br>
                                <h6>Tag size. This will overide the auto detected tag
                                    size. DEFAULT: 25</h6>
                                <input type="text" id="AREM_s" value="25" class="input_setting_text" name="AREM_s">
                                --bw=BW<br>
                                <h6>Band width. This value is only used while building the
                                    shifting model. DEFAULT: 300</h6>
                                <input type="text" id="AREM_bw" value="300" class="input_setting_text" name="AREM_bw" >
                                -p PVALUE, --pvalue=PVALUE<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text" id="AREM_p" value="1e-5" class="input_setting_text" name="AREM_p" >
=======
                                <input type="text" value="hs" class="input_setting_text" name="AREM_g">
                                -s TSIZE, --tsize=TSIZE<br>
                                <h6>Tag size. This will overide the auto detected tag
                                    size. DEFAULT: 25</h6>
                                <input type="text" value="25" class="input_setting_text" name="AREM_s">
                                --bw=BW<br>
                                <h6>Band width. This value is only used while building the
                                    shifting model. DEFAULT: 300</h6>
                                <input type="text" value="300" class="input_setting_text" name="AREM_bw">
                                -p PVALUE, --pvalue=PVALUE<br>
                                <h6>Pvalue cutoff for peak detection. DEFAULT: 1e-5</h6>
                                <input type="text" value="1e-5" class="input_setting_text" name="AREM_p">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                -m MFOLD, --mfold=MFOLD<br>
                                <h6>Select the regions within MFOLD range of high-
                                    confidence enrichment ratio against background to
                                    build model. The regions must be lower than upper
                                    limit, and higher than the lower limit. DEFAULT:10,30</h6>
<<<<<<< HEAD
                                <input type="text" id="AREM_m" value="10,30" class="input_setting_text" name="AREM_m">
=======
                                <input type="text" value="10,30" class="input_setting_text" name="AREM_m">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --slocal=SMALLLOCAL <br>
                                <h6>The small nearby region in basepairs to calculate
                                    dynamic lambda. This is used to capture the bias near
                                    the peak summit region. Invalid if there is no control
                                    data. DEFAULT: 1000</h6>
<<<<<<< HEAD
                                <input type="text" id="AREM_slocal" value="1000" class="input_setting_text" name="AREM_slocal">
=======
                                <input type="text" value="1000" class="input_setting_text" name="AREM_slocal">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --shiftsize=SHIFTSIZE<br>
                                <h6>The arbitrary shift size in bp. When nomodel is true,
                                    MACS will use this value as 1/2 of fragment size.
                                    DEFAULT: 100</h6>
<<<<<<< HEAD
                                <input type="text" id="AREM_shift" value="100" class="input_setting_text" name="AREM_shift" >
=======
                                <input type="text" value="100" class="input_setting_text" name="AREM_shift">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                --verbose=VERBOSE   <br>
                                <h6>Set verbose level. 0: only show critical message, 1:
                                    show additional warning message, 2: show process
                                    information, 3: show debug messages. DEFAULT:2</h6>
<<<<<<< HEAD
                                <input type="text" id="AREM_verbose" value="2" class="input_setting_text" name="AREM_verbose" >
                                --fe-min=FEMIN     <br>
                                <h6>For diagnostics, min fold enrichment to consider.
                                    DEFAULT: 0</h6>
                                <input type="text" id="AREM_femin" value="0" class="input_setting_text" name="AREM_femin">
                                --EM-converge-diff=MIN_CHANGE<br>
                                <h6>The minimum entropy change between iterations before
                                    halting E-M steps. DEFAULT : 1e-05</h6>
                                <input type="text" id="AREM_EM_cd" value="1e-05" class="input_setting_text" name="AREM_EM_cd" >
                                --EM-min-score=MIN_SCORE<br>
                                <h6>Minimum enrichment score. Windows below this threshold
                                    will all look the same to the aligner. DEFAULT : 1.5</h6>
                                <input type="text" id="AREM_EM_min" value="1.5" class="input_setting_text" name="AREM_EM_min" >
                                --prior-snp=PRIOR_PROB_SNP<br>
                                <h6>Prior probability that a SNP occurs at any base in the
                                    genome. DEFAULT : 0.001</h6>
                                <input type="text" id="AREM_ps" value="0.001" class="input_setting_text" name="AREM_ps">
=======
                                <input type="text" value="2" class="input_setting_text" name="AREM_verbose">
                                --fe-min=FEMIN     <br>
                                <h6>For diagnostics, min fold enrichment to consider.
                                    DEFAULT: 0</h6>
                                <input type="text" value="0" class="input_setting_text" name="AREM_femin">
                                --EM-converge-diff=MIN_CHANGE<br>
                                <h6>The minimum entropy change between iterations before
                                    halting E-M steps. DEFAULT : 1e-05</h6>
                                <input type="text" value="1e-05" class="input_setting_text" name="AREM_EM_cd">
                                --EM-min-score=MIN_SCORE<br>
                                <h6>Minimum enrichment score. Windows below this threshold
                                    will all look the same to the aligner. DEFAULT : 1.5</h6>
                                <input type="text" value="1.5" class="input_setting_text" name="AREM_EM_min">
                                --prior-snp=PRIOR_PROB_SNP<br>
                                <h6>Prior probability that a SNP occurs at any base in the
                                    genome. DEFAULT : 0.001</h6>
                                <input type="text" value="0.001" class="input_setting_text" name="AREM_ps">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_AREM').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_AREM').style.display='none';"/>
                            </div>
                        </div>

                        <input type="radio" name="workflowCustom_peak" value="12" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='none';document.getElementById('workflowCustom_option_Fseq').style.display='block';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">Fseq<img class="tip" src="./img/tip_S.png"><img class="tip1" src="./img/tip_B.png"><a>a software package that generates a continuous tag sequence density estimation</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_Fseq" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_Fseq" value="1" onclick="document.getElementById('workflow_custom_Fseq').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_Fseq" value="2" onclick="document.getElementById('workflow_custom_Fseq').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_Fseq" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center">
                                -b: The size of bin<br>
                                <h6>default value 200 (bp). It should be consistent with the bedGraph format input file</h6>
<<<<<<< HEAD
                                <input type="text" id="Fseq_b"value="200" class="input_setting_text" name="Fseq_b" />
                                -g: The size of the genome under consideration<br>
                                <h6>default value 3107677273 (bp) for the human genome
                                    (hg18).</h6>
                                <input type="text" id="Fseq_g" value="3107677273" class="input_setting_text" name="Fseq_g" />
=======
                                <input type="text" value="200" class="input_setting_text" name="Fseq_b"/>
                                -g: The size of the genome under consideration<br>
                                <h6>default value 3107677273 (bp) for the human genome
                                    (hg18).</h6>
                                <input type="text" value="3107677273" class="input_setting_text" name="Fseq_g"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_Fseq').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_Fseq').style.display='none';"/>
                            </div>
                        </div>

                        <input type="radio" name="workflowCustom_peak" value="13" onclick="document.getElementById('workflowCustom_option_macs').style.display='none';document.getElementById('workflowCustom_option_macs2').style.display='none';document.getElementById('workflowCustom_option_peakseq').style.display='none';document.getElementById('workflowCustom_option_peakranger').style.display='none';document.getElementById('workflowCustom_option_sicer').style.display='none';document.getElementById('workflowCustom_option_pepr').style.display='none';document.getElementById('workflowCustom_option_BCP').style.display='none';document.getElementById('workflowCustom_option_diff').style.display='none';document.getElementById('workflowCustom_option_SISSRs').style.display='none';document.getElementById('workflowCustom_option_AREM').style.display='none';document.getElementById('workflowCustom_option_BroadPeak').style.display='block';document.getElementById('workflowCustom_option_Fseq').style.display='none';document.getElementById('workflowCustom_option_findPeaks').style.display='none';">BroadPeak<img class="tip" src="./img/tip_B.png"><a>It is broad peak calling algorithm for diffuse ChIP-Seq datasets.</a><br>
                        <div class="workflowCustom_option" id="workflowCustom_option_BroadPeak" style="display:none">
                            whether to set optional parameters?<br>
                            <input type="radio" name="workflowCustom_option_BroadPeak" value="1" onclick="document.getElementById('workflow_custom_BroadPeak').style.display='none';">default
                            <input type="radio" name="workflowCustom_option_BroadPeak" value="2" onclick="document.getElementById('workflow_custom_BroadPeak').style.display='block';">setting by yourself
                        </div>
                        <div id="workflow_custom_BroadPeak" class="inputOption_setting" style="display:none">
                            <div class="inputOption_setting_center">
                                -b: The size of bin<br>
                                <h6>default value 200 (bp). It should be consistent with the bedGraph format input file</h6>
<<<<<<< HEAD
                                <input type="text" id="BroadPeak_b" value="200" class="input_setting_text" name="BroadPeak_b" />
                                -g: The size of the genome under consideration<br>
                                <h6>default value 3107677273 (bp) for the human genome
                                    (hg18).</h6>
                                <input type="text" id="BroadPeak_g" value="3107677273" class="input_setting_text" name="BroadPeak_g" />
=======
                                <input type="text" value="200" class="input_setting_text" name="BroadPeak_b"/>
                                -g: The size of the genome under consideration<br>
                                <h6>default value 3107677273 (bp) for the human genome
                                    (hg18).</h6>
                                <input type="text" value="3107677273" class="input_setting_text" name="BroadPeak_g"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                <input type="button" class="btn_submit" value="submit" onclick="document.getElementById('workflow_custom_BroadPeak').style.display='none';"/>
                                <input type="button" class="btn_cancel" value="cancel" onclick="document.getElementById('workflow_custom_BroadPeak').style.display='none';"/>
                            </div>
                        </div>
                    </div>

<<<<<<< HEAD
                    <input type="submit" value="Execute" class="Execute_btn" id="btn_workflow"/><s:fielderror fieldName="check1" cssStyle="color:red;float:left;margin-top:0px;margin-right:10px;"  />
=======
                    <input type="submit" value="Execute" class="Execute_btn" id="btn_workflow"/>
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                    <div id="wait_workflow" class="Upload_wait_div" style="display:none;">
                        <img src="./img/wait.gif" class="Upload_wait" />
                        Uploading and processing your file,please wait.You may click the "Recent Jobs" at the top to access your job's results after the processing.
                    </div>
                </form>
            </div>

<<<<<<< HEAD
            <div class="side_right" id="side_right_2" style="display:none">
=======
            <div class="side_right" id="side_right_3" style="display:none">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                <div class="blackdown_tips" id="workflow_resultTips" style="display:none">
                    Your workflow has finished running,and we will send the results to your e-mail address as soon as possible.
                   <br>
                    If you have questions about the results or if you want to get detail information about the finished operation,please <a href="JavaScript:operation_detail();" style="text-decoration: none">click here</a>
                </div>
                <div id="detail_out" class="inputOption_setting_de" style="display:none">
                    <div id="detail_in" class="inputOption_setting_center_de" style="overflow-y:scroll;">
                            ${stdoutlist_mapping1}<br>
                            ${stdoutlist_mapping2}<br>
                            ${stdoutlist_peak}<br>
                        <input type="button" value="close" class="btn_cancel" onclick="document.getElementById('detail_out').style.display='none'"/>
                    </div>
                </div>

                <div id="mapping_center1" class="visual_center" style="display:block">
<<<<<<< HEAD
                    <form action="visual_mapping_new" id="visual_mapping_new" enctype="multipart/form-data" method="post" onsubmit="return searchData('visual_mapping_new','btn_workflow_mapping','wait_workflow_mapping');">
=======
                    <form action="visual_mapping_new"  enctype="multipart/form-data" method="post" onsubmit="document.getElementById('btn_workflow_mapping').style.backgroundColor='#666666';document.getElementById('wait_workflow_mapping').style.display='block';">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                        <div class="blacktop_1">
                            Choose the type of your file
                            <div class="tip_out"><img class="tip" id="tip6" src="./img/tip.png" onclick="JavaScript:Tip_click(6)"></div>
                        </div>
                        <div class="blackdown_1">
                        <input type="radio" name="mapping_radio"  value="1" checked="true" onclick="document.getElementById('sample_mapping_generated').style.display='block';document.getElementById('sample_mapping_file').style.display='none';"/>Use the newly generated file
                        <input type="radio" name="mapping_radio"  value="2" onclick="document.getElementById('sample_mapping_generated').style.display='none';document.getElementById('sample_mapping_file').style.display='block';"/>Input the file to view
                </div><br>
                        <div id="sample_mapping_generated" style="display:block">
                     <div class="blackdown_2" >
                            The path of the sam file:<br>
                        <h7>${sampath}<br></h7>
                            <input type="text" name="sampath" value="${sampath}" style="display:none"/>
                        The path of the reference file:<br>
                        <h7>${workflowCustom_reference}<br></h7>
                            <input type="text" name="workflowCustom_reference" value="${workflowCustom_reference}" style="display:none"/>
                        The path to save result:<br>
                        <h7>${workflowCustom_path}<br></h7>
                            <input type="text" name="workflowCustom_path" value="${workflowCustom_path}" style="display:none"/>
                       </div>
                        <div class="blacktop_1">
                            Input the scope of the gene
                            <div class="tip_out"><img class="tip" id="tip7" src="./img/tip.png" onclick="JavaScript:Tip_click(7)"></div>
                            <s:fielderror fieldName="mapping_visual_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        </div>
                        <div class="blackdown_1">
                            <div class="file-box" id="file-box_mapping_visual_scope" style="display:block">
<<<<<<< HEAD
                                <input type='text' name='mapping_visual_scope' id="mapping_visual_scope" value="${Scope_demo}" class='input_text'  onBlur="ValidateChar(this.value,'mapping_visual_scope')"/>
=======
                                <input type='text' name='mapping_visual_scope' id="mapping_visual_scope" value="${Scope_demo}" class='input_text' />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                            </div>
                        </div>
                     </div>

                        <div class="blackdown_3" id="sample_mapping_file" style="display:none">
                            The path of the sam file: <s:fielderror fieldName="mapping_sam" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                            <div class="file-box1" style="display:block">
<<<<<<< HEAD
                                <input type='text' name='mapping_sam' id="mapping_sam" class='input_text' onBlur="ValidateChar(this.value,'mapping_sam')"/>
                                <input type='button' class='btn' value='Choose File'/>
                                <input type="file" name="fileField_mapping" class="fileField" onchange="return (fileChange(this,'mapping_sam' )&& checkFileExt(this.value,'mapping_sam'))" />
                            </div>
                            The path of the reference file: <s:fielderror fieldName="mapping_reference" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                            <div class="file-box1" style="display:block">
                                <input type='text' name='mapping_reference' id="mapping_reference" class='input_text'onBlur="ValidateChar(this.value,'mapping_reference')" />
                                <input type='button' class='btn' value='Choose File'/>
                                <input type="file" name="fileField_mapping" class="fileField" onchange="return (fileChange(this,'mapping_reference' )&& checkFileExt(this.value,'mapping_reference'))" />
                            </div>
                            the scope of gene: <s:fielderror fieldName="mapping_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                            <div class="file-box1" style="display:block">
                                <input type='text' name='mapping_scope' id="mapping_scope" class='input_text'onBlur="ValidateChar(this.value,'mapping_scope')"  />
=======
                                <input type='text' name='mapping_sam' id="mapping_sam" class='input_text' />
                                <input type='button' class='btn' value='Choose File'/>
                                <input type="file" name="fileField_mapping" class="fileField" onchange="document.getElementById('mapping_sam').value=this.value;fileChange(this,'mapping_sam');" />
                            </div>
                            The path of the reference file: <s:fielderror fieldName="mapping_reference" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                            <div class="file-box1" style="display:block">
                                <input type='text' name='mapping_reference' id="mapping_reference" class='input_text' />
                                <input type='button' class='btn' value='Choose File'/>
                                <input type="file" name="fileField_mapping" class="fileField" onchange="document.getElementById('mapping_reference').value=this.value;fileChange(this,'mapping_reference');" />
                            </div>
                            the scope of gene: <s:fielderror fieldName="mapping_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                            <div class="file-box1" style="display:block">
                                <input type='text' name='mapping_scope' id="mapping_scope" class='input_text' />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                            </div>
                        </div>
                        <input type="submit" value="Execute" class="Execute_btn_visual" id="btn_workflow_mapping"/>
                        <div id="wait_workflow_mapping" class="Upload_wait_div" style="display:none;">
                            <img src="./img/wait.gif" class="Upload_wait" />
                            Uploading and processing your file,please wait.You may click the "Recent Jobs" at the top to access your job's results after the processing.
                        </div>
                        <div class="outer" onclick="JavaScript:expandPhoto();">
                            <img  src="#"  id="mapping_img"/>
                        </div>
                       </form>
                </div>
</div>
<<<<<<< HEAD
            <div class="side_right" id="side_right_3" style="display:none">
                    <div id="peakcalling_center" class="visual_center" style="display:block">
                        <form action="peakcalling_visual_new" id="peakcalling_visual_new"  enctype="multipart/form-data" method="post" onsubmit="return searchData('peakcalling_visual_new','btn_workflow_peak','wait_workflow_peak');">
=======
            <div class="side_right" id="side_right_4" style="display:none">
                    <div id="peakcalling_center" class="visual_center" style="display:block">
                        <form action="peakcalling_visual_new"  enctype="multipart/form-data" method="post" onsubmit="document.getElementById('btn_workflow_peak').style.backgroundColor='#666666';document.getElementById('wait_workflow_peak').style.display='block';">
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                        <div class="blacktop_1">
                            Choose the type of your file
                            <div class="tip_out"><img class="tip" id="tip8" src="./img/tip.png" onclick="JavaScript:Tip_click(8)"></div>
                        </div>
                        <div class="blackdown_1">
                            <input type="radio" name="peakcalling_type" value="1" checked="true" onclick="document.getElementById('sample_peakcalling').style.display='block';document.getElementById('sample_center').style.display='none';"/>Use the newly generated file
                            <input type="radio" name="peakcalling_type" value="2" onclick="document.getElementById('sample_peakcalling').style.display='none';document.getElementById('sample_center').style.display='block';"/>Input the file to view
                        </div><br>
                                <div id="sample_peakcalling" style="display:block">
                                    <div class="blackdown_2">
                                        The path of the treatment file:<br>
                                        <h7>${bampath_treatment}<br></h7>
                                        <input type="text" name="bampath_treatment" value="${bampath_treatment}" style="display:none"/>
                                        The path of the control file:<br>
                                        <h7>${bampath_control}<br></h7>
                                        <input type="text" name="bampath_control" value="${bampath_control}" style="display:none"/>
                                        The path of the peak file:<br>
                                        <h7>${peakpath}<br></h7>
                                        <input type="text" name="peakpath" value="${peakpath}" style="display:none"/>
                                        The path to save result:<br>
                                        <h7> ${workflowCustom_path}<br></h7>
                                        <input type="text" name="workflowCustom_path" value="${workflowCustom_path}" style="display:none"/>
                                    </div>
                                    <div class="blacktop_1">
                                        Input the scope of the gene
                                        <div class="tip_out"><img class="tip" id="tip9" src="./img/tip.png" onclick="JavaScript:Tip_click(9)"></div>
                                        <s:fielderror fieldName="peakcalling_visual_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                                    </div>
                                    <div class="blackdown_1">
                                        <div class="file-box" style="display:block">
<<<<<<< HEAD
                                            <input type='text' name='peakcalling_visual_scope' id="peakcalling_visual_scope" value="${Scope_demo}" class='input_text' onBlur="ValidateChar(this.value,'peakcalling_visual_scope')"  />
=======
                                            <input type='text' name='peakcalling_visual_scope' id="peakcalling_visual_scope" value="${Scope_demo}" class='input_text' />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                                        </div>
                                    </div>
                                </div>

                    <div class="blackdown_3" id="sample_center" style="display:none">
                        The path of the treatment file: <s:fielderror fieldName="peakcalling_treatment" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
<<<<<<< HEAD
                            <input type='text' name='peakcalling_treatment' id="peakcalling_treatment" class='input_text' onBlur="ValidateChar(this.value,'peakcalling_treatment')" />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="return (fileChange(this,'peakcalling_treatment' )&& checkFileExt(this.value,'peakcalling_treatment'))" />
                        </div>
                        The path of the control file:<s:fielderror fieldName="peakcalling_control" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_control' id="peakcalling_control" class='input_text'  onBlur="ValidateChar(this.value,'peakcalling_control')"/>
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="return (fileChange(this,'peakcalling_control' )&& checkFileExt(this.value,'peakcalling_control'))" />
                        </div>
                        The path of the peak file:<s:fielderror fieldName="peakcalling_peak" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_peak' id="peakcalling_peak" class='input_text' onBlur="ValidateChar(this.value,'peakcalling_peak')"/>
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="return (fileChange(this,'peakcalling_peak' )&& checkFileExt(this.value,'peakcalling_peak'))" />
                        </div>
                        The path of the reference file:<s:fielderror fieldName="peakcalling_refer" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_refer' id="peakcalling_refer" class='input_text' onBlur="ValidateChar(this.value,'peakcalling_refer')" />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="return (fileChange(this,'peakcalling_refer' )&& checkFileExt(this.value,'peakcalling_refer'))" />
                        </div>
                        the scope of gene:<s:fielderror fieldName="peakcalling_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_scope' id="peakcalling_scope" class='input_text'onBlur="ValidateChar(this.value,'peakcalling_scope')" />
=======
                            <input type='text' name='peakcalling_treatment' id="peakcalling_treatment" class='input_text' />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="document.getElementById('peakcalling_treatment').value=this.value;fileChange(this,'peakcalling_treatment');" />
                        </div>
                        The path of the control file:<s:fielderror fieldName="peakcalling_control" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_control' id="peakcalling_control" class='input_text' />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="document.getElementById('peakcalling_control').value=this.value;fileChange(this,'peakcalling_control');" />
                        </div>
                        The path of the peak file:<s:fielderror fieldName="peakcalling_peak" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_peak' id="peakcalling_peak" class='input_text' />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="document.getElementById('peakcalling_peak').value=this.value;fileChange(this,'peakcalling_peak');" />
                        </div>
                        The path of the reference file:<s:fielderror fieldName="peakcalling_refer" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_refer' id="peakcalling_refer" class='input_text' />
                            <input type='button' class='btn' value='Choose File'/>
                            <input type="file" name="fileField_peak" class="fileField" onchange="document.getElementById('peakcalling_refer').value=this.value;fileChange(this,'peakcalling_refer');" />
                        </div>
                        the scope of gene:<s:fielderror fieldName="peakcalling_scope" cssStyle="color:red;float:right;margin-top:0px;margin-right:10px;"  />
                        <div class="file-box1" style="display:block">
                            <input type='text' name='peakcalling_scope' id="peakcalling_scope" class='input_text' />
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
                        </div>

                    </div>
                            <input type="submit" value="Execute" class="Execute_btn_visual" id="btn_workflow_peak" />
                            <div id="wait_workflow_peak" class="Upload_wait_div" style="display:none;">
                                <img src="./img/wait.gif" class="Upload_wait" />
                                Uploading and processing your file,please wait.You may click the "Recent Jobs" at the top to access your job's results after the processing.
                            </div>
                            <div class="outer" onclick="JavaScript:expandPhoto1();">
                                <img  src="#"  id="peakcalling_img"/>
                    </div>
                </form>
                </div>
        </div>
    </div>
</div>
    <div id="foot">
        <p>Copyright © 2016 - CSU-Bioinformatics Group | All Rights Reserved</p>
    </div>
</div>
</body>
<script language="JavaScript">

</script>
</html>