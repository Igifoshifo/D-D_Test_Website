using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication1
{
	public partial class Query : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			spell.Attributes.Add("onkeyup", "RefreshUpdatePanel();");

			if (!IsPostBack)
			{
				string connStr = "server=localhost; user=root; database=dndspells; port=3306; password=''; SslMode = none;";
				MySqlConnection conn = new MySqlConnection(connStr);

				try
				{
					//I'm doing this for testing purposes
					conn.Open();

					//write our SQL statement as a string
					//string sql = "select * from dnd5_spells where spell_name = @spell;";
					string sql = "select * from dnd5_spells order by spell_name;";
					MySqlCommand cmd = new MySqlCommand(sql, conn);

					//add values to placeholders
					//cmd.Parameters.AddWithValue("@spell", spell.Text);

					MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
					DataSet ds = new DataSet();
					adp.Fill(ds);
					GridView1.DataSource = ds;
					GridView1.DataBind();


					//reset text boxes
					spell.Text = string.Empty;


				}
				catch (Exception ex)
				{
					Response.Write(ex.ToString());
				}

				//close our database connection
				conn.Close();
			}
		}

		protected void searchButton_Click(object sender, EventArgs e)
		{
			string connStr = "server=localhost; user=root; database=dndspells; port=3306; password=''; SslMode = none;";
			MySqlConnection conn = new MySqlConnection(connStr);

			try
			{
				conn.Open();

				//write our SQL statement as a string
				//string sql = "select * from dnd5_spells where (select * from dnd5_spells) like @spell;";

				string sql = "select * from dnd5_spells where spell_name like @spell or spell_level like @spell or casting_time like @spell or spell_range like @spell or components like @spell or duration like @spell or description like @spell or higher_levels like @spell order by spell_name;";
				MySqlCommand cmd = new MySqlCommand(sql, conn);

				//add values to placeholders
				cmd.Parameters.AddWithValue("@spell", "%" + spell.Text + "%");

				MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
				DataSet ds = new DataSet();
				adp.Fill(ds);
				GridView1.DataSource = ds;
				GridView1.DataBind();


				//reset text boxes
				spell.Text = string.Empty;


			}
			catch (Exception ex)
			{
				Response.Write(ex.ToString());
			}

			conn.Close();
		}

		/*OnKeyUp testing*/
		protected void searchBar_text(object sender, EventArgs e)
		{
			string connStr = "server=localhost; user=root; database=dndspells; port=3306; password=''; SslMode = none;";
			MySqlConnection conn = new MySqlConnection(connStr);

			try
			{
				conn.Open();

				//write our SQL statement as a string
				//string sql = "select * from dnd5_spells where (select * from dnd5_spells) like @spell;";

				string sql = "select * from dnd5_spells where spell_name like @spell or spell_level like @spell or casting_time like @spell or spell_range like @spell or components like @spell or duration like @spell or description like @spell or higher_levels like @spell order by spell_name;";
				MySqlCommand cmd = new MySqlCommand(sql, conn);

				//add values to placeholders
				cmd.Parameters.AddWithValue("@spell", "%" + spell.Text + "%");

				MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
				DataSet ds = new DataSet();
				adp.Fill(ds);
				GridView1.DataSource = ds;
				GridView1.DataBind();


				//reset text boxes
				spell.Text = string.Empty;


			}
			catch (Exception ex)
			{
				Response.Write(ex.ToString());
			}

			conn.Close();
		}
	}
}