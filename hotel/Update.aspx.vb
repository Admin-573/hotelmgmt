Imports System.Data.SqlClient
Imports System.Data

Partial Class hotel_Update
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ds_rooms, ds_emp As DataSet
    Dim ad_rooms, ad_emp As SqlDataAdapter

    Protected Sub Connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

   

    Protected Sub btn_update_room_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update_room.Click
        Connection()
        Dim getRid As Integer = Convert.ToInt32(Request.QueryString("rid"))
        cmd = New SqlCommand("update rooms set rtype=@rtype , rfee=@rfee where rid=" & getRid & " ", con)
        cmd.Parameters.AddWithValue("@rtype", upd_rtype.SelectedValue)
        cmd.Parameters.AddWithValue("@rfee", upd_rfee.Text.Trim)
        Try

            cmd.ExecuteNonQuery()
            MsgBox("Rooms Updated !")
            Response.Redirect("data.aspx")
        Catch ex As Exception
            MsgBox("CheckOut !")
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Connection()

        Dim getRid As Integer = Convert.ToInt32(Request.QueryString("rid"))
        Dim getEid As Integer = Convert.ToInt32(Request.QueryString("eid"))

        If getRid > 0 Then
            ad_rooms = New SqlDataAdapter("select * from rooms where rid=" & getRid & " ", con)
            ds_rooms = New DataSet
            Try
                ad_rooms.Fill(ds_rooms)
                If IsPostBack = False Then
                    rid.Text = ds_rooms.Tables(0).Rows(0).Item(0)
                    upd_rtype.SelectedValue = ds_rooms.Tables(0).Rows(0).Item(1).ToString
                    upd_rfee.Text = ds_rooms.Tables(0).Rows(0).Item(2).ToString
                End If
            Catch ex As Exception
                MsgBox("No Rooms Updated Yet !")
            End Try
        ElseIf getEid > 0 Then
            ad_emp = New SqlDataAdapter("select * from emp where eid=" & getEid & "", con)
            ds_emp = New DataSet
            Try
                ad_emp.Fill(ds_emp)
                If IsPostBack = False Then
                    eid.Text = ds_emp.Tables(0).Rows(0).Item(0)
                    ename.Text = ds_emp.Tables(0).Rows(0).Item(1).ToString
                    salary.Text = ds_emp.Tables(0).Rows(0).Item(2).ToString
                    empDes.SelectedValue = ds_emp.Tables(0).Rows(0).Item(3).ToString
                End If
            Catch ex As Exception
                MsgBox("No Employee Updated Yet !")
            End Try
        Else
            MsgBox("You Not Selected which Data You Want To Update !")
            Response.Redirect("data.aspx")
        End If
    End Sub

    Protected Sub btn_update_emp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update_emp.Click
        Connection()
        Dim getEid As Integer = Convert.ToInt32(Request.QueryString("eid"))
        cmd = New SqlCommand("update emp set ename=@ename , esalary=@esalary , erole=@erole where eid=" & getEid & " ", con)
        cmd.Parameters.AddWithValue("@ename", ename.Text.Trim)
        cmd.Parameters.AddWithValue("@esalary", salary.Text.Trim)
        cmd.Parameters.AddWithValue("@erole", empDes.SelectedValue)
        Try
            cmd.ExecuteNonQuery()
            MsgBox("Employee Updated !")
            Response.Redirect("data.aspx")
        Catch ex As Exception
            MsgBox("CheckOut !")
        End Try
    End Sub
End Class
