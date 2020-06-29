<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php $aset = base_url().'assets/frontend/avilon/' ?>
<!DOCTYPE HTML>
<html>
<head>
<title>NSIDC 2018</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<?= $aset ?>/img/favicon-32x32.png" rel="icon">
<style type="text/css">
body{
	width: 100%;
    height: 100vh;
    background: linear-gradient(45deg, rgba(29, 224, 153, 0.8), rgba(29, 200, 205, 0.8)), url(<?= base_url();?>assets/frontend/avilon/img/ugm.jpg) center top no-repeat;
    background-size: cover;
    position: relative;
}
.wrap{
	width:1000px;
	margin:0 auto;
}
.logo h1{
	color:black;
	font-weight:bold;
	font-size:27px;
	text-transform:uppercase;
}	
.sub-head{
	text-align:center;
}
.sub-head h2{
	margin-top:150px;
	font-size:40px;
	font-weight:bold;
	color:black;
}
br { clear: both; }
.cntSeparator {
	font-size: 54px;
	margin: 10px 7px;
	color: #000;
}
.main{
	background:white;
	width:550px;
	margin:0 auto;
	padding:45px;
	-webkit-border-radius:.5em;
	-moz-border-radius:.5em;
	border-radius:.5em;
	-webkit-box-shadow:0 0 5px #aaa;
   -moz-box-shadow:0 0 5px #aaa;
	box-shadow:0 0 8px #aaa;
}
#counter{
	margin:0 auto 7px auto;
	width:512px;
}
.desc{
	margin-left:2px;
}
.desc div {
	float: left;
	width: 70px;
	margin:0 46px 0 19px;
	font-size: 13px;
	color: #000000;
}	
.contact{
	width:300px;
	margin:50px auto;
	padding:4px 6px;
	background:black;
	-webkit-border-radius:.3em;
	   -moz-border-radius:.3em;
	        border-radius:.3em;
}
.contact input[type="text"]{
	background:none;
	border:none;
	font-size:15px;
	padding:3px;
	color:#fff;
	width:238px;
}
.contact input[type="submit"]{
	background:yellow;
	border:none;
	padding:5px;
	margin:0;
	cursor:pointer;
	-webkit-border-radius:.2em;
	   -moz-border-radius:.2em;
			border-radius:.2em;
}
.footer{
	position:absolute;
	bottom:10px;
	right:10px;
	font-size:14px;
	color:black;
}
.footer a{
	color:#888;
	text-decoration:none;
}

@media (max-width:1080px) {
	.logo h1 {
		padding-left:20px;
		padding-top: 5px;
		font-weight: normal;
	}
	.footer {
	    bottom: 25px;
		right: 30px;
	}
	.sub-head h2 {
		font-weight: normal;
	}
}

@media (max-width:1024px) { 
	.sub-head h2 {
		font-size:35px;
		margin-top: 130px;
	}
	.logo h1 {
		font-size:25px;
	}
	.wrap {
		width: 100%;
	}
	.contact {
		width: fit-content;	
	}
}

@media (max-width: 991px) {
	.sub-head h2 {
		font-size: 80PX;
	    padding: 60px;
    	margin-top: 80px;
	}
	.main {
		padding:20px 0 30px;
	}
}	

@media (max-width: 768px) {
	.sub-head h2 {
		margin-top: 240px;
	}
	.footer {
		right:0;
		width:100%;
		text-align:center;
	}
}

@media (max-width: 736px) {
	.cntSeparator {
		font-size: 54px;
		margin: 10px 7px;
	}
	.main {
		background:white;
		margin:0 auto;
		padding:16px;
		width:fit-content;
	}
	#counter {
		zoom:0.55;
		width:512px;
	}
	.desc {
		margin-left: 0px;
		text-align: center;
	}
	.desc div {
		width: auto;
		font-size: 10px;
		float: none;
		display:inline-block;
		margin: 0 18px;
	}
	.sub-head h2 {
		margin-top: 5px;
	}
	.logo h1 {
		padding-left: 5px;
		padding-top: 0px;
		font-size:20px;	
	}
	.contact {
		margin: 35px auto 0;
	}
}

@media (max-width:667px) {
	.contact {
		margin: 15px auto 0;
	}
	.sub-head h2 {
		font-size: 25px;
		margin-bottom:10px;
	}
}

@media (max-width:640px) {
	.sub-head h2 {
		margin-top: 80px;
	}
}

@media (max-width: 600px) {
	.sub-head h2 {
		margin-top: 45px;
	}
}

@media (max-width: 568px) {
	.main {
		padding:10px;
	}
	.sub-head h2 {
		margin-top: 0px;
	}
	.logo h1 {
		font-size:16px;
	}
	.sub-head h2 {
		font-size: 22px;
		margin-bottom: 7px;
		margin-top: 12px;
	}
	.contact input[type="text"] {
		font-size:14px;
		padding: 0px;
		width: 235px;
	}
	.footer {
		bottom: 15px;
		line-height: 27px;
	}
	.contact {
		margin: 10px auto 0;
	}
}

@media (max-width: 480px) {
	.sub-head h2 {
		margin-top:100px;
	}
}

@media (max-width: 414px) {
	.sub-head h2 {
		margin-bottom: 25px;
		margin-top:165px;
	}
	.contact {
		margin: 30px auto 0;
	}
	.footer {
		right: 10px;
		left: 10px;
		width: 94%;
	}
}

@media (max-width: 384px) {
	.sub-head h2 {
		margin-top: 145px;
	}
	.footer {
		bottom: 30px;
	}
}

@media (max-width: 320px) {
	.footer {
		bottom: 20px;
	}
	.sub-head h2 {
		font-size: 20px; 
		margin-top: 105px;
	}
	.main {
		padding: 5px;
	}
	.contact input[type="text"] {
		font-size: 13px; 
		width: 227px;
	}
	.contact input[type="submit"] {
		padding:4px;
		font-size:13px;
	}
	.footer {
		font-size:13px;
		line-height: 25px;
	}
}


</style>
</head>
<body>
<div class="wrap">	 
    <div class="sub-head">	
        <h2>Terima kasih telah mengunjungi web NSIDC SV UGM 2018. Mohon maaf kegiatan NSIDC 2018 akan ditunda pelaksanaannya</h2>
        <br>
        <br>
        <br>
        <h3>TTD</h3><br>
        <h3>Atas Nama Panitia NSIDC</h3>
	</div>
</div>	
<div class="contact">
	<div class="footer" style="padding: 60px;">
		&copy 2018 <a style="color: black;" href="http:///digitalesia.com">Digitalesia.com</a> All Rights Reserved</a>
	</div>
</div>
</body>
</html>