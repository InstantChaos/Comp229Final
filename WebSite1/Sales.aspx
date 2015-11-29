<%@ Page Title="" Language="C#" MasterPageFile="~/ShoeInfinityAndBeyond.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="Sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 236px;
        }
        .auto-style2 {
            width: 469px;
        }
        .auto-style3 {
            width: 83px;
        }
        .auto-style4 {
            width: 105px;
        }
        .auto-style5 {
            width: 117px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table>
	<tr>
		<th class="auto-style1">Product</th>
		<th class="auto-style2">Information</th>
        <th class="auto-style3">Before</th>
		<th class="auto-style5">Sale Discount</th>
        <th class="auto-style4">Total</th>
	</tr>

    <tr>
        <td style="width: 150px">
		<img alt="BuzzShoes" height="200" src="images/buzzlightyear.jpg" width="300" /></td>
        <td>
		<h4 class="auto-style6">Toy Story</h4>
		</td>
        <td>
            <h3 class="auto-style6">$99.99</h3>
        </td>
        <td> 
            <h3 class="auto-style6"> 50% </h3>
        </td>        <td>
            <h3 class="auto-style6"> $49.98</h3>
        </td>
    </tr>
   </table>
</asp:Content>

