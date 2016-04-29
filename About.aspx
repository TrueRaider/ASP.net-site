<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image runat="server" ID ="QRImage" Width="100" Height="100" cssClass="qr-image-2"/>

    <div class="scroll-conteiner">
        <div class="field-block">
            <span>Наименование:</span>
            <asp:TextBox id="tb4" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Номер счета получателя платежа:</span>
            <asp:TextBox id="tbPersNum" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Наименование Банка Платежа:</span>
            <asp:TextBox id="tbBankName" Text="" runat="server" CssClass="field-input"/>
        </div>
        <div class="field-block">
            <span>БИК:</span>
            <asp:TextBox id="tbBik" Text="" runat="server" CssClass="field-input"/>
        </div>
        <div class="field-block">
            <span>Расчетный счет:</span>
            <asp:TextBox id="tbCorrespAcc" Text="" runat="server" CssClass="field-input"/>
        </div>
        <div class="field-block">
            <span>ИНН получателя:</span>
            <asp:TextBox id="tbINN" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>КПП:</span>
            <asp:TextBox id="tbKPP" Text="" runat="server" CssClass="field-input"/>
        </div>
        <div class="field-block">
            <span>КБК:</span>
            <asp:TextBox id="tbCBC" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>ОКТМО:</span>
            <asp:TextBox id="tbOKTMO" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>ИНН Плательщика:</span>
            <asp:TextBox id="tbPrINN" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Фамилия:</span>
            <asp:TextBox id="tbLastName" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Имя:</span>
            <asp:TextBox id="tbFirstName" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Отчество:</span>
            <asp:TextBox id="tbMiddleName" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Адрес Плательщика:</span>
            <asp:TextBox id="tbPAddress" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>PaymTerm:</span>
            <asp:TextBox id="tbPayTerm" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Field101:</span>
            <asp:TextBox id="tb101" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Field106:</span>
            <asp:TextBox id="tb106" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Field110:</span>
            <asp:TextBox id="tb110" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>uin:</span>
            <asp:TextBox id="tbuin" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>docidx:</span>
            <asp:TextBox id="tbDocIdx" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="field-block">
            <span>Сумма:</span>
            <asp:TextBox id="tbSum" Text="" runat="server" CssClass="field-input" />
        </div>
        <div class="button-cont">
            <asp:Button runat="server" ID ="Confirm" Text ="Подтвердить" />
        </div>
    </div>
</asp:Content>
