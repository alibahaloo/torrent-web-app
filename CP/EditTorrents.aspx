<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EditTorrents.aspx.vb" Inherits="Admin_EditTorrents" title="Admin Control Panel | Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        DataKeyNames="ID" DataSourceID="EditTorrentsObjectDataSource" ForeColor="Black" 
        Height="50px" Width="500px">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="Title" HeaderText="Title" 
                SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category"/>
            <asp:BoundField DataField="UploadedDate" HeaderText="UploadedDate" 
                SortExpression="Uploaded Date" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="PublishedDate" HeaderText="PublishedDate" 
                SortExpression="Published Date" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="AudioQuality" HeaderText="Audio Quality" 
                SortExpression="AudioQuality" />
            <asp:BoundField DataField="AudioFormat" HeaderText="Audio Format" 
                SortExpression="AudioFormat" />
            <asp:BoundField DataField="PlayTime" HeaderText="Play Time" 
                SortExpression="PlayTime" />
            <asp:BoundField DataField="Language" HeaderText="Language" 
                SortExpression="Language" />
            <asp:BoundField DataField="Producer" HeaderText="Producer" 
                SortExpression="Producer" />
            <asp:BoundField DataField="Narrator" HeaderText="Narrator" 
                SortExpression="Narrator" />
            <asp:BoundField DataField="DownloadCount" HeaderText="DownloadCount" 
                SortExpression="DownloadCount" />
            <asp:BoundField DataField="TorrentPath" HeaderText="TorrentPath" 
                SortExpression="TorrentPath" />
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" 
                SortExpression="ImagePath" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <i>*note: date format: MM/DD/YYYY</i><br />
    <asp:ObjectDataSource ID="EditTorrentsObjectDataSource" runat="server" 
        DeleteMethod="Delete" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" 
        TypeName="LiteDataSetTableAdapters.TorrentDetailsTableAdapter" 
        InsertMethod="Insert" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="UploadedDate" Type="DateTime" />
            <asp:Parameter Name="PublishedDate" Type="DateTime" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="AudioQuality" Type="String" />
            <asp:Parameter Name="AudioFormat" Type="String" />
            <asp:Parameter Name="PlayTime" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="Producer" Type="String" />
            <asp:Parameter Name="Narrator" Type="String" />
            <asp:Parameter Name="DownloadCount" Type="String" />
            <asp:Parameter Name="Image" Type="Object" />
            <asp:Parameter Name="TorrentPath" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="UploadedDate" Type="DateTime" />
            <asp:Parameter Name="PublishedDate" Type="DateTime" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="AudioQuality" Type="String" />
            <asp:Parameter Name="AudioFormat" Type="String" />
            <asp:Parameter Name="PlayTime" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="Producer" Type="String" />
            <asp:Parameter Name="Narrator" Type="String" />
            <asp:Parameter Name="DownloadCount" Type="String" />
            <asp:Parameter Name="Image" Type="Object" />
            <asp:Parameter Name="TorrentPath" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="LeftContentPlaceHolder">

   <ul>
            <li class="first">
                <asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
                <hr />
            <li>
                <asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/ControlPanelover.png" 
                    PostBackUrl="~/CP/Default.aspx" /></li>
            <li>
                <asp:ImageButton ID="UPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button9over.png" 
                    PostBackUrl="~/CP/UploadTorrents.aspx" /></li>
            <li>
                <asp:ImageButton ID="MGImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button10up.png" 
                    PostBackUrl="~/CP/ManageTorrents.aspx" /></li>
            
            <li>
                <asp:ImageButton ID="CHPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button11over.png" 
                    PostBackUrl="~/CP/ChangePassword.aspx" /></li>
            <li>
                <asp:ImageButton ID="HelpImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button6over.png" 
                    PostBackUrl="~/CP/AdminSupport.aspx" /></li>
                
                
     </ul>

</asp:Content>


