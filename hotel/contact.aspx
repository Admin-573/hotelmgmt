<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="hotel_contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Panel</title>
</head>
<style type="text/css">
    .btn {
        border: 2px solid #ccc;
        border-radius:4px;
        background-color: white;
        color: black;
        margin-left:12px;
        padding:12px;
        font-family:Times New Roman;
        font-size:18px;
        cursor: pointer;
    }
    .panel
    {
        border-color: black;
        color: black;
    }
    .panel:hover 
    {
        background-color: black;
        color: white;
    }
    textarea 
    {
      margin-left:12px;
      margin-bottom:12px;
      width: 100%;
      height: 150px;
      padding: 12px 18px;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
      background-color: #f8f8f8;
      font-size: 16px;
      resize: none;
    }
    .text_des
    {
        border:2px solid #ccc;
        border-radius:4px;
        padding-left:8px;
        padding-top:8px;
        padding-bottom:8px;
        padding-right:52px;
        margin-left:12px;
        margin-right:12px;
        margin-top:4px;
        margin-bottom:18px;
    }
    .text_des_ddi
    {
        border:2px solid #ccc;
        border-radius:4px;
        padding-right:68px;
        padding-left:8px;
        padding-top:8px;
        padding-bottom:8px;
        margin-left:12px;
        margin-right:12px;
        margin-top:4px;
        margin-bottom:12px;
    }
    
    .text_des_ddb
    {
        border:2px solid #ccc;
        border-radius:4px;
        padding-right:120px;
        padding-left:8px;
        padding-top:8px;
        padding-bottom:8px;
        margin-left:12px;
        margin-right:12px;
        margin-top:4px;
        margin-bottom:12px;
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
          <a class="active" href="contact.aspx">Contact</a>
          <a href="about.aspx">About</a>
        </div>

        <center>
            <table>

                <div>
                    <h1>Love to hear from you , </br> Get in touch👋</h1>
                </div>

                <tr>
                    <td>
                        <label style="margin-left:12px ; font-weight:bold">
                            Your name
                        </label>
                    </td>
                    <td>
                        <label style="margin-left:12px ; font-weight:bold">
                            Your email
                        </label>
                    </td>     
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="cname" runat="server" CssClass=text_des placeholder="Enter Your Name" required></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="cmail" runat="server" CssClass=text_des placeholder="you@example.com" required></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label style="margin-left:12px ; font-weight:bold">
                            What you are interested
                        </label>
                    </td>
                    <td>
                        <label style="margin-left:12px ; font-weight:bold">
                            Project Budget
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="cwork" runat="server" CssClass=text_des_ddi required>
                            <asp:ListItem>Website Development</asp:ListItem>
                            <asp:ListItem>Website Design</asp:ListItem>
                            <asp:ListItem>App Development</asp:ListItem>
                            <asp:ListItem>App Design</asp:ListItem>
                            <asp:ListItem>Java Source Codes</asp:ListItem>
                            <asp:ListItem>Python Source Codes</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="cbudget" runat="server" CssClass=text_des_ddb required>
                            <asp:ListItem>5000-10000</asp:ListItem>
                            <asp:ListItem>10000-15000</asp:ListItem>
                            <asp:ListItem>15000-20000</asp:ListItem>
                            <asp:ListItem>20000-25000</asp:ListItem>
                            <asp:ListItem>25000-30000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label style="margin-left:12px ; font-weight:bold">
                            Message 
                        </label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <textarea id="cdetail" placeholder="Let tell us know your project about" required></textarea>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btn_send_data" runat="server" Text="Just Send" CssClass="btn panel"/>
                    </td>
                </tr>

            </table>
        </center>
    
        </form>
    </body>
</html>
