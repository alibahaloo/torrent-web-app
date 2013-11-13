<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchResult.aspx.vb" Inherits="SearchResult" title="Search Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
<h3>Type in the title of the audio book you&#39;re looking for.</h3>
    Search:<asp:TextBox ID="TextBox1" runat="server" Width="281px"></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Text="Search" /><br />
   <hr />
    <asp:Label ID="SearchLabel" runat="server"></asp:Label><br /><hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SearchResultObjectDataSource" 
        CellPadding="4" ForeColor="Black" AllowPaging="True" 
        AllowSorting="True" Width="1033px" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
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
                SortExpression="UploadedDate" DataFormatString="{0:d}"/>
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
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="SearchResultObjectDataSource" runat="server" 
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
            <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" 
                Type="String" DefaultValue="." />
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
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
  <ul>
            <li class="first"><asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
            <li><asp:ImageButton ID="SearchImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button2up.png" 
                    PostBackUrl="~/SearchResult.aspx" /></li>
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


