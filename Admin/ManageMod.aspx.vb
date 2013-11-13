
Partial Class Admin_CreateMod
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.TextLabel.Visible = False
        Me.UserLabel.Visible = False

        If Page.IsPostBack = False Then '
            Me.ToolsRadioButtonList.SelectedIndex = 0
            Me.UsersDropDownList.SelectedIndex = 0
            UsersDropDownList.DataMember = "UserName"
            UsersDropDownList.DataSource = Membership.GetAllUsers()
            UsersDropDownList.DataBind()
        End If
    End Sub
    Protected Sub CreateUserWizard1_CreatedUser(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.CreatedUser
        Me.UserLabel.Visible = True
        Me.UserLabel.Text = Me.CreateUserWizard1.UserName.ToString
        Me.TextLabel.Visible = True
    End Sub
    Protected Sub CreateUserWizard1_ContinueButtonClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ContinueButtonClick
        Roles.AddUserToRole(Me.UserLabel.Text, "cp")
    End Sub

    Protected Sub ToolsRadioButtonList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ToolsRadioButtonList.SelectedIndexChanged
        If Me.ToolsRadioButtonList.SelectedIndex = 0 Then
            Me.CreateUserWizard1.Visible = True
            Me.CreateLabel.Visible = True
            Me.UsersDropDownList.Visible = False
            Me.DeleteHeaderLabel.Visible = False
            Me.DeleteButton.Visible = False
        End If
        If Me.ToolsRadioButtonList.SelectedIndex = 1 Then
            Me.CreateUserWizard1.Visible = False
            Me.CreateLabel.Visible = False
            Me.UsersDropDownList.Visible = True
            Me.DeleteHeaderLabel.Visible = True
            Me.DeleteButton.Visible = True
            UsersDropDownList.DataMember = "UserName"
            UsersDropDownList.DataSource = Membership.GetAllUsers()
            UsersDropDownList.DataBind()
        End If
    End Sub


    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles DeleteButton.Click

        Membership.DeleteUser(Me.UsersDropDownList.SelectedValue)
        Me.DeleteHeaderLabel.Visible = True
        UsersDropDownList.DataMember = "UserName"
        UsersDropDownList.DataSource = Membership.GetAllUsers()
        UsersDropDownList.DataBind()
    End Sub
End Class
