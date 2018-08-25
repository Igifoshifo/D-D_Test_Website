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
	public partial class Insert : System.Web.UI.Page
	{
		public string confirmString;

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void insertValues_onClick(object sender, EventArgs e)
		{
			string connStr = "server=localhost; user=root; database=dndspells; port=3306; password=''; SslMode = none;";
			MySqlConnection conn = new MySqlConnection(connStr);

			try
			{
				conn.Open();

				//write our SQL statement as a string
				string sql = "insert into dnd5_spells (spell_name, spell_level, spell_type, casting_time, spell_range, components, duration, description, higher_levels) values (@name, @level, @type, @cast, @range, @comp, @dur, @desc, @high);";
				
				MySqlCommand cmd = new MySqlCommand(sql, conn);

				//add values to placeholders
				cmd.Parameters.AddWithValue("@name", spellName.Text);
				cmd.Parameters.AddWithValue("@level", spellLevel.Text);
				cmd.Parameters.AddWithValue("@type", spellType.Text);
				cmd.Parameters.AddWithValue("@cast", castingTime.Text);
				cmd.Parameters.AddWithValue("@range", spellRange.Text);
				cmd.Parameters.AddWithValue("@comp", VCheck.Text +" "+ SCheck.Text +" " + MCheck.Text +" ("+ components.Text +")");
				cmd.Parameters.AddWithValue("@dur", duration.Text);
				cmd.Parameters.AddWithValue("@desc", description.Text);
				cmd.Parameters.AddWithValue("@high", higherLevels.Text);

				cmd.ExecuteNonQuery();

				confirmString = "Spell Added! <br> Spell Name: " + spellName.Text + "<br> Level: " + spellLevel.Text + "<br> Type: " + spellType.Text + "<br>Casting Time: " + castingTime.Text + "Range: " + spellRange.Text + "<br>Components: " + components.Text + "<br>Duration: " + duration.Text + "<br> Description: " + description.Text + "<br> At Higher Levels: " + higherLevels.Text;

				Response.Write(confirmString);

				//reset text boxes
				spellName.Text = string.Empty;
				spellLevel.Text = string.Empty;
				spellType.Text = string.Empty;
				castingTime.Text = string.Empty;
				spellRange.Text = string.Empty;
				components.Text = string.Empty;
				duration.Text = string.Empty;
				description.Text = string.Empty;
				higherLevels.Text = string.Empty;
				
			}
			catch (Exception ex)
			{
				Response.Write(ex.ToString());
			}

			conn.Close();
		}
	}
}