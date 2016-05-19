* {margin: 0; padding: 0; outline: 0;}


@font-face {
    font-family: 'normaltext'; 
    src: url('typefaces/Harabara.otf'); 
}


h1, h2 {
	font-family: normaltext,'Open Sans', sans-serif;
	font-weight: 300;
	margin:0 0 15px 0;
}


h1 {
	font-size: 36px;
	letter-spacing: -1px;
	line-height: 100%;
}


h2 {
	font-size: 24px;
}


p {
	margin: 0 0 15px 0;
}

a {
	color: #3e3e3e;
}



.clear {
	clear: both;
}
.wrap {
	width: 100%;
	max-width: 1600px;
	min-width: 960px;
	z-index: 10;
	position: relative;
	margin: 0 auto;
	padding: 0;

}



.section {
	width: 100%;
	max-width: 1600px;
	min-width: 960px;
	z-index: 10;
	position: relative;
	margin: 0 auto;
	padding: 0 0 20px 0;
	height: 500px;
}


.inner {
	width: 960px;
	margin: 0 auto;
	position: relative;
	min-height: 50px;
	padding:30px 0;
	font-size: 18px;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
}

.inner:after {
	  content: "";
	  display: table;
	  clear: both;
}


.subMenu {
	height: 50px;
	z-index: 1000;
	width: 100%;
	background: #0977bc;
}

.subMenu .inner {
	padding:0;
	font-weight: 400;
	margin: 0 auto;
}


.subNavBtn {
	display: block;
	height: 35px;
	width: 10%;
	float: left;
	margin: 0px 0px 0 0;
	text-decoration: none;
	font-size: 14px;
	padding: 15px 2% 0 2%;
	text-align: center;
	
	color: #fff;
}
.subMenu a:hover {
	background: #1783c7;
}

.active {
	background: #25aae1;
}
.end {
	margin: 0;
}




/* SECTIONS */
.sTop {
	min-height: 130px;
	background:#fff;
	color:#3d3d3d;
	padding: 50px 0;
	height: 300px;
	
}

.s1 {
	background:#184764;
	color:#fff;
	height:700px;
	
}


.s2 {
	background: #373737;
	height:700px;
}
.s2 a {
	color: #fff;
}

.s3 {
background: #bce1f1;
	color: #3d3d3d;
	
	height:800px;

	
}


.s4 {
	background: #5aa3c4;
clear:both;
height:880px;

	
	
}



.s5 {
	background: #bce1f1;
	color: #3d3d3d;
	height:700px;
}

.s6 {
	background: #161616;
	height:700px
}


#slideshow DIV {
	position:absolute;
	top:0;
	left:0;
	z-index:8;
	opacity:0.0;
	height: 500px;
	background-color: #FFF;
	border-bottom:2px solid #A5BE2E;


}

#slideshow DIV.active {
    z-index:10;
    opacity:1.0;
}

#slideshow DIV.last-active {
    z-index:9;
	
}

#slideshow DIV IMG {
    height: 215px;
	width:903px;
    display: block;
    border: 0;
    margin-bottom: 10px;
	/* Set rules to fill background */
  min-height:500px;
  min-width: 960px;
  /* Set up proportionate scaling */
  width: 100%;
  /* Set up positioning */
  position: fixed;
  top: 0;
  left: 0;

}
.error {
	color:black;
	font-family:Gotham, "Helvetica Neue", Helvetica, Arial, sans-serif;
	padding-left:4px;
	line-height:24px;
	font-size:16px;
	
}



