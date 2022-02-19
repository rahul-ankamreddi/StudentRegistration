using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace StudentRegistration
{

    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }
        public static string ConnectionString { get; private set; }


        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = 'C:\\Users\\Rahul Ankamreddi\\source\\repos\\StudentRegistration\\StudentRegistration\\App_Data\\RegistrtionForm.mdf'; Integrated Security = True");

        protected void save_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into student values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            feedback.Text = "Successfully added...";

            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from student",con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set father_name = '" + TextBox3.Text + "', branch = '" + DropDownList1.SelectedValue + "', dob = '" + TextBox4.Text + "', address = '" + TextBox5.Text + "', roll_num = '" + TextBox6.Text + "' where student_name = '"+ TextBox1.Text +"'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            feedback.Text = "Successfully updated...";

            LoadRecord();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete student where student_name = '" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            feedback.Text = "Successfully deleted...";

            LoadRecord();
        }
    }
}