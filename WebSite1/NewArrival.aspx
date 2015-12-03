<%@ Page Title="" Language="C#" MasterPageFile="ShoeInfinityAndBeyond.master" AutoEventWireup="true" CodeFile="NewArrival.aspx.cs" Inherits="NewArrival" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 236px;
        }

        .auto-style2
        {
            width: 350px;
        }

        .auto-style3
        {
            width: 105px;
        }

        .auto-style4
        {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="nArrival" runat="server" Text="New Arrivals" Font-Size="XX-Large" Style="text-align: left"></asp:Label>

    <br />

    <table>
        <tr>
            <th class="auto-style1">Image</th>
            <th class="auto-style2">Discription</th>
            <th class="auto-style3">Price</th>
        </tr>

        <tr>
            <td style="width: 150px">
                <img alt="BuzzShoes" height="200" src="images/marioshoe.jpg" width="300" /></td>
            <td>
                <h4 class="auto-style4">Nike Mario Shoes</h4>
            </td>
            <td>
                <h3 class="auto-style4">$89.99</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">
                <img alt="BuzzShoes" height="200" src="images/buzzshoe.jpg" width="300" /></td>
            <td>
                <h4 class="auto-style4">Kids BuzzLight year shoes</h4>
            </td>
            <td>
                <h3 class="auto-style4">$49.99</h3>
            </td>
        </tr>
    </table>
</asp:Content>

