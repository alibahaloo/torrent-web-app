<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DownloadPage.aspx.vb" Inherits="DownloadPage" title="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 500px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <h3>Below is the full details of the selected audio book.</h3>
    
    <table class="style2">
        <tr>
            <td>
                Image:<br />
                <asp:Image ID="DownloadImage" runat="server" />
                <br />
                Image Source:<asp:DropDownList ID="ImageDropDownList" runat="server" 
                    DataSourceID="DownloadObjectDataSource" DataTextField="ImagePath" 
                    DataValueField="ImagePath" Enabled="False">
                                    </asp:DropDownList>
                <asp:Label ID="ImageLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
</table>
    
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataKeyNames="ID" 
        DataSourceID="DownloadObjectDataSource" ForeColor="Black" Height="50px" 
        Width="500px">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="Title" HeaderText="Title" 
                SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category"/>
            <asp:BoundField DataField="UploadedDate" HeaderText="Uploaded Date" 
                SortExpression="UploadedDate" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="PublishedDate" HeaderText="Published Date" 
                SortExpression="PublishedDate" DataFormatString="{0:d}" />
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
        </Fields>
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="DownloadObjectDataSource" runat="server" 
        DeleteMethod="Delete" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" 
        TypeName="LiteDataSetTableAdapters.TorrentDetailsTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    Download Path:<asp:DropDownList ID="DLDropDownList" runat="server" 
        DataSourceID="DownloadObjectDataSource" DataTextField="TorrentPath" 
        DataValueField="TorrentPath" Enabled="False">
    </asp:DropDownList><br />
    <asp:Label ID="DLLabel" runat="server" Text="Label"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Download This .Torrent" />

          
    </asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="LeftContentPlaceHolder">
      <ul>
            <li class="first"><asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
            <li><asp:ImageButton ID="SearchImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button2over.png" PostBackUrl="~/SearchResult.aspx" /></li>
            <li><asp:ImageButton ID="CategoryImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button3over.png" PostBackUrl="~/Category.aspx" /></li>
            <li><asp:ImageButton ID="DLImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button4over.png" PostBackUrl="~/DLClientApp.aspx"/></li>
            <li><asp:ImageButton ID="PRImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button5over.png" 
                    PostBackUrl="~/Support.aspx" /></li>
            <li><asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button7over.png" 
                    PostBackUrl="~/Admin/Default.aspx" /></li>
                </ul>

</asp:Content>


