<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="WebApplication1.Query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- Head -->
	<script type="text/javascript">
    function RefreshUpdatePanel() {
        __doPostBack('<%= spell.ClientID %>', '');
    };
</script>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<!-- Body -->
	<main>
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		<div>
			<h1><font size="25"><center>Search for a Spell</center></font></h1>
			<!-- Image -->
			<!--<center><img alt="Book Picture" class="auto-style1" src="images/book.png" width="600" height="400"/></center>-->

			<!-- Text Box -->
			<center><div class="textStyle"><asp:TextBox ID="spell" placeholder="Search.." runat="server" onkeyup="RefreshUpdatePanel();" OnTextChanged="searchBar_text"></asp:TextBox></div></center>
			<br />

			<!-- Button -->
			<!--<center><asp:Button ID="searchButton" runat="server" OnClick="searchButton_Click" Text="Search" class ="button"/></center>-->

			<!-- Gridview, wrapped in an update panel as to avoid reloading page each search 
				Note: this takes some time to load. If backspace too fast, won't load properly.-->
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
				<ContentTemplate>
					<center>
			<div style="width: 1400px; height: 600px; overflow: auto;">
				<asp:GridView ID="GridView1" runat="server"
					AutoGenerateColumns="False"
					GridLines="None"
					CssClass="Grid"
					PagerStyle-CssClass="pgr"
					AlternatingRowStyle-CssClass="alt">
					<Columns>
						<asp:BoundField DataField="spell_name" HeaderText="Spell Name" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="spell_type" HeaderText="Type" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="casting_time" HeaderText="Casting Time" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="spell_range" HeaderText="Range" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="components" HeaderText="Components" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="duration" HeaderText="Duration" ItemStyle-Width="10%"/>
						<asp:BoundField DataField="description" HeaderText="Description" ItemStyle-Width="20%"/>
						<asp:BoundField DataField="higher_levels" HeaderText="At Higher Levels" ItemStyle-Width="20%"/>
					</Columns>
				</asp:GridView>
			</div>
			</center>
				</ContentTemplate>
				<Triggers>
					<asp:AsyncPostBackTrigger ControlID="spell" />
				</Triggers>
			</asp:UpdatePanel>
			<br />
			<br />
			<br />
			<br />
		</div>
	</main>
</asp:Content>
