<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page">
    <div class="gallery">
        <div class="gallery-title">
            <h1>Gallery</h1>
        </div>
        <div class="gallery-images">
            <img src="images/beer.jpg"/>
            <img src="images/whiskeyy.jpg"/>
            <img src="images/fihh.jpg"/>
            <img src="images/anotherjuicyfish.jpg"/>
            <img src="images/morewhiskey.jpg"/>
            <img src="images/juicysteak.jpg"/>
        </div>
    </div>
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
        height: 95%;
        align-items: center;
    
    }

    .gallery {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 20px;
        background-color: rgba(255, 255, 255, 0.5);
        padding-bottom: 5%;
        border-radius: 20px;
        width: 80%;
    }

    .gallery-title {
        text-align: center;
        margin-top: 20px;
        margin-left: 5%;
        margin-right: 5%;
        background-color: rgba(0, 0, 0, 0.67);
        color: white;
        padding-top: 0.2%;
        padding-bottom: 0.2%;
        padding-left: 10%;
        padding-right: 10%;
        border-radius: 10px;
        width: 70%;
    }

    .gallery-images img {
        justify-content: center;
        gap: 5%;
        padding: 5%;
        border-radius: 20px;
    }
    
</style>

</asp:Content>
