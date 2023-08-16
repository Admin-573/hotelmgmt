<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="hotel_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home Panel</title>
</head>
<style>
    .topnav 
    {
      border-radius:10px;
      overflow: hidden;
      background-color: #333;
      margin:auto;
      width:784.5px;
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
    .box 
    {
      background-color: #ccc;
      height:100%;
      width: 50%;
      border: 2px solid #ccc;
      border-radius:8px;
    }
    .text_des
    {
        border:none;
        border-style:groove;
        border-radius:8px;
        padding-top:4px;
        padding-bottom:4px;
        padding-right:12px;
        padding-left:12px;
        margin-top:12px;
        width:120px;
        margin-left:25px;
    }
    .select_des
    {
        border:none;
        border-style:groove;
        border-radius:8px;
        padding-top:4px;
        padding-bottom:4px;
        padding-right:12px;
        padding-left:12px;
        margin-top:12px;
        margin-left:4px;
    }
    .button 
        {
            margin-top:20px;
            margin-bottom:20px;
            font-family: "Comic Sans MS";
            border: 2px solid black;
            border-radius: 12px;
            background-color: white;
            color: black;
            padding: 4px 14px;
            font-size: 16px;
            cursor: pointer;
        }
        .des {
            border-color: black;
            color: black;
        }.des:hover {
             background-color: black;
             color: white;
        }
</style>
<body>
    <form id="form1" runat="server">
    <div class="topnav">
      <a style="margin-right:100px ; background-color:#333 ; color:White">Hotel Management System</a>
      <a class="active" href="Home.aspx">Home</a>
      <a href="data.aspx">Data</a>
      <a href="Update.aspx">Update</a>
      <a href="contact.aspx">Contact</a>
      <a href="about.aspx">About</a>
      <a href="Registration.aspx">Log Out</a>
    </div>

    <center>
    <table cellspacing="18px">
        <tr>
            <td class=box>
                <div>
                    <img src="images/hotel.jpg" width="300px" style="border-radius:12px  ; margin-bottom:12px ; margin-left:40px"/>
                </div>
                <div>
                    <fieldset style="border-radius:4px ; margin-left:32px; margin-right:32px; margin-bottom:32px ; border-color:Black ; border-width:4px ; text-align:center ;">
                        <legend style="text-align:center">
                            <fieldset style="border-radius:4px ; border-color:white ; border-width:4px ; font-weight:bold">Add Rooms Here</fieldset>
                        </legend>
                        
                        Enter Room ID
                        <asp:TextBox ID="rid" runat="server" CssClass=text_des></asp:TextBox>

                        </br>

                        Choose Room Type
                        <asp:DropDownList ID="rtype" runat="server" CssClass=select_des style="margin-right:4px">
                            <asp:ListItem>Single-AC</asp:ListItem>
                            <asp:ListItem>Double-AC</asp:ListItem>
                            <asp:ListItem>Single-Non-AC</asp:ListItem>
                            <asp:ListItem>Double-Non-AC</asp:ListItem>
                            <asp:ListItem>Villa</asp:ListItem>
                            <asp:ListItem>Twin</asp:ListItem>
                        </asp:DropDownList>

                        </br>

                        Enter Room Fee
                        <asp:TextBox ID="rfee" runat="server" CssClass=text_des></asp:TextBox>

                        </br>

                        <asp:Button ID="btn_book_now" runat="server" Text="Add Rooms" CssClass="button des"/>

                    </fieldset>
                </div>
            </td>

            <td class=box>
                <div>
                    <fieldset style="border-radius:4px ;  margin-left:32px; margin-right:32px; margin-bottom:32px ; margin-top:32px ; border-color:Black ; border-width:4px ; text-align:center">
                        <legend style="text-align:center">
                            <fieldset style="border-radius:4px ;border-color:white ; border-width:4px ; font-weight:bold">Add Employee Here</fieldset>
                        </legend>

                        Give Emp-ID
                        <asp:TextBox ID="eid" runat="server" CssClass=text_des style="margin-right:12px"></asp:TextBox>

                        </br>

                        Enter Name
                        <asp:TextBox ID="ename" runat="server" CssClass=text_des style="margin-left:28px"></asp:TextBox>

                        </br>

                        Enter Salary
                        <asp:TextBox ID="salary" runat="server" CssClass=text_des></asp:TextBox>

                        </br>

                        Choose Emp Role
                        <asp:DropDownList ID="empDes" runat="server" CssClass=select_des style="margin-right:4px">
                            <asp:ListItem>Waiter</asp:ListItem>
                            <asp:ListItem>Shef</asp:ListItem>
                            <asp:ListItem>Finance Staff</asp:ListItem>
                            <asp:ListItem>Cleaning Staff</asp:ListItem>
                            <asp:ListItem>Service-Men</asp:ListItem>
                            <asp:ListItem>Worker</asp:ListItem>
                        </asp:DropDownList>

                        </br>

                        <asp:Button ID="btn_add_emp" runat="server" Text="Add Employee" CssClass="button des" />

                    </fieldset>
                    <img src="images/emp.png" width="300px" style="margin-left:40px"/>
                </div>
            </td>
        </tr>
    </table>
    </center>
    </form>
</body>
</html>