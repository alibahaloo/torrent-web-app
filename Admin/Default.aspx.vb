
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Label1.Text = Membership.GetUser.LastLoginDate.ToString
    End Sub
End Class
