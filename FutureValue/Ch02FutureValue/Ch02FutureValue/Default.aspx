<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ch02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2: Future Value</title>
    <style type="text/css">
        img{height : 120px;
            width: 120px;
        }
    </style>
</head>
<body>
    <img src="Images/ico-moneymarket.png" alt="Murach Logo"/>
    <h1>401K Future Value Calculator</h1>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
                <h1>Monthly investment</h1>
                    <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" Height="22px" Width="147px">
                    </asp:DropDownList>
                <h3 class="auto-style2">Annual interest rate</h3>
                    <asp:TextBox ID="txtInterestRate" runat="server" Text="3.0"></asp:TextBox>
                <h3 class="auto-style2">Number of years</h3>
                    <asp:TextBox ID="txtYears" runat="server">10</asp:TextBox>
                <h3>Future value</h3>
                    <asp:Label ID="lblFutureValue" runat="server" Font-Bold="True"></asp:Label>
                    <br />
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="122px" OnClick="btnCalculate_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="122px" CausesValidation="False" OnClick="btnClear_Click" />
        </table>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Interest rate is required." ControlToValidate="txtInterestRate" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Interest rate invalid." ControlToValidate="txtInterestRate" 
            Display="Dynamic" ForeColor="Red" Type="Double"
            MaximumValue="20" MinimumValue="1"></asp:RangeValidator><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Years number required." ControlToValidate="txtYears" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="Years out of range." ControlToValidate="txtYears" Type="Integer"
            Display="Dynamic" ForeColor="Red" MaximumValue="45" MinimumValue="1"></asp:RangeValidator>
    </div>
    </form>
</body>
</html>