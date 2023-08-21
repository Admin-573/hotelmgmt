Imports System.Data.SqlClient
Imports System.Data

Partial Class hotel_Home
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim ad As SqlDataAdapter
    Dim getRid As Integer

    Protected Sub Connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub createTable_rooms()
        cmd = New SqlCommand("create table rooms(rid int primary key,rtype varchar(128),rfee varchar(128))", con)
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            'MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub clearfields_rooms()
        rid.Text = ""
        rfee.Text = ""

    End Sub

    Protected Sub insertData_rooms()
        cmd = New SqlCommand("insert into rooms values(@rid,@rtype,@rfee)", con)
        Try
            cmd.Parameters.AddWithValue("@rid", Convert.ToInt64(rid.Text.Trim))
            cmd.Parameters.AddWithValue("@rtype", rtype.SelectedValue)
            cmd.Parameters.AddWithValue("@rfee", rfee.Text.Trim)
            cmd.ExecuteNonQuery()
            'MsgBox("Room Added Successfully")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Room Added Successfully 🏠')</script>"))
        Catch ex As Exception
            'MsgBox("Room Already Exists !")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('⚠️ Room Already Exist')</script>"))
        End Try
    End Sub

    Protected Sub createTable_emp()
        cmd = New SqlCommand("create table emp(eid int primary key,ename varchar(128),esalary varchar(128),erole varchar(128))", con)
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            'MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub clearfields_emp()
        eid.Text = ""
        ename.Text = ""
        salary.Text = ""
    End Sub

    Protected Sub insertData_emp()
        cmd = New SqlCommand("insert into emp values(@eid,@ename,@esalary,@erole)", con)
        Try
            cmd.Parameters.AddWithValue("@eid", Convert.ToInt64(eid.Text.Trim))
            cmd.Parameters.AddWithValue("@ename", ename.Text.Trim)
            cmd.Parameters.AddWithValue("@esalary", salary.Text.Trim)
            cmd.Parameters.AddWithValue("@erole", empDes.SelectedValue)
            cmd.ExecuteNonQuery()
            'MsgBox("Emp Added Successfully")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Employee Added Successfully 👨‍💻')</script>"))
        Catch ex As Exception
            'MsgBox("Emp Already Exsits !")
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('⚠️ Employee Already Exists')</script>"))
        End Try
    End Sub

    Protected Sub btn_book_now_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_book_now.Click
        Connection()
        createTable_rooms()
        insertData_rooms()
        clearfields_rooms()
    End Sub

    Protected Sub btn_add_emp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_add_emp.Click
        Connection()
        createTable_emp()
        insertData_emp()
        clearfields_emp()
    End Sub

End Class
