<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="UploadTorrents.aspx.vb" Inherits="Admin_ManageTorrents" title="Admin Control Panel | Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
<h3>Upload a new torrent</h3>
<b>Please browse for the Torrent file that you would like to upload.</b>
<br />
<br />
    <asp:FileUpload ID="FileUpload1" runat="server" size="80" /> <br />
    <asp:Button ID="UploadButton" runat="server" Text="Click To Upload Torrent" OnClick="UploadButton_Click"/><br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload1" 
Display="Dynamic" ErrorMessage="Only .Torrent Files" ValidationExpression="^.+(.torrent|.TORRENT)$"></asp:RegularExpressionValidator>
    <hr />
    <div id="UploadDetails" visible="false" runat="server" >
        Upload Path: 
    <asp:Label ID="UploadLabel" runat="server" Text=""></asp:Label><br />
        Torrent Name: <span id="FileName" runat="server" /><br />
        File Content: <span id="FileContent" runat="server" /><br />
        File Size: <span id="FileSize" runat="server" /><br />
    </div>
    <span id="span1" style="Color:Green" runat="server" />
    <hr />
    <b>Please browse for the Image file that you would like to upload for the 
    uploaded Torrent.</b>
    <br />
<br />
    <asp:FileUpload ID="FileUpload2" runat="server" size="80"/><br />
    <asp:Button ID="UploadImageButton" runat="server" Text="Click To Upload Image" OnClick="UploadImageButton_Click"/><br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FileUpload2" 
Display="Dynamic" ErrorMessage="Only .jpg,.gif Files" ValidationExpression="^.+(.jpg|.JPG|.gif|.GIF)$"></asp:RegularExpressionValidator>
<hr />
    <div id="ImageDetails" visible="false" runat="server" >
        Upload Path: 
    <asp:Label ID="ImageLabel" runat="server" Text=""></asp:Label><br />
        Image Name: <span id="ImageName" runat="server" /><br />
        File Content: <span id="ImageContent" runat="server" /><br />
        File Size: <span id="ImageSize" runat="server" /><br />
    </div>
    <span id="span2" style="Color:Green" runat="server" />
    
<hr />
<b>Click on the &quot;New&quot; Link to Insert the Audio Book Details.</b>
  <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" 
        AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        DataKeyNames="ID" DataSourceID="AdminUploadObjectDataSource" 
        ForeColor="Black" 
        HeaderText="Insert Details, Click on the &quot;New&quot; link at the button of the table.">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="Title" HeaderText="Title" 
                SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category"/>
            <asp:BoundField DataField="PublishedDate" HeaderText="Published Date" 
                SortExpression="PublishedDate" DataFormatString="{0:d}"/>
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
            
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <i>*note: date format: MM/DD/YYYY</i><br />
    <asp:ObjectDataSource ID="AdminUploadObjectDataSource" runat="server" 
        DeleteMethod="Delete" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="LiteDataSetTableAdapters.HomeTorrentDetailsTableAdapter" 
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
    </span></span></span></span>
    </span></span></span></span>
</asp:Content>
<asp:Content ID="Content4" runat="server" 
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
                    ImageUrl="~/images/Buttons/button9up.png" 
                    PostBackUrl="~/CP/UploadTorrents.aspx" /></li>
            <li>
                <asp:ImageButton ID="MGImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button10over.png" 
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

