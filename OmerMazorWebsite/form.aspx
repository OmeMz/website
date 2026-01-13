<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="example" method="get" action="html_page13.html">
    First name: <input type="text" name="firstname"><br />
    Middle name (Optional): <input type="text" name="midname"><br />
    Surname: <input type="text" name="lastname"><br />

    <h2>Fav Beer?</h2>
    <input type="radio" id="PA" name="fav_beer" value="Pale Ale">
    <label for="PA">Pale Ale</label>
    <input type="radio" id="RB" name="fav_beer" value="Rootbeer"> 
    <label for="RB">Root Beer</label>
    <input type="radio" id="WB" name="fav_beer" value="Wheat Beer">
    <label for="WB">Wheat Beer</label>

    <h2>Most Hated Beer?</h2>
    <input type="radio" id="NST" name="MHB" value="None" />
    <label for="NST">No such thing</label><br />

    <h2>Do you drink Whiskey?</h2>
    <input type="radio" id="yes" name="drinkWhiskey" value="Yes" />
    <label for="yes">Yes</label>
    <input type="radio" id="yes2" name="drinkWhiskey" value="Yes" />
    <label for="yes2">Yes</label><br />
    
</form>
</asp:Content>

