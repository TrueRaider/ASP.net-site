using System;
using System.Web.UI;


public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        List_ tabl = new List_();
        if (TextBox1.Text != "")
            tabl.PayeeINN = TextBox1.Text;
        else
            tabl.PayeeINN = "1";
        if (TextBox2.Text != "")
            tabl.Name = TextBox2.Text;
        else
            tabl.Name = "1";
        if (TextBox3.Text != "")
            tabl.PersonalAcc = TextBox3.Text;
        else
            tabl.PersonalAcc = "1";
        if (TextBox4.Text != "")
            tabl.BIC = TextBox4.Text;
        else
            tabl.BIC = "1";
        if (TextBox5.Text != "")
            tabl.CorrespAcc = TextBox5.Text;
        else
            tabl.CorrespAcc = "1";

        db.List_s.InsertOnSubmit(tabl);
        db.SubmitChanges();

        Response.Redirect("/Contact.aspx");
    }
}