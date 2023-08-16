<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="hotel_Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        Admin Registration Page
    </title>
    <style>
        body 
        {
            font-family: "Comic Sans MS"; 
        }
        
        .field
        {
            padding-top:8px;
            padding-bottom:8px;
            padding-left:12px;
            padding-right:12px;
            border-radius:12px;
            
        }
        .gender
        {
            padding-top:8px;
            padding-bottom:8px;
            padding-left:12px;
            padding-right:115px;
            border-radius:12px;
            border: 2px solid;
            
        }
        .button 
        {
            margin-top:10px;
            font-family: "Comic Sans MS";
            border: 2px solid black;
            border-radius: 12px;
            background-color: white;
            color: black;
            padding: 7px 14px;
            font-size: 16px;
            cursor: pointer;
        }
        .des {
            border-color: purple;
            color: purple;
        }.des:hover {
             background-color: purple;
             color: white;
        }
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <h1 style="text-align:center">Welcome To Hotel Management System ~</h1>
            <table style="margin-top:30px">
                <tr>
                    <td style="font-size:18px ; text-align:center">
                        ~ Register Your Details
                    </td>
                </tr>
                <tr>
                    <td style="font-size:28px ; text-align:center">
                        Create New Account Here 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Reg_fname" runat="server" style="margin-top:24px ; margin-right:8px" CssClass="field" placeholder="Enter Fname" required></asp:TextBox>                  
                        <asp:TextBox ID="Reg_lname" runat="server" CssClass=field placeholder="Enter Lname" required></asp:TextBox>                  
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Reg_email" runat="server" style="margin-top:8px ; margin-right:8px" CssClass=field placeholder="Create Email" required></asp:TextBox>
                        <asp:TextBox ID="Reg_pass" runat="server" style="margin-top:8px" CssClass=field placeholder="Strong Password !" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Reg_phone" runat="server" style="margin-top:8px ; margin-right:8px" CssClass=field placeholder="Valid Phone No !" required></asp:TextBox>
                        <asp:DropDownList ID="Reg_gender" runat="server" CssClass=gender>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Button ID="btnReg" runat="server" Text="Create Account" CssClass="button des"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        ~ Already A Admin ? <a href="Login.aspx" style="color:blue ; text-decoration:none">Log In</a>
                    </td>                    
                </tr> 
            </table>
            <div>
                <img src="images\back.png" width="100%" height="190px"/> 
            </div>
    </form>
</center>
</body>
</html>