<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page">
    <asp:Label ID="lblGreeting" runat="server" />
    <body>
    <div class="home-content">
        <div class="about-title">
            <h1>About:</h1>
        </div>
        <div class="about-content">
            <h3>
                Wassup my niggas, this is a website for a made-up restaurant for a school-project
            </h3>
        </div>
    </div>

    </body>

    <style>
        
        .page{
            background-image: url('<%= ResolveUrl("~/images/background.jpg") %>');
            background-size: cover;
            background-position: center; 
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            width: 100%
        
        }

        .about-content {
            text-align: center;
            margin-top: 20px;
            margin-left: 5%;
            margin-right: 5%;
            margin-bottom: 5%;
            background-color: rgba(0, 0, 0, 0.67);
            color: white;
            padding-top: 0.2%;
            padding-bottom: 0.2%;
            padding-left: 10%;
            padding-right: 10%;
            border-radius: 10px;
        }

        .about-title {
            text-align: center;
            margin-left: 5%;
            margin-right: 5%;
            margin-bottom: 5%;
            margin-top: 10%;
            background-color: rgba(0, 0, 0, 0.67);
            color: white;
            padding-top: 0.2%;
            padding-bottom: 0.2%;
            padding-left: 10%;
            padding-right: 10%;
            border-radius: 10px;
        }
    </style>
</div>
</asp:Content>
