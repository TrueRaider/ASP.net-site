using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web.UI;
using MessagingToolkit.QRCode.Codec;
using System.IO;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Confirm.Click += new System.EventHandler(ChangeImage);


        AutoCompleteStringCollection AutoItem = new AutoCompleteStringCollection();
        foreach (DataRow rw in Dt.rows)
        {
            AutoItem.Add(Rw["columnname"].ToString());

        }
        TextBox7.AutoCompleteMode = AutoCompleteMode.Suggest;
        TextBox7.AutoCompleteSource = AutoCompleteSource.CustomSource;
        TextBox7.AutoCompleteCustomSource = AutoItem;

}

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[0].Cells[0].Text;
        TextBox2.Text = GridView1.Rows[0].Cells[1].Text;
        TextBox3.Text = GridView1.Rows[0].Cells[2].Text;
        TextBox4.Text = GridView1.Rows[0].Cells[3].Text;
        TextBox5.Text = GridView1.Rows[0].Cells[4].Text;
        

        ChangeImage();
    }
    protected void ChangeImage(object sender, System.EventArgs e)
    {
        QRCodeEncoder encoder = new QRCodeEncoder();
        Bitmap bitImg = encoder.Encode("ST00012|Name=" + TextBox1.Text + "|BankName=Bank|PersonalAcc=" + TextBox3.Text + "|BIC=" + TextBox2.Text + "|CorrespAcc=" + TextBox5.Text + "|PayeeINN=" + TextBox4.Text + "|SuperBar=UBSBRF168597RU|");

        bitImg.Save(Server.HtmlEncode(Request.PhysicalApplicationPath) + "img.jpg", ImageFormat.Jpeg);

        QRImage.ImageUrl = "~//img.jpg";
    }

    protected void ChangeImage()
    {
        QRCodeEncoder encoder = new QRCodeEncoder();
        Bitmap bitImg = encoder.Encode("ST00012|Name=" + TextBox1.Text + "|BankName=Bank|PersonalAcc=" + TextBox3.Text + "|BIC=" + TextBox2.Text + "|CorrespAcc=" + TextBox5.Text + "|PayeeINN=" + TextBox4.Text + "|SuperBar=UBSBRF168597RU|");
        bitImg.Save(Server.HtmlEncode(Request.PhysicalApplicationPath) + "img.jpg", ImageFormat.Jpeg);

        QRImage.ImageUrl = "~//img.jpg";
    }

    protected void ButtonINN_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0) { TextBoxINN.Text = "Совпадений не найдено"; return; }
        TextBox1.Text = GridView1.Rows[0].Cells[0].Text;
        TextBox2.Text = GridView1.Rows[0].Cells[1].Text;
        TextBox3.Text = GridView1.Rows[0].Cells[2].Text;
        TextBox4.Text = GridView1.Rows[0].Cells[3].Text;
        TextBox5.Text = GridView1.Rows[0].Cells[4].Text;

        ChangeImage();
    }
    protected void ButtonName_Click(object sender, EventArgs e)
    {
        GridView2.DataBind();
        if (GridView2.Rows.Count == 0) { TextBox7.Text = "Совпадений не найдено"; return; }
        TextBox1.Text = GridView2.Rows[0].Cells[0].Text;
        TextBox2.Text = GridView2.Rows[0].Cells[1].Text;
        TextBox3.Text = GridView2.Rows[0].Cells[2].Text;
        TextBox4.Text = GridView2.Rows[0].Cells[3].Text;
        TextBox5.Text = GridView2.Rows[0].Cells[4].Text;

        ChangeImage();
    }

    protected void BoxesUpdate(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[0].Cells[0].Text;
        TextBox2.Text = GridView1.Rows[0].Cells[1].Text;
        TextBox3.Text = GridView1.Rows[0].Cells[2].Text;
        TextBox4.Text = GridView1.Rows[0].Cells[3].Text;
        TextBox5.Text = GridView1.Rows[0].Cells[4].Text;

        ChangeImage();
    }
    protected void IndexChange(object sender, EventArgs e)
    {
        
    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        GridView2.DataBind();
        if (GridView2.Rows.Count == 0) { TextBox7.Text = "Совпадений не найдено"; return; }
        TextBox1.Text = GridView2.Rows[0].Cells[0].Text;
        TextBox2.Text = GridView2.Rows[0].Cells[1].Text;
        TextBox3.Text = GridView2.Rows[0].Cells[2].Text;
        TextBox4.Text = GridView2.Rows[0].Cells[3].Text;
        TextBox5.Text = GridView2.Rows[0].Cells[4].Text;

        ChangeImage();
    }
}