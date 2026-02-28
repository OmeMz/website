<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery">
        <div class="gallery-title">
            <h1>Gallery</h1>
        </div>
        <div class="gallery-images">
           
        </div>
    </div>


<style>
    .gallery {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
    }
    .gallery-title {
        text-align: center;
        margin-top: 20px;
        background-color: white;
        padding-top: 0.2%;
        padding-bottom: 0.2%;
        padding-left: 10%;
        padding-right: 10%;
        border-radius: 10px;
    }
    
</style>

</asp:Content>
