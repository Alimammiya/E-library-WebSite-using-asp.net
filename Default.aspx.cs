using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillData();
        }
    }
    //FillData method for filling Repeater Control with Data
    private void fillData()
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("Select * from tbl_Comment Order by Id Desc", con);
        adapt.Fill(dt);
        con.Close();
        PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 4;
        pds.CurrentPageIndex = PageNumber;
        if (pds.PageCount > 1)
        {
            rptPaging.Visible = true;
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < pds.PageCount; i++)
                arraylist.Add((i + 1).ToString());
            rptPaging.DataSource = arraylist;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }
        Repeater1.DataSource = pds;
        Repeater1.DataBind(); 
    }
    //btn_Submit Click Event
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_Comment(Name,Email,Comment) values(@name,@email,@comment)",con);
        cmd.Parameters.AddWithValue("@name",txtName.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@comment", txtComment.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        //Displaying Javascript alert Comment Posted Successfully
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Comment Posted Successfully.');window.location='default.aspx';", true);
        fillData();
        txtName.Text = "";
        txtEmail.Text = "";
        txtComment.Text = "";
    }
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }
    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        fillData();
    }
}