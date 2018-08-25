<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="WebApplication1.Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<main>
		<h1><font size="25"><center>Submit a New Spell!</center></font></h1>
		<!-- Image -->
		<img alt="Ink and Quil" src="images/ink.png" width="600" height="800" align="right" />

		<!-- Name -->
		<h2>Spell Name: </h2>
		<div class="textStyle2">
			<asp:TextBox ID="spellName" placeholder="Spell Name" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val1"
			runat="server"
			ControlToValidate="spellName"
			ErrorMessage="* Spell Name is required.">
		</asp:RequiredFieldValidator>

		<!-- Level -->
		<h2>Spell Level: </h2>
<br />
		<asp:DropDownList ID="spellLevel" runat="server" CssClass="dropdownStlye">
			<asp:ListItem Enabled="true" Text="Level" Value="-1"></asp:ListItem>
			<asp:ListItem Text="Cantrip" Value="0"></asp:ListItem>
			<asp:ListItem Text="1st" Value="1"></asp:ListItem>
			<asp:ListItem Text="3rd" Value="3"></asp:ListItem>
			<asp:ListItem Text="5th" Value="5"></asp:ListItem>
			<asp:ListItem Text="7th" Value="7"></asp:ListItem>
			<asp:ListItem Text="9th" Value="9"></asp:ListItem>
		</asp:DropDownList><br />
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val2"
			runat="server"
			ControlToValidate="spellLevel"
			ErrorMessage="* Spell Level is required.">
		</asp:RequiredFieldValidator>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val3"
			runat="server"
			ControlToValidate="spellLevel"
			validationexpression="[0-9]{1}"
			ErrorMessage="* Spell Level must be from level 1-9.">
		</asp:RequiredFieldValidator>

		<!-- Type -->
		<h2>Spell Type: </h2>
<br />
		<asp:DropDownList ID="spellType" runat="server" CssClass="dropdownStlye">
			<asp:ListItem Enabled="true" Text="Type" Value="-1"></asp:ListItem>
			<asp:ListItem Text="Abjuration" Value="Abjuration"></asp:ListItem>
			<asp:ListItem Text="Conjuration" Value="Conjuration"></asp:ListItem>
			<asp:ListItem Text="Divination" Value="Divination"></asp:ListItem>
			<asp:ListItem Text="Enchantment" Value="Enchantment"></asp:ListItem>
			<asp:ListItem Text="Illusion" Value="Illusion"></asp:ListItem>
			<asp:ListItem Text="Necromancy" Value="Necromancy"></asp:ListItem>
			<asp:ListItem Text="Transmuation" Value="Transmuation"></asp:ListItem>
		</asp:DropDownList><br />
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val4"
			runat="server"
			ControlToValidate="spellType"
			ErrorMessage="* Spell Type is required.">
		</asp:RequiredFieldValidator>

		<!-- Cast Time -->
		<h2>Casting Time: </h2>
		<div class="textStyle2">
			<asp:TextBox ID="castingTime" placeholder="Casting Time" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val5"
			runat="server"
			ControlToValidate="castingTime"
			ErrorMessage="* Casting Time is required.">
		</asp:RequiredFieldValidator>

		<!-- Range -->
		<h2>Spell Range: </h2>
		<div class="textStyle2">
			<asp:TextBox ID="spellRange" placeholder="Spell Range" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val6"
			runat="server"
			ControlToValidate="spellRange"
			ErrorMessage="* Spell Range is required.">
		</asp:RequiredFieldValidator>

		<!-- Components-->
		<h2>Components: </h2>
		<br />
		<asp:CheckBox ID="VCheck" runat="server" Text="V," /> &nbsp; &nbsp; &nbsp; 
        <asp:CheckBox ID="SCheck" runat="server" Text="S," /> &nbsp; &nbsp; &nbsp;
		<asp:CheckBox ID="MCheck" runat="server" Text="M" /><br />
		<div class="textStyle2">
			<asp:TextBox ID="components" placeholder="Components" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val7"
			runat="server"
			ControlToValidate="components"
			ErrorMessage="* Components is required.">
		</asp:RequiredFieldValidator>

		<!-- Duration -->
		<h2>Duration: </h2>
		<div class="textStyle2">
			<asp:TextBox ID="duration" placeholder="Duration" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val8"
			runat="server"
			ControlToValidate="duration"
			ErrorMessage="* Duration is required.">
		</asp:RequiredFieldValidator>

		<!-- Description -->
		<h2>Description: </h2>
		<div class="textStyle3">
			<asp:TextBox Rows="10" Columns="100" TextMode="multiline" ID="description" placeholder="What does this spell do?" runat="server"></asp:TextBox></div>
		<asp:RequiredFieldValidator 
			class="required"
			ID ="Val9"
			runat="server"
			ControlToValidate="description"
			ErrorMessage="* Description is required.">
		</asp:RequiredFieldValidator>

		<!-- Higher Levels -->
		<h2>At Higher Levels: </h2>
		<div class="textStyle3">
			<asp:TextBox Rows="10" Columns="100" TextMode="multiline" ID="higherLevels" placeholder="At Higher Levels.." runat="server"></asp:TextBox></div>

		<!-- Button-->
		<br />
<br />
<br />
		<center><asp:Button ID="searchButton" runat="server" OnClick="insertValues_onClick" Text="Submit!" class ="button2"/></center>
		<br />
<br />
	</main>
</asp:Content>
