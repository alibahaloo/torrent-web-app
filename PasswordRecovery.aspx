<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PasswordRecovery.aspx.vb" Inherits="PasswordRecovery" title="Password Recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="1em">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
    </asp:PasswordRecovery>
</asp:Content>

<asp:Content ID="Content4" runat="server" 
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


