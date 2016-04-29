<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="page-default">
        <tr>
    <td></td><td><asp:Image ID="QRImage" CssClass="qr-image" runat="server" Height="200px" ImageAlign="Middle" Width="200px" /></td><td></td>

  </tr>
  <tr>
    <td ></td><td ><p><h3 class="field-title">Поиск по ИНН</h3></p></td>
  </tr>
  <tr>
    <td class="field-label">ИНН:</td><td><asp:TextBox ID="TextBoxINN" runat="server" cssClass="field-input" ></asp:TextBox><asp:Button ID="ButtonINN" runat="server" OnClick="ButtonINN_Click" Text=" Найти" cssClass="field-button"/></td>

  </tr>
        <tr>
    <td ></td><td ><p><h3 class="field-title">Поиск по Наименованию</h3></p></td>

  </tr>
  <tr class="field--name">
    <td class="field-label">Наименование:</td><td ><asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" cssClass="field-input" ></asp:TextBox><asp:Button ID="ButtonName" runat="server" OnClick="ButtonName_Click" Text=" Найти" cssClass="field-button"/></td>

  </tr>
        <tr>
    <td></td><td style="display: none;"> Штрих-код: </td>

  </tr>

</table>
        
            
                
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrdNum" DataSourceID="SqlDataSource1" OnRowUpdated="BoxesUpdate" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="BIC" HeaderText="BIC" SortExpression="BIC" />
                        <asp:BoundField DataField="PersonalAcc" HeaderText="PersonalAcc" SortExpression="PersonalAcc" />
                        <asp:BoundField DataField="PayeeINN" HeaderText="PayeeINN" SortExpression="PayeeINN" />
                        <asp:BoundField DataField="CorrespAcc" HeaderText="CorrespAcc" SortExpression="CorrespAcc" />
                        <asp:BoundField DataField="OrdNum" HeaderText="OrdNum" ReadOnly="True" SortExpression="OrdNum" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sberbankQRConnectionString1 %>" SelectCommand="SELECT * FROM [List$] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox7" Name="Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrdNum" DataSourceID="SqlDataSource2" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="BIC" HeaderText="BIC" SortExpression="BIC" />
                        <asp:BoundField DataField="PersonalAcc" HeaderText="PersonalAcc" SortExpression="PersonalAcc" />
                        <asp:BoundField DataField="PayeeINN" HeaderText="PayeeINN" SortExpression="PayeeINN" />
                        <asp:BoundField DataField="CorrespAcc" HeaderText="CorrespAcc" SortExpression="CorrespAcc" />
                        <asp:BoundField DataField="OrdNum" HeaderText="OrdNum" ReadOnly="True" SortExpression="OrdNum" />
                    </Columns>
                </asp:GridView>
            </p>
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <asp:Button ID="Confirm" runat="server" Text=" Confirm" Visible="False" />
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sberbankQRConnectionString1 %>" SelectCommand="SELECT * FROM [List$] WHERE ([PayeeINN] = @PayeeINN)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxINN" Name="PayeeINN" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        
</asp:Content>
