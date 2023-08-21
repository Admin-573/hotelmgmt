<%@ Page Language="VB" AutoEventWireup="false" CodeFile="data.aspx.vb" Inherits="hotel_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Data Panel</title>
</head>
<style>
    
    .hyp_upd
    {
        text-decoration:none;
        border:2px solid Green;
        font-size:18px;
        margin-top:8px;
        margin-bottom:4px;
        padding:4px;
        border-radius:4px;
        cursor:pointer;
    }
    .hyp_upd_des
    {
        border-color: Green;
        color: Green;
    }
    .hyp_upd_des:hover
    {
        background-color: Green;
        color: white;
    }

    .hyp_del
    {
        text-decoration:none;
        border:2px solid Red;
        font-size:18px;
        margin-top:8px;
        margin-bottom:4px;
        padding:4px;
        border-radius:4px;
        cursor:pointer;
    }
    .hyp_del_des
    {
        border-color: Red;
        color: Red;
    }
    .hyp_del_des:hover
    {
        background-color: Red;
        color: white;
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
      <a class="active" href="data.aspx">Data</a>
      <a href="Update.aspx">Update</a>
      <a href="contact.aspx">Contact</a>
      <a href="about.aspx">About</a>
    </div>

    <center>
    <table cellspacing="12px">
        <tr>
            <td>
                <h2>Update And Delete Data Of Rooms ~</h2>
                <asp:GridView ID="GridView_rooms" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="8" CellSpacing="4">

                    <Columns>

                        <asp:BoundField DataField="rid" HeaderText="Room ID" />
                        <asp:BoundField DataField="rtype" HeaderText="Room Type" />
                        <asp:BoundField DataField="rfee" HeaderText="Room Fee" />

                        <asp:HyperLinkField ControlStyle-CssClass="hyp_upd hyp_upd_des" NavigateUrl="~/hotel/Update.aspx" 
                            Text="Update" DataNavigateUrlFields="rid" 
                            DataNavigateUrlFormatString="~/hotel/Update.aspx?rid={0}" />

                        <asp:HyperLinkField ControlStyle-CssClass="hyp_del hyp_del_des" DataNavigateUrlFields="rid" 
                            DataNavigateUrlFormatString="~/hotel/Delete.aspx?rid={0}" Text="Delete" />

                    </Columns>

                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />

                </asp:GridView>
            </td>
            
            <td>
                <h2>Update And Delete Data Of Employees ~</h2>
                <asp:GridView ID="GridView_emp" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="8" CellSpacing="4">

                    <Columns>

                        <asp:BoundField DataField="eid" HeaderText="Emp ID" />
                        <asp:BoundField DataField="ename" HeaderText="Emp Name" />
                        <asp:BoundField DataField="esalary" HeaderText="Emp Salary" />
                        <asp:BoundField DataField="erole" HeaderText="Emp Designation" />

                        <asp:HyperLinkField ControlStyle-CssClass="hyp_upd hyp_upd_des" NavigateUrl="~/hotel/Update.aspx" 
                            Text="Update" DataNavigateUrlFields="eid"
                            DataNavigateUrlFormatString="~/hotel/Update.aspx?eid={0}" >
                        </asp:HyperLinkField>

                        <asp:HyperLinkField ControlStyle-CssClass="hyp_del hyp_del_des" DataNavigateUrlFields="eid"
                            DataNavigateUrlFormatString="~/hotel/Delete.aspx?eid={0}" Text="Delete" />

                    </Columns>

                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />

                </asp:GridView>
            </td>
        </tr>
    </table>
    </center>
    </form>
</body>
</html>
