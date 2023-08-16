<%@ Page Language="VB" AutoEventWireup="false" CodeFile="about.aspx.vb" Inherits="hotel_about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About Panel</title>
</head>
<style>
        .img_photo{
            margin-top: 20px;
            border-radius: 50%;
        }
        
        .card {
            color:black;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 8px 0 black;
            max-width: 300px;
            margin-top: 30px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            text-align: center;
            font-family: arial;
            }
            a {
            text-decoration: none;
            font-size: 22px;
            color: black;
            }

            button:hover, a:hover {
            opacity: 0.7;
            }
        .box_left{
            color: white;
            background-color: #04AA6D;
            height: 450px;
            width: 380px;
            margin-left: 25px;
            margin-top:12px;
            margin-bottom:12px;
            border: 4px solid #04AA6D;
            border-radius: 25px;
        }

    .topnav 
    {
      border-radius:12px;
      overflow: hidden;
      background-color: #333;
      margin:auto;
      width:695.3px;
    }

    .topnav a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .topnav a:hover {
      background-color: #ddd;
      color: black;
    }

    .topnav a.active {
      background-color: #04AA6D;
      color: white;
    }
    </style>
<body>
    <form id="form1" runat="server">
    <div class="topnav">
      <a style="margin-right:100px ; background-color:#333 ; color:White">Hotel Management System</a>
      <a href="Home.aspx">Home</a>
      <a href="data.aspx">Data</a>
      <a href="Update.aspx">Update</a>
      <a href="contact.aspx">Contact</a>
      <a class="active" href="about.aspx">About</a>
    </div>

    <center>
    <table>
        <tr>
            <td>
                <div class="box_left">
                    <div class="card">
                        <img src="images/user.jpg" width=150px class="img_photo">
                        <div style="text-align:center ; font-family:Comic Sans MS ">
                            <p style="margin-left:30px ; margin-right:30px">Kevat Rajat</p>
                            <p style="font-family:Comic Sans MS ">TYBCA-5</p>
                            <p style="font-family:Comic Sans MS ">Roll No 573</p> 
                            <p style="font-family:Comic Sans MS ">Sutex Bank College Of Computer Applications & Science</p>
                            <p></br></p>
                        </div>
                    </div>           
                </div>
            </td>
            <td>
                <div class="box_left">
                    <div class="card">
                        <img src="images/used.jpg" width=150px class="img_photo">
                        <div style="text-align:center ; font-family:Comic Sans MS ">
                            </br>
                            <p style="margin-left:30px ; margin-right:30px ; font-size:"24px">What I Used ?</p>
                            <a href="https://github.com/" style="color:Green">Github.com</a></br></br>
                            <a href="https://www.w3schools.com/" style="color:Green">w3schools.com</a></br></br>
                        </div>
                    </div>           
                </div>
            </td>
        </tr>
    </table>
    </center>

    <center>
      <div style="font-family:Comic Sans MS">

        <div>
            <a style="padding:12px ; margin:12px" href="https://www.facebook.com/rajat.kevat.7">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb33.png" />
            </a>

            <a style="padding:12px ; margin:12px" href="https://www.linkedin.com/in/rajat-kevat-97340a252/">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb34.png"/>
            </a>

            <a style="padding:12px ; margin:12px" href="https://www.instagram.com/rajatt.dev/">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb35.png"/>
            </a>

            <a style="padding:12px ; margin:12px" href="https://api.whatsapp.com/send?phone=919327998218&text=Hi%20">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb36.png"/>
            </a>
          </div>

       </div>
    </center>
    </form>
</body>
</html>

