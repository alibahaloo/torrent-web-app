
Partial Class Admin_ChangePassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Label1.Text = Membership.GetUser.LastPasswordChangedDate.ToString
    End Sub
End Class
