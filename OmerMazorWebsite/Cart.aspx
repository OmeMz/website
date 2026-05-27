<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form class="page" runat="server">
        <div class="cart-content">
            <h1>Shopping Cart</h1>
            <h5>Use the search bar below to find products</h5>
            <div class="search-container">
                <asp:TextBox ID="SearchTextBox" runat="server" CssClass="search-bar"></asp:TextBox>
                <input class="search-button" type="submit" value="Search" />
            </div>
        </div
</form>


    <style>

        body {
            margin: 0;
        }

        .page {
            background-image: url('<%= ResolveUrl("~/images/background.jpg") %>');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            flex-direction: column;
            display: flex;
            align-items: center;
            min-height: 90vh;
        }
        
        .cart-content{
            margin-top: 15vh;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.75);
            width: 30%;
            padding-bottom: 5%;
            border-radius: 20px;
        }

        .cart-content h1{
            color: white;
        }
        
        .cart-content h5{
            color: yellow;
        }

        .search-container {
            position: static;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 10vh;
        }

        .search-bar{
            border-radius: 20px;
            outline: none;
        }

        .search-button {
            padding: 5px 15px;
            margin-top: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .search-button:hover{
            background-color: #0056b3;
        }

    </style>

</asp:Content>

