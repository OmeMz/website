<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page">
<form name="example" method="get" action="html_page13.html">
    <div class="name">
    First name: <input type="text" name="firstname"><br />
    Surname: <input type="text" name="lastname"><br />
    Middle name (Optional): <input type="text" name="midname"><br />
    </div>

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
    <input type="radio" id="whiskeyYes1" name="drinkWhiskey" value="Yes" />
    <label for="whiskeyYes1">Yes</label>
    <input type="radio" id="whiskeyYes2" name="drinkWhiskey" value="Yes" />
    <label for="whiskeyYes2">Yes</label><br />
    
    <h2>Do you eat bacon?</h2>
    <input type="radio" id="baconYes" name="eatBacon" value="Yes" />
    <label for="baconYes">Yes</label>
    <input type="radio" id="baconNo" name="eatBacon" value="No" />
    <label for="baconNo">No</label><br />
</form>
</div>

<style>
    .page{
        background-image: url('<%= ResolveUrl("~/images/background.jpg") %>');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        width: 100%;
        height: 100vh;
        
    }

    form{
        background-color: rgba(0, 0, 0, 0.67);
        color: white;
        padding: 15px;
        border-radius: 30px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 1.5);
        text-align: center;
    }

    form .name{
        text-align: left;
    }


</style>
</asp:Content>
