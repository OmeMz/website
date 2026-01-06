<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="example" method="get" action="html_page13.html">
    First name: <input type="text" name="firstname"><br />
    Middle name: <input type="text" name="midname"><br />
    Surname: <input type="text" name="lastname"><br />
    <h2>Fav Beer?</h2>
    <input type="radio" id="PA" name="fav_beer" value="Pale Ale"> Pale Ale
  <input type="radio" id="RB" name="fav_beer" value="Rootbeer"> Root Beer
  <input type="radio" id="WB" name="fav_beer" value="Wheat Beer"> Wheat Beer
    <h2>Most Hated Beer?</h2>
    <input type="radio" id="NST" name="MHB" value="None" />
    <label for="NST">No such thing</label><br />
</form>
</asp:Content>

