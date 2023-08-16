Imports System.Data
Imports System.Data.SqlClient
Partial Class hotel_Registration
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub createTable()
        cmd = New SqlCommand("create table admin (fname varchar(32) not null , lname varchar(32) not null,email varchar(128) primary key,mno bigint unique not null,gender varchar(12),password varchar(32) not null )", con)
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            ' MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub insertData()
        cmd = New SqlCommand("insert into admin values(@fname,@lname,@email,@mno,@gender,@password)", con)
        Try
            cmd.Parameters.AddWithValue("@fname", Reg_fname.Text.Trim)
            cmd.Parameters.AddWithValue("@lname", Reg_lname.Text.Trim)
            cmd.Parameters.AddWithValue("@email", Reg_email.Text.Trim)
            cmd.Parameters.AddWithValue("@mno", Convert.ToInt64(Reg_phone.Text.Trim))
            cmd.Parameters.AddWithValue("@gender", Reg_gender.SelectedValue)
            cmd.Parameters.AddWithValue("@password", Reg_pass.Text.Trim)
            cmd.ExecuteNonQuery()
            MsgBox("Successfully registered")
            Response.Redirect("~/hotel/Login.aspx")
        Catch 
        End Try
    End Sub

    Protected Sub getdata()
        cmd = New SqlCommand("select email,mno from admin where email = @email and mno = @mno", con)
        cmd.Parameters.AddWithValue("@email", Reg_email.Text.Trim)
        cmd.Parameters.AddWithValue("@mno", Convert.ToInt64(Reg_phone.Text.Trim))
        ad = New SqlDataAdapter(cmd)
        ds = New DataSet()
        Try
            ad.Fill(ds)
            Dim email As String = ds.Tables(0).Rows(0).Item(0).ToString
            Dim mno As String = ds.Tables(0).Rows(0).Item(1).ToString

            If email.Trim = Reg_email.Text.Trim And mno.Trim = Reg_phone.Text.Trim Then
                MsgBox("Email: " & email & " Exists In System !" & vbCrLf & vbCrLf & "Phone: " & mno & " Exists In System !", MsgBoxStyle.Information, "Information")
            End If
        Catch
            insertData()
        End Try
    End Sub


    Protected Sub clearData()
        Reg_fname.Text = ""
        Reg_lname.Text = ""
        Reg_email.Text = ""
        Reg_phone.Text = ""
        Reg_pass.Text = ""
    End Sub

    Protected Sub btnReg_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnReg.Click
        connection()
        createTable()
        getdata()
    End Sub
End Class
