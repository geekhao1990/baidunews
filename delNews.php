<?php
/**
 * Created by IntelliJ IDEA.
 * User: hao
 * Date: 2016/2/19
 * Time: 23:10
 */
session_start();
require_once("safe.php");
require_once("config.php");

$sql = "DELETE FROM `news` WHERE newsId='".$_REQUEST['newsId']."'";
$result = mysql_query($sql);
if($result){
    echo "<script>alert('删除成功');location='management.php?newsType=0';</script>";
}
else{
    echo "<script>alert('删除失败');location='management.php?newsType=0';</script>";
}

?>