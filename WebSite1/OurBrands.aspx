<%@ Page Title="" Language="C#" MasterPageFile="ShoeInfinityAndBeyond.master" AutoEventWireup="true" CodeFile="OurBrands.aspx.cs" Inherits="OurBrands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

      
        .brandUl
        {   width:975px;
            float: left;
            border: black 1px solid;
             display: inline;
            opacity: 0.95;
            padding: 0;
            margin: 15px 15px 15px 20px;
            list-style: none;
        }

            .brandUl li {
                 display: inline;

            }

        .brandUl li img{
            width:310px;
            height: 208px;
            border: rgb(109,109,109) 3px solid;
            border: lightgray 3px solid;
            padding: 3px;
            
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="ourBrands" runat="server" Text="Our Brands" Font-Size="XX-Large" Style="text-align: left"></asp:Label>
<br />
    
    <ul class="brandUl">
        <li class="brand_logo"><img alt="nike_logo" src="Images/OurBrandsImg/Nike_logo.jpg" /></li>
        <li class="brand_logo"><img alt="addidas_logo" src="Images/OurBrandsImg/adidas_Logo.jpg" /></li>            
        <li class="brand_logo"><img alt="new_balance_logo" src="Images/OurBrandsImg/New_Balance_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="puma_logo" src="Images/OurBrandsImg/Puma_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="converse_logo" src="Images/OurBrandsImg/Converse_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="vans_logo" src="Images/OurBrandsImg/Vans_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="asics_logo" src="Images/OurBrandsImg/Asics_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="timberland_logo" src="Images/OurBrandsImg/Timberland_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="lacoste_logo" src="Images/OurBrandsImg/Lacoste_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="birken_logo" src="Images/OurBrandsImg/Birkenstock_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="hunter_logo" src="Images/OurBrandsImg/Hunter_Logo.jpg"/></li>
        <li class="brand_logo"><img alt="ugg_logo" src="Images/OurBrandsImg/UGG_Logo.jpg"/></li>           
    <br />
    </ul>
    <br />    
   
</asp:Content>