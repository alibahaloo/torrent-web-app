
Partial Class RedirectionPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.IsInRole("admin") Then
            Response.Redirect("../Admin/default.aspx")
        Else
            Response.Redirect("../CP/default.aspx")
        End If
    End Sub
End Class
