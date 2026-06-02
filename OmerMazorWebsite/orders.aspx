<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function checkAll() {
            f = true;
            f = f && validateOrder();

            return f;
        }

        function validateOrder() {
            product = document.getElementById("products").value;

            if (product === "0") {
                alert("Please select a product");
                return false;
            }

            return true;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form class="page" onsubmit="return checkAll();" runat="server">
    <div class="order-content">
        <h1>Order</h1>
        <h5>Use the box below to choose a product</h5>
        <div class="product-selection">
            <select name="products" id="products" class="products">
                <option value="0">Select product</option>
                <option value="steak">Steak</option>
                <option value="fish">Fish</option>
                <option value="whiskey">Whiskey</option>
                <option value="beer">Beer</option>
            </select>
        </div>
        <input class="search-button" type="submit" value="Order" />
    </div> 
</form>
    <style>
        .page{
            display: flex;
            flex-direction: column;
            align-content: center;
            align-items: center;
            height: 70vh;
            width: 100%;
        }

        .order-content{
            background-color: rgba(0, 0, 0, 0.75);
            justify-content: center;
            border-radius: 20px;
            align-items: center;
            display: flex;
            margin-top: 5%;
            height: 50%;
            width: 30%;
            flex-direction: column;
            padding-bottom: 5%;
        }

        .order-content h1{
            color: white;
        }

        .order-content h5{
            color: yellow;
        }

        .search-button {
            padding: 5px 15px;
            margin-top: 5%;
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

