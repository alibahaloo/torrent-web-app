
Partial Class SearchResult
    Inherits System.Web.UI.Page
    Protected Sub SearchButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SearchButton.Click
        Me.SearchLabel.Text = "You Have Searched For " + Me.TextBox1.Text
    End Sub
End Class
