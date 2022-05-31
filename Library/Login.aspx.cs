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
   
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            validationMessage.Text = "";
            SignupValidation.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source=localhost\SQLExpress;" + "Initial Catalog=LibraryLoginDB;Integrated Security=SSPI";
            string query = "SELECT COUNT(1) FROM usertable WHERE email=@email AND password=@password";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.Parameters.AddWithValue("@email", loginemail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password", password.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            conn.Close();

            if (count == 1)
            {
                Session["email"] = loginemail.Text.Trim();
                Response.Redirect("Search.aspx");
            }
            else
            {
                validationMessage.Text = "Incorrect E-mail or Password";
                validationMessage.ForeColor = System.Drawing.Color.Red;
                validationMessage.Font.Bold = true;

            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source=localhost\SQLExpress;" + "Initial Catalog=LibraryLoginDB;Integrated Security=SSPI";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand sqlCmd = new SqlCommand("UserAdd3", conn);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            
            if (sid.Text == "" || name.Text == "" || surname.Text == "" || contact.Text == "" || signupemail.Text == "" || passwd.Text == "")
            {
                SignupValidation.Text = "Please enter mandatory fields.";
                SignupValidation.ForeColor = System.Drawing.Color.Red;
                SignupValidation.Font.Bold = true;

            }
            else
            {
                if (signupemail.Text.Contains("boun.edu.tr") == false)
                {
                    SignupValidation.Text = "Invalid e-mail";
                    SignupValidation.ForeColor = System.Drawing.Color.Red;
                    SignupValidation.Font.Bold = true;
                }
                else
                {
                    if (sid.Text.Length != 10)
                    {
                        SignupValidation.Text = "Invalid student ID";
                        SignupValidation.ForeColor = System.Drawing.Color.Red;
                        SignupValidation.Font.Bold = true;
                    }
                    else
                    {
                        conn.Open();
                        sqlCmd.Parameters.AddWithValue("@StudentID", sid.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@FirstName", name.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Surname", surname.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Contact", contact.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email", signupemail.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@password", passwd.Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        conn.Close();

                        SignupValidation.Text = "Registration is successful.";
                        SignupValidation.ForeColor = System.Drawing.Color.Red;
                        SignupValidation.Font.Bold = true;
                    }
                }
            }

            Clear();
        }
        void Clear()
        {
            sid.Text = name.Text = surname.Text = contact.Text = signupemail.Text = passwd.Text = "";
        }
    }
}