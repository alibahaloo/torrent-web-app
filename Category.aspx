<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Category.aspx.vb" Inherits="Category" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
        <ul>
            <li class="first"><asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
            <li><asp:ImageButton ID="SearchImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button2over.png" PostBackUrl="~/SearchResult.aspx" /></li>
            <li><asp:ImageButton ID="CategoryImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button3up.png" PostBackUrl="~/Category.aspx" /></li>
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
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
<h3>Select a category:</h3>
    <asp:RadioButtonList ID="CategoryRadioButtonList" runat="server" 
        AutoPostBack="True" DataSourceID="CategoryObjectDataSource" 
        DataTextField="Category" DataValueField="Category">
    </asp:RadioButtonList>
    <hr />
    <asp:ObjectDataSource ID="CategoryObjectDataSource" runat="server" 
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
    <asp:GridView ID="CategoryGridView" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="CategorySqlDataSource" 
        ForeColor="Black" Width="500px">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="UploadedDate" DataFormatString="{0:d}" 
                HeaderText="Uploaded Date" SortExpression="UploadedDate" />
            <asp:BoundField DataField="PublishedDate" DataFormatString="{0:d}" 
                HeaderText="Published Date" SortExpression="PublishedDate" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="CategorySqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LiteDatabaseConnectionString %>" 
        SelectCommand="SELECT [Title], [UploadedDate], [PublishedDate] FROM [TorrentDetails] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:ControlParameter ControlID="CategoryRadioButtonList" Name="Category" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

