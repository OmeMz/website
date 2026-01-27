<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page">
<form name="example" method="post" runat="server">
    <div class="login">
    <!-- Login Title -->
    <h1 class="login-title">Log In</h1>

    <div class="login-content">

    <!-- Email and pass -->
     <h2>Enter E-Mail and password</h2>
    <div class="login-info">
    Email: <input type="text" name="email" /><br />
    Password: <input type="password" name="pass" /><br />
    </div>
        </div>


    <!-- End of form -->
    <input class="submit" id="Submit" type="submit" value="Send" />
</form>  
</div>

<!-- CSS -->
<style>
    .page{
        background-image: url('<%= ResolveUrl("~/images/background.jpg") %>');
        background-size: cover;
        background-position: center; 
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        width: 100%;
        height: 90vh;
        align-items: center;
        
    }

    .login-content{
        flex: 1;
    }

    .login{
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

    .login select{
        padding: 5px;
        text-align: center;
    }

    .login .name{
        text-align: left;
    }

    .login-title{
        margin-top: 0;

    }

    .submit{
        margin-top: auto;
        margin-top: 5%;
        width: 20%;

    }


</style>
</asp:Content>

