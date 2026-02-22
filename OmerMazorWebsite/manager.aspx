<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page">
        <div class="manager-box">
            <h1>Search Users</h1>
            <div class="row">
                <label>First name: </label>
                <input type="text" name="firstname" /><br />
            </div>
            <div class="row">
                <label>Last name: </label>
                <input type="text" name="lastname" /><br />
            </div>

            <div class="row">
               <input class="btn" type="submit" value="send"/><br />
            </div>
        </div>
    </div>
    
<style>

    .page{
        
        display: flex;
        justify-content: center;
        width: 100%;
        height: 90vh;
        align-items: center;
    }

    .manager-box{
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
    }

    .row{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: flex-start;
        margin-bottom: 10px;
    }
    .btn {
        padding: 5px 15px;
        margin-top: 10px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .btn:hover{
        background-color: #0056b3;
    }
</style>
</asp:Content>