﻿using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web.UI;
using MessagingToolkit.QRCode.Codec;


public partial class About : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //tb4.TextChanged += new System.EventHandler(ChangeImage);
        Confirm.Click += new System.EventHandler(ChangeImage);
    }

    protected void ChangeImage(object sender, System.EventArgs e)
    {
        QRCodeEncoder encoder = new QRCodeEncoder();//todo
        Bitmap img = encoder.Encode("Name = " +tb4.Text + "|PersonalAcc= " + tbPersNum.Text + "|BankName=" + tbBankName.Text + "|BIC=" + tbBik.Text + "|CorrespAcc=" + tbCorrespAcc.Text + "|PayeeINN=" + tbINN.Text + "|KPP=" + tbKPP.Text + "|CBC=" + tbCBC.Text + "|OKTMO="+ tbOKTMO.Text +"|PayerINN="+ tbPrINN.Text+ "|lastName=" + tbLastName.Text +"|firstName=" + tbFirstName.Text +"|middleName=" + tbMiddleName.Text + "|payerAddress=" + tbPAddress.Text+ "|paymTerm=" + tbPayTerm.Text +"|Field101=" + tb101.Text + "|Field106=" + tb106.Text +"|Field110=" + tb110.Text + "|uin=" + tbuin.Text + "|docIdx=" + tbDocIdx.Text + "|Sum =" + tbSum.Text);

        img.Save(Server.HtmlEncode(Request.PhysicalApplicationPath) + "img.jpg", ImageFormat.Jpeg);

        QRImage.ImageUrl = "~//img.jpg";
    }
}
