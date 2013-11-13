Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Partial Class Admin_ManageTorrents
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim UpPath As String
        Dim UpName As String
        UpPath = "C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\UploadedTorrents"
        UpName = Dir(UpPath, vbDirectory)
        If (UpName = "") Then
            MkDir("C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\UploadedTorrents\")

        End If

        Dim ImageUpPath As String
        Dim ImageUpName As String
        ImageUpPath = "C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\TorrentImage"
        ImageUpName = Dir(ImageUpPath, vbDirectory)
        If (ImageUpName = "") Then
            MkDir("C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\TorrentImage\")
        End If



    End Sub

    Protected Sub UploadButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles UploadButton.Click
        FileName.InnerHtml = System.IO.Path.GetFileName(Me.FileUpload1.PostedFile.FileName)
        FileContent.InnerHtml = Me.FileUpload1.PostedFile.ContentType
        FileSize.InnerHtml = Me.FileUpload1.PostedFile.ContentLength
        UploadDetails.Visible = True

        Dim MyFileName As String
        MyFileName = Me.FileUpload1.PostedFile.FileName
        Dim c As String = System.IO.Path.GetFileName(MyFileName)
        Try
            FileUpload1.PostedFile.SaveAs("C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\UploadedTorrents\" + c)
            span1.InnerHtml = "Torrent Upload Successful."
            Me.UploadLabel.Text = "C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\UploadedTorrents\" + c
        Catch ex As Exception
            span1.InnerHtml = "Torrent Upload FAILED."
            UploadDetails.Visible = False
        End Try

       
    End Sub

    Protected Sub UploadImageButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles UploadImageButton.Click
        ImageName.InnerHtml = System.IO.Path.GetFileName(Me.FileUpload2.PostedFile.FileName)
        ImageContent.InnerHtml = Me.FileUpload2.PostedFile.ContentType
        ImageSize.InnerHtml = Me.FileUpload2.PostedFile.ContentLength
        ImageDetails.Visible = True

        Dim MyFileName As String
        MyFileName = Me.FileUpload2.PostedFile.FileName
        Dim c As String = System.IO.Path.GetFileName(MyFileName)
        Try
            FileUpload2.PostedFile.SaveAs("C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\TorrentImage\" + c)
            span2.InnerHtml = "Image Upload Successful."
            Me.ImageLabel.Text = "C:\Users\Ali Bahaloo\Documents\Visual Studio 2008\WebSites\TorrentWebApp\TorrentImage\" + c
        Catch ex As Exception
            span2.InnerHtml = "Image Upload FAILED."
            ImageDetails.Visible = False
        End Try
    End Sub

    Protected Sub DetailsView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting
        Me.AdminUploadObjectDataSource.InsertParameters("TorrentPath").DefaultValue = Me.UploadLabel.Text
        Me.AdminUploadObjectDataSource.InsertParameters("ImagePath").DefaultValue = Me.ImageLabel.Text
        Me.AdminUploadObjectDataSource.InsertParameters("UploadedDate").DefaultValue = DateTime.Now
    End Sub
End Class
