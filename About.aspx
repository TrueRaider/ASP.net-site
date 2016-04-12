<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     Наименование:
<asp:TextBox id="tb4" Text="" runat="server" Width ="200" />
<br /><br />
    Номер счета получателя платежа:
<asp:TextBox id="tbPersNum" Text="" runat="server" />
<br /><br />
    Наименование Банка Платежа:
<asp:TextBox id="tbBankName" Text="" runat="server" Width ="200"/>
<br /><br />
    БИК:
<asp:TextBox id="tbBik" Text="" runat="server" Width ="200"/>
<br /><br />
    CorrespAcc:
<asp:TextBox id="tbCorrespAcc" Text="" runat="server" Width ="200"/>
<br /><br />
    PayeeINN:
<asp:TextBox id="tbINN" Text="" runat="server" Width ="200"/>
<br /><br />
    KPP:
<asp:TextBox id="tbKPP" Text="" runat="server" Width ="200"/>
<br /><br />
     CBC:
<asp:TextBox id="tbCBC" Text="" runat="server" Width ="200"/>
<br /><br />
     OKTMO:
<asp:TextBox id="tbOKTMO" Text="" runat="server" Width ="200"/>
<br /><br />
     PayeerINN:
<asp:TextBox id="tbPrINN" Text="" runat="server" Width ="200"/>
<br /><br />
    Фамилия:
<asp:TextBox id="tbLastName" Text="" runat="server" Width ="200"/>
<br /><br />
    Имя:
<asp:TextBox id="tbFirstName" Text="" runat="server" Width ="200"/>
<br /><br />
    Отчество:
<asp:TextBox id="tbMiddleName" Text="" runat="server" Width ="200"/>
<br /><br />
    Адрес Плательщика:
<asp:TextBox id="tbPAddress" Text="" runat="server" Width ="200"/>
<br /><br />
    
    PaymTerm:
<asp:TextBox id="tbPayTerm" Text="" runat="server" Width ="200"/>
<br /><br />
    
    Field101:
<asp:TextBox id="tb101" Text="" runat="server" Width ="200"/>
<br /><br />
    
    Field106:
<asp:TextBox id="tb106" Text="" runat="server" Width ="200"/>
<br /><br />
    
    Field110:
<asp:TextBox id="tb110" Text="" runat="server" Width ="200"/>
<br /><br />
    uin:
<asp:TextBox id="tbuin" Text="" runat="server" Width ="200"/>
<br /><br />
    docidx:
<asp:TextBox id="tbDocIdx" Text="" runat="server" Width ="200"/>
<br /><br />
    Сумма:
    <asp:TextBox id="tbSum" Text="" runat="server" Width ="200"/>
<br /><br />
    
    <asp:Button runat="server" ID ="Confirm" Text =" Confirm" />
    
    <asp:Image runat="server" ID ="QRImage" Width="100" Height="100" />
    
</asp:Content>
