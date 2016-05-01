<?php
/**
 * Created by IntelliJ IDEA.
 * User: hao
 * Date: 2016/2/20
 * Time: 16:32
 */
if(!isset($_SESSION['username'])){
    echo "<script>alert('请先登录');location='manageLogin.php';</script>";
}
?>