<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="hotel_contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Panel</title>
</head>
<style>
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
      <a class="active" href="contact.aspx">Contact</a>
      <a href="about.aspx">About</a>
    </div>
    </form>
</body>
</html>
