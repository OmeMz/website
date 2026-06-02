<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script language="javascript">

    function checkAll(){
        f = true;
        f = f && checkName();

        return f;
    }

    function checkName(){
        name = document.getElementById("fn").value;
        surname = document.getElementById("sn").value;
        subtitle = document.getElementById("form-subtitle");

        if (name.length < 2 || name.length > 30){
            subtitle.innerHTML = "First name must be between 2 and 30 characters.";
            return false;
        }else if(surname.length < 2 || surname.length > 30){
            subtitle.innerHTML = "Surname must be between 2 and 30 characters.";
            return false;
        }

        return true;

    }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page">
<form name="example" method="post" onsubmit="return checkAll();" runat="server">
    
    <!-- Register Title -->
    <h1 class="form-title">Register</h1>
    <h5 class="form-subtitle" id="form-subtitle"></h5>

    <div class="form-content">
    <!-- Name -->
    <div class="name">
    First name: <input type="text" name="firstname" id="fn"><br />
    Surname: <input type="text" name="surname" id="sn"><br />
    Middle name (Optional): <input type="text" name="midname" id="mn"><br />
    </div>

    <!-- Email and pass -->
     <h2>Enter E-Mail and create a password</h2>
    <div class="login-info">
    Email: <input type="text" name="email" /><br />
    Password: <input type="password" name="pass" /><br />
    </div>

    <!-- Preferences -->
    <h2>Fav Beers?</h2>
    <input type="checkbox" id="PA" name="fav_beer1" value="Pale Ale">
    <label for="PA">Pale Ale</label>
    <input type="checkbox" id="RB" name="fav_beer2" value="Rootbeer"> 
    <label for="RB">Root Beer</label>
    <input type="checkbox" id="WB" name="fav_beer3" value="Wheat Beer">
    <label for="WB">Wheat Beer</label>

    <h2>Do you drink Whiskey?</h2>
    <input type="radio" id="whiskeyYes" name="drinkWhiskey" value="Yes" />
    <label for="whiskeyYes">Yes</label>
    <input type="radio" id="whiskeyNo" name="drinkWhiskey" value="No" />
    <label for="whiskeyNo">No</label><br />
    
    <h2>Do you eat bacon?</h2>
    <input type="radio" id="baconYes" name="eatBacon" value="Yes" />
    <label for="baconYes">Yes</label>
    <input type="radio" id="baconNo" name="eatBacon" value="No" />
    <label for="baconNo">No</label><br />

    <!-- Age group selection -->
    <h2>Select your age group</h2>
    <select name="age" id="age">
        <option value="0">Select Age Group</option>
        <option value="16">16-17</option>
        <option value="18">18-24</option>
        <option value="25">25-40</option>
    </select><br />
    </div>
    <!-- End of form -->
    <input class="submit" id="Submit" type="submit" value="Send" />
</form>  
</div>

<!-- CSS -->
<style>
    .page{
        background-image: url('images/background.jpg');
        background-size: cover;
        background-position: center; 
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        width: 100%
        
    }

    .form-content{
        flex: 1;
    }

    form{
        background-color: rgba(0, 0, 0, 0.67);
        color: white;
        padding: 15px;
        border-radius: 30px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 1.5);
        text-align: center;

        display: flex;
        flex-direction: column;

        justify-content: flex-start;
        align-items: center;
    }

    form select{
        padding: 5px;
        text-align: center;
    }

    form .name{
        text-align: left;
    }

    .form-title{
        margin-top: 0;

    }
    
    .form-subtitle{
        margin-top: 0;
        color: #ffcc00;
    }
    
    .submit{
        margin-top: auto;
        margin-top: 5%;
        width: 20%;

    }


</style>
</asp:Content>