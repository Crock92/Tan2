using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Rejestracja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.MultiView1.SetActiveView(View1);
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(this.DropDownList1.SelectedValue.ToString() == "PJWSTK")
        {
            this.MultiView1.SetActiveView(View2);
        }

        if (this.DropDownList1.SelectedValue.ToString() == "Gosc")
        {
            this.MultiView1.SetActiveView(View3);
        }
    }

    protected void MultiView1_OnActiveViewChanged(object sender, EventArgs e)
    {
        if(this.MultiView1.ActiveViewIndex == 1)
        {
            this.TextBox3.Text = this.TextBox1.Text;
            this.TextBox4.Text = this.TextBox2.Text;
        }

        if (this.MultiView1.ActiveViewIndex == 2)
        {
            this.TextBox10.Text = this.TextBox1.Text;
            this.TextBox11.Text = this.TextBox2.Text;
        }
    }

    protected void CheckBox1_OnCheckedChanged(object sender, EventArgs e)
    {
        if(this.CheckBox1.Checked == false)
        {
            this.trNazwisko.Attributes.Add("style", "display:none");
            this.trEmail.Attributes.Add("style", "display:none");
        }
        else
        {
            this.trEmail.Attributes.Clear();
            this.trNazwisko.Attributes.Clear();
        }
    }


}



