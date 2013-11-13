<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" title="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <h3>Here&#39;s the list of latest uploaded audio books.</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="ID" DataSourceID="HomeObjectDataSource" ForeColor="Black" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellSpacing="2" Width="900px">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="DownloadPage.aspx?ID={0}" HeaderText="Download" 
                Text="Download" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="UploadedDate" HeaderText="Uploaded Date" 
                SortExpression="UploadedDate" DataFormatString="{0:d}" />
            <asp:BoundField DataField="PublishedDate" HeaderText="Published Date" 
                SortExpression="PublishedDate" DataFormatString="{0:d}" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="HomeObjectDataSource" runat="server" 
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
    </asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="LeftContentPlaceHolder">

        <ul>
            <li class="first">
                <asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1up.png" PostBackUrl="~/Default.aspx" /></li>
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


