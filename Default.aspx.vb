
Partial Class _Default
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.GridView1.Sort("UploadedDate", SortDirection.Descending)
    End Sub
End Class
