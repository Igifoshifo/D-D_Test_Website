<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<main>
		<div>
			<h1><font size="25"><center>Welcome to D&D Spell Viewer!</center></font></h1>
			<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to D&D Spell viewer, a place where you can find all the information on Dungeons and Dragons 5th Edition spells, and even submit your own! New to D&D 5e? Keep reading!</h1>
			<br />
			<center><img alt="MagicEffect" class="auto-style1" src="images/magiceffect.png" width="1200" height="500"/></center>
			<dl>
				<dt>Name</dt>
				<dd>- This is, of course, the spell name.</dd>
				<dt>Level</dt>
				<dd>- Every spell has a level at which you can begin casting it. Keep in mind, a character's spellcasting level is not the same as their character level.<br />
					Spellcasting level increases when the character's level reaches 3, 5, 7, 9, 11, 13, 15, 17 and 19, depending on class. The higher the spellcasting level, access to more and strong spells becomes available!
				</dd>
				<dt>Type</dt>
				<dd>- Each spell has a school of magic with which it's associated with in order to better classify how spells are learned, or what sorts of people use them!</dd>
				<dt>Casting Time</dt>
				<dd>- Each spell has a casting time, varying greatly from instantaneous to days! Keep this in mind when determining what spells to learn or use. For example, considering a single round in combat is 6 seconds, you wouldn't want to take a spell that takes hours to cast!</dd>
				<dt>Range</dt>
				<dd>- Every spell also has a range. usually depending on how it's cast, such as by a traveling voice or by line of sight.</dd>
				<dt>Components</dt>
				<dd>- Every spell takes from combination of components or "rules" to determine how to cast them. There are 3 characteristics to a spell's components:
					<dl>
						<dt>Verbal (V)</dt>
						<dd>- If a spell is listed as having the V characteristic, it means words such as a ritual or chant must be spoken in order to complete the spell.</dd>
						<dt>Somatic (S)</dt>
						<dd>- If a spell is listed as having the S characteristic, it means that the spell requires gestures of some sort, meaning a hand must be free.</dd>
						<dt>Material (M)</dt>
						<dd>- If a spell is listed as having the M characteristic, it means that the spell requires a sacrifice of some sort of material, such as a gemstome or holy water.</dd>
					</dl>
				</dd>
				<dt>Duration</dt>
				<dd>- All spells can only last so long, and vary widely, from minutes to weeks.</dd>
				<dt>Description</dt>
				<dd>- A brief description of the spell, entailing what it does, damage, type of damage, etc.</dd>
				<dt>At Higher Levels</dt>
				<dd>- Spells often change the higher the level it's cast at, or by how many spell slots are expended in order to use. For example, a spell may gain increases damage or healing, or maybe an increased duration.</dd>
			</dl>
		</div>
	</main>
</asp:Content>
