<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contact-sep">
        <h2>ИНН: 
            <asp:TextBox ID="TextBox1" runat="server" CssClass="field-input"></asp:TextBox>
        </h2>
        <h2>Название Орг:
            <asp:TextBox ID="TextBox2" runat="server"  CssClass="field-input"></asp:TextBox>
        </h2>
        <h2>Расчетный счет:
            <asp:TextBox ID="TextBox3" runat="server"  CssClass="field-input"></asp:TextBox>
        </h2>
        <h2>БИК:
            <asp:TextBox ID="TextBox4" runat="server" CssClass="field-input"></asp:TextBox>
        </h2>
        <h2>К/С:
            <asp:TextBox ID="TextBox5" runat="server"  CssClass="field-input"></asp:TextBox>
        </h2>
        <div class="button-cont">
            <h2><asp:Button ID="Button1" runat="server" Text="Добавить" OnClick="Button1_Click" cssClass="button-big-2"/></h2>
        </div>
    </div>
         
    
       
    
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="OrdNum" ForeColor="#333333" GridLines="None" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="BIC" HeaderText="BIC" SortExpression="BIC" />
            <asp:BoundField DataField="PersonalAcc" HeaderText="PersonalAcc" SortExpression="PersonalAcc" />
            <asp:BoundField DataField="PayeeINN" HeaderText="PayeeINN" SortExpression="PayeeINN" />
            <asp:BoundField DataField="CorrespAcc" HeaderText="CorrespAcc" SortExpression="CorrespAcc" />
            <asp:BoundField DataField="OrdNum" HeaderText="OrdNum" ReadOnly="True" SortExpression="OrdNum" Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sberbankQRConnectionString1 %>" SelectCommand="SELECT * FROM [List$] ORDER BY [Name], [PayeeINN], [PersonalAcc]" DeleteCommand="DELETE FROM [List$] WHERE [OrdNum] = @OrdNum" InsertCommand="INSERT INTO [List$] ([Name], [BIC], [PersonalAcc], [PayeeINN], [CorrespAcc], [OrdNum]) VALUES (@Name, @BIC, @PersonalAcc, @PayeeINN, @CorrespAcc, @OrdNum)" UpdateCommand="UPDATE [List$] SET [Name] = @Name, [BIC] = @BIC, [PersonalAcc] = @PersonalAcc, [PayeeINN] = @PayeeINN, [CorrespAcc] = @CorrespAcc WHERE [OrdNum] = @OrdNum">
        <DeleteParameters>
            <asp:Parameter Name="OrdNum" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="BIC" Type="String" />
            <asp:Parameter Name="PersonalAcc" Type="String" />
            <asp:Parameter Name="PayeeINN" Type="String" />
            <asp:Parameter Name="CorrespAcc" Type="String" />
            <asp:Parameter Name="OrdNum" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="BIC" Type="String" />
            <asp:Parameter Name="PersonalAcc" Type="String" />
            <asp:Parameter Name="PayeeINN" Type="String" />
            <asp:Parameter Name="CorrespAcc" Type="String" />
            <asp:Parameter Name="OrdNum" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
        <br />

   
</asp:Content>
