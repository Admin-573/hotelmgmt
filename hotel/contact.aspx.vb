
Partial Class hotel_contact
    Inherits System.Web.UI.Page

    Protected Sub clearFields()
        cname.Text = ""
        cmail.Text = ""
    End Sub

    Protected Sub btn_send_data_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_send_data.Click
        Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Thanks For Contacting Us ❤️')</script>"))
        clearFields()
    End Sub
End Class
