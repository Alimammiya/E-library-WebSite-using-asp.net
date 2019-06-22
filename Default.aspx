﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FEEDBACK </title>
    <link href="images/titallogo.png"  rel="icon" type="image/png"/>

    <style type="text/css">
        .auto-style1 {
            width: 86px;
        }

        .auto-style2 {
            width: 201px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="formDesign">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style1">Name</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtName" runat="server" Width="185px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Provide Name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Email</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtEmail" runat="server" Width="185px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Provide Email" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID is Incorrect" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Comment</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtComment" runat="server" Height="44px" TextMode="MultiLine" Width="185px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComment" ErrorMessage="Please Provide Comment" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btn_Submit" runat="server" Text="Post Comment" OnClick="btn_Submit_Click" CssClass="buttonSubmit" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
            <h4 style="text-decoration:underline;">Comments:</h4>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="commentbox">
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'>'></asp:Label></b>&nbsp;(<asp:Label ID="Label2" runat="server" Text='<%#Eval("Email") %>'>'></asp:Label>):<br />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Comment") %>'></asp:Label><br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 8px; margin: 2px; background: #007acc; border: solid 1px blue; font: 8px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White" Font-Bold="True" CausesValidation="false"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
