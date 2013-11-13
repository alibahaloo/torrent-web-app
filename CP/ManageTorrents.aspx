<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ManageTorrents.aspx.vb" Inherits="Admin_ManageTorrents" title="Admin Control Panel | Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    Search: 
    <asp:TextBox ID="SearchTextBox" runat="server" Width="422px"></asp:TextBox><asp:Button ID="SearchButton"
        runat="server" Text="Search" /><br />
<hr />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="ID" DataSourceID="AdminManageObjectDataSource" 
        ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="EditTorrents.aspx?ID={0}" HeaderText="Details" 
                Text="Display Details" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="UploadedDate" HeaderText="UploadedDate" 
                SortExpression="UploadedDate" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="PublishedDate" HeaderText="PublishedDate" 
                SortExpression="PublishedDate" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="AudioQuality" HeaderText="AudioQuality" 
                SortExpression="AudioQuality" />
            <asp:BoundField DataField="AudioFormat" HeaderText="AudioFormat" 
                SortExpression="AudioFormat" />
            <asp:BoundField DataField="PlayTime" HeaderText="PlayTime" 
                SortExpression="PlayTime" />
            <asp:BoundField DataField="Language" HeaderText="Language" 
                SortExpression="Language" />
            <asp:BoundField DataField="Producer" HeaderText="Producer" 
                SortExpression="Producer" />
            <asp:BoundField DataField="Narrator" HeaderText="Narrator" 
                SortExpression="Narrator" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="AdminManageObjectDataSource" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="LiteDataSetTableAdapters.HomeTorrentDetailsTableAdapter" 
        UpdateMethod="Update">
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
        </InsertParameters>
    </asp:ObjectDataSource>
    <hr />
    <asp:GridView ID="SearchGridView" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SearchGridObjectDataSource" 
        ForeColor="Black" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="ID">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="EditTorrents.aspx?ID={0}" HeaderText="Details" 
                Text="Display Details" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="UploadedDate" HeaderText="UploadedDate" 
                SortExpression="UploadedDate" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="PublishedDate" HeaderText="PublishedDate" 
                SortExpression="PublishedDate" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="AudioQuality" HeaderText="AudioQuality" 
                SortExpression="AudioQuality" />
            <asp:BoundField DataField="AudioFormat" HeaderText="AudioFormat" 
                SortExpression="AudioFormat" />
            <asp:BoundField DataField="PlayTime" HeaderText="PlayTime" 
                SortExpression="PlayTime" />
            <asp:BoundField DataField="Language" HeaderText="Language" 
                SortExpression="Language" />
            <asp:BoundField DataField="Producer" HeaderText="Producer" 
                SortExpression="Producer" />
            <asp:BoundField DataField="Narrator" HeaderText="Narrator" 
                SortExpression="Narrator" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="SearchGridObjectDataSource" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="LiteDataSetTableAdapters.TorrentDetailsTableAdapter" 
        UpdateMethod="Update">
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
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="SearchTextBox" Name="Title" 
                PropertyName="Text" Type="String" DefaultValue="a" />
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


