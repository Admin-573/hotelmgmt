Imports System.Data.SqlClient
Imports System.Data

Partial Class hotel_data
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim ad_rooms, ad_emp As SqlDataAdapter
    Dim ds_rooms, ds_emp As DataSet


    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        connection()

        ad_rooms = New SqlDataAdapter("Select rid,rtype,rfee from rooms", con)
        ds_rooms = New DataSet
        Try
            ad_rooms.Fill(ds_rooms)
            GridView_rooms.DataSource = ds_rooms.Tables(0)
            GridView_rooms.DataBind()
        Catch ex As Exception
            'MsgBox("Room Table Empty !")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Room Table Empty 🫗')</script>"))
        End Try

        ad_emp = New SqlDataAdapter("select eid,ename,esalary,erole from emp", con)
        ds_emp = New DataSet
        Try
            ad_emp.Fill(ds_emp)
            GridView_emp.DataSource = ds_emp.Tables(0)
            GridView_emp.DataBind()
        Catch ex As Exception
            'MsgBox("Emp Table Empty !")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Employee Table Empty 🥸')</script>"))
        End Try
    End Sub
End Class
