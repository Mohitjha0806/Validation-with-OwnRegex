using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btn_Registration_Click(object sender, EventArgs e)
    {
        tblc_Username.Text = txt_Username.Text;
        tblc_Fname.Text = txtFname.Text;
        tblc_Mname.Text = txtMname.Text;
        tblc_Lname.Text = txtLname.Text;
        tblc_DOB.Text = txt_DOB.Text;
        tblc_RollNo.Text = txt_RollNo.Text;
        tblc_StudentAdd.Text = txtAdd.Text;
        tblc_State.Text = ddl_State.Text;
        tblc_Division.Text = ddl_Division.Text;
        tblc_Country.Text = ddl_Country.Text;
        tblc_Pincode.Text = lb_Pincode.Text;
        tblc_Email.Text = txtEmail.Text;
        tblc_Mobileno.Text = txt_Mobile.Text;


        tblc_Aadhar.Text = txt_Aadhar.Text;
            tblc_PanNo.Text = txt_PanNo.Text;
            tblc_VoterId.Text = txt_Voter.Text;
            tblc_Account.Text = txt_AcountNo.Text;
            tblc_Ifsc.Text = txt_Ifsc.Text;
            tblc_Branch.Text = ddl_Branch.SelectedValue;

    }

    protected void Reset_Click(object sender, EventArgs e)
    {


        Page.Response.Redirect(Page.Request.Url.ToString());

        //txtFname.Text = string.Empty;
        //txtMname.Text = string.Empty;
        //txtLname.Text = string.Empty;
        //txt_DOB.Text = string.Empty;
        //txt_StudenId.Text = string.Empty;
        //txtAdd.Text = string.Empty;
        //ddl_State.Text = string.Empty;
        //ddl_Division.Text = string.Empty;
        //ddl_Country.Text = string.Empty;
        //lb_Pincode.Text = string.Empty;
        //txtEmail.Text = string.Empty;
        //txt_Mobile.Text = string.Empty;
        //tblc_Fname.Text = string.Empty;
        //tblc_Mname.Text = string.Empty;
        //tblc_Lname.Text = string.Empty;
        //tblc_DOB.Text = string.Empty;
        //tblc_StudentId.Text = string.Empty;
        //tblc_StudentAdd.Text = string.Empty;
        //tblc_State.Text = string.Empty;
        //tblc_Division.Text = string.Empty;
        //tblc_Country.Text = string.Empty;
        //tblc_Pincode.Text = string.Empty;
        //tblc_Email.Text = string.Empty;
        //tblc_Mobileno.Text = string.Empty;
    }


    protected void ddl_Division_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddl_State_SelectedIndexChanged1(object sender, EventArgs e)
    {
        ddl_Division.Items.Clear();

        if (ddl_State.SelectedValue == "0")
        {

        }
        else if (ddl_State.SelectedValue == "Madhya Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("Bhopal Division"));
            ddl_Division.Items.Add(new ListItem("Ujjain Division"));
            ddl_Division.Items.Add(new ListItem("Rewa Division"));
            ddl_Division.Items.Add(new ListItem("Chambal Division"));
            ddl_Division.Items.Add(new ListItem("Gwalior Division"));
            ddl_Division.Items.Add(new ListItem("Indore Division"));
            ddl_Division.Items.Add(new ListItem("Jabalpur Division"));
            ddl_Division.Items.Add(new ListItem("Naramdapuram Division"));
            ddl_Division.Items.Add(new ListItem("Sagar Division"));
            ddl_Division.Items.Add(new ListItem("Shahdol Division"));

        }
        else if (ddl_State.SelectedValue == "Uttar Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("Agra Division"));
            ddl_Division.Items.Add(new ListItem("Aligarh Division"));
            ddl_Division.Items.Add(new ListItem("Ayodhya Division"));
            ddl_Division.Items.Add(new ListItem("Azamgarh Division"));
            ddl_Division.Items.Add(new ListItem("Bareilly Division"));
            ddl_Division.Items.Add(new ListItem("Basti Division"));
            ddl_Division.Items.Add(new ListItem("Banda Division"));
            ddl_Division.Items.Add(new ListItem("Gonda Division"));
            ddl_Division.Items.Add(new ListItem("Gorakhpur Division"));
            ddl_Division.Items.Add(new ListItem("Jhansi Division"));

        }
        else if (ddl_State.SelectedValue == "Uttar Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("East Kameng Division"));
            ddl_Division.Items.Add(new ListItem("Lohit Division"));
            ddl_Division.Items.Add(new ListItem("Tawang Division"));
            ddl_Division.Items.Add(new ListItem("Anjaw Division"));
            ddl_Division.Items.Add(new ListItem("Changlang Division"));
            ddl_Division.Items.Add(new ListItem("Dibang Valley Division"));
            ddl_Division.Items.Add(new ListItem("West Kameng Division"));
            ddl_Division.Items.Add(new ListItem("Pakke Kessang Division"));
            ddl_Division.Items.Add(new ListItem("East Siang Division"));
            ddl_Division.Items.Add(new ListItem("Kamle Division"));

        }
        else if (ddl_State.SelectedValue == "Arunachal Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("East Kameng Division"));
            ddl_Division.Items.Add(new ListItem("Lohit Division"));
            ddl_Division.Items.Add(new ListItem("Tawang Division"));
            ddl_Division.Items.Add(new ListItem("Anjaw Division"));
            ddl_Division.Items.Add(new ListItem("Changlang Division"));
            ddl_Division.Items.Add(new ListItem("Dibang Valley Division"));
            ddl_Division.Items.Add(new ListItem("West Kameng Division"));
            ddl_Division.Items.Add(new ListItem("Pakke Kessang Division"));
            ddl_Division.Items.Add(new ListItem("East Siang Division"));
            ddl_Division.Items.Add(new ListItem("Kamle Division"));

        }
        else if (ddl_State.SelectedValue == "Himachal Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("Shimla Division"));
            ddl_Division.Items.Add(new ListItem("Theog Division"));
            ddl_Division.Items.Add(new ListItem("Rampur Division"));
            ddl_Division.Items.Add(new ListItem("Chopal Division"));
            ddl_Division.Items.Add(new ListItem("Rohru  Division"));
            ddl_Division.Items.Add(new ListItem("Dodra Kewar Division"));
        }
        else if (ddl_State.SelectedValue == "Andra Pradesh")
        {
            ddl_Division.Items.Add(new ListItem("Vizianagaram Division"));
            ddl_Division.Items.Add(new ListItem("Parvathipuram Manyam\t Division"));
            ddl_Division.Items.Add(new ListItem("Rampur Division"));
            ddl_Division.Items.Add(new ListItem("Alluri Sitharama Raju\t Division"));
            ddl_Division.Items.Add(new ListItem("Rohru  Division"));
            ddl_Division.Items.Add(new ListItem("Visakhapatnam Kewar Division"));
        }
    }
}