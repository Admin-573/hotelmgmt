Imports System.Data.SqlClient
Imports System.Data

Partial Class hotel_Login
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim email As String


    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub getData()
        cmd = New SqlCommand("select email,password from admin where email = @email ", con)
        cmd.Parameters.AddWithValue("@email", Log_Email.Text.Trim)

        ad = New SqlDataAdapter(cmd)
        ds = New DataSet()

        Try
            ad.Fill(ds)
            Dim adminMail As String = ds.Tables(0).Rows(0).Item(0).ToString
            Dim admiPasswd As String = ds.Tables(0).Rows(0).Item(1).ToString

            If adminMail.Trim = Log_Email.Text.Trim And admiPasswd.Trim = Log_Pass.Text.Trim Then
                MsgBox("Successfully Login")
                Response.Redirect("~/hotel/Home.aspx")
            ElseIf adminMail.Trim = Log_Email.Text.Trim And admiPasswd <> Log_Pass.Text.Trim Then
                MsgBox("Password wrong !!")
            End If
        Catch 
        End Try
    End Sub

    Protected Sub Btn_Login_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Btn_Login.Click
        connection()
        getData()
    End Sub
End Class
