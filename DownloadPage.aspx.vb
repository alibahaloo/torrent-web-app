
Partial Class DownloadPage
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click


        Dim FileName As String
        FileName = System.IO.Path.GetFileName(Me.DLLabel.Text)
        Response.Redirect("../TorrentWebApp/UploadedTorrents/" + FileName)
    End Sub

    Protected Sub ImageDropDownList_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ImageDropDownList.DataBound
        Me.ImageDropDownList.SelectedIndex = 0
        Me.ImageLabel.Text = Me.ImageDropDownList.SelectedItem.Text
        Me.ImageDropDownList.Visible = False

        Dim ImageName As String
        ImageName = System.IO.Path.GetFileName(Me.ImageLabel.Text)
        Me.DownloadImage.ImageUrl = "../TorrentWebApp/TorrentImage/" + ImageName

    End Sub

    Protected Sub DLDropDownList_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles DLDropDownList.DataBound
        Me.DLDropDownList.SelectedIndex = 0
        Me.DLLabel.Text = Me.DLDropDownList.SelectedItem.Text
        Me.DLDropDownList.Visible = False

    End Sub
End Class
