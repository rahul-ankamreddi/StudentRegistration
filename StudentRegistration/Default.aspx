<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <table class="nav-justified">
        <tr>
            <td colspan="4" style="height: 20px; font-size: large;" align="center"> Student form </td>
        </tr>
        <tr>
            <td style="width: 145px" class="modal-sm">
                <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td style="width: 271px" class="modal-sm">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="modal-sm" style="width: 248px">
                <asp:Label ID="Label2" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px" class="modal-sm">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label>
            </td>
            <td style="width: 271px" class="modal-sm">
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Electronics and Electricity</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="modal-sm" style="width: 248px">
                <br />
                <asp:Label ID="Label4" runat="server">DOB</asp:Label>
            </td>
            <td>
                <br />

                <asp:TextBox ID="TextBox4" TextMode="Date" runat="server" Width="250px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 145px" class="modal-sm">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 271px" class="modal-sm">
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="modal-sm" style="width: 250px">
                <br />
                <asp:Label ID="Label6" runat="server" Text="Roll Number"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox6" PlaceHolder="-- 6 - digit number --" runat="server" Width="250px" CssClass="text-center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="save" runat="server" BackColor="#0033CC" BorderStyle="Double" BorderWidth="0px" ForeColor="White" Height="40px" OnClick="save_Click" Text="Save" Width="120px" />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#3366FF" BorderStyle="Double" ForeColor="White" Height="40px" Text="Update" Width="120px" OnClick="Button3_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="Double" BorderWidth="0px" ForeColor="White" Height="40px" style="margin-left: 0; margin-top: 0" Text="Delete" Width="120px" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:Label ID="feedback" runat="server"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Width="962px">
                </asp:GridView>
            </td>
        </tr>
    </table>



</asp:Content>
