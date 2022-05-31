using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Library
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source=localhost\SQLExpress;" + "Initial Catalog=LibraryLoginDB;Integrated Security=SSPI";
            string find = "SELECT * FROM Books WHERE BookName like '%' + @BookName or Author Like '%' + @Author ";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(find, conn);
            cmd.Parameters.Add("@BookName", SqlDbType.VarChar).Value = searchText.Text;
            cmd.Parameters.Add("@Author", SqlDbType.VarChar).Value = searchText.Text;
            

            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();

            Session.Clear();
            Session.Abandon();
        }
        protected void ReserveButton_Click(object sender, EventArgs e)
        {

        }
    }
}