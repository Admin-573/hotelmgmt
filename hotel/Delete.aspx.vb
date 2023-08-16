Imports System.Data.SqlClient
Imports System.Data

Partial Class hotel_Delete
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd_rooms, cmd_emp As SqlCommand

    Protected Sub Connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Connection()

        Dim getRid As Integer = Convert.ToInt32(Request.QueryString("rid"))

        If getRid > 0 Then
            cmd_rooms = New SqlCommand("delete from rooms where rid = " & getRid & " ", con)

            Try
                cmd_rooms.ExecuteNonQuery()
                MsgBox("Room Deleted Successfully")
                Response.Redirect("~/hotel/data.aspx")
            Catch
            End Try
        Else
            Dim getEid As Integer = Convert.ToInt32(Request.QueryString("eid"))
            cmd_emp = New SqlCommand("delete from emp where eid = " & getEid & " ", con)

            Try
                cmd_emp.ExecuteNonQuery()
                MsgBox("Emp Deleted Successfully")
                Response.Redirect("~/hotel/data.aspx")
            Catch
            End Try
        End If

    End Sub
End Class
