<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="Rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form runat="server"> 
   <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2" OnActiveViewChanged ="MultiView1_OnActiveViewChanged">
        <asp:View ID="View1" runat="server">
           <table align="center" style="width:80%;" >
                <tr runat="server">
                    <td Width="20%" class="auto-style3"> 
                        Imię</td>
                    <td class="auto-style3" >
                        <asp:TextBox ID="TextBox1" runat="server" Width ="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Nick</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width ="100%"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width ="100%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Wybierz coś</asp:ListItem>
                            <asp:ListItem Value="PJWSTK">Student lub pracownik PJWSTK </asp:ListItem>
                            <asp:ListItem Value="Gosc">Gość </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View2" runat="server">
            <table align="center" style="width:80%;">
                <tr>
                    <td Width="20%">
                        Imię: 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width ="100%"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Nick:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width ="100%"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Nazwisko:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width ="100%"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Kontakt: e-mail</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width ="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Nr_Studenta/logn</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width ="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Hasło:</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width ="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Powtórz hasło:</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width ="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="OK"  Width ="25%" align="left"/>
                        <asp:Button ID="Button2" runat="server" Text="Przejdź do wyszukiwania"  Width ="45%" align="right"/>
                    </td>
                    <td></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table  align="center" style="width:80%;" id="tabView3">
                <tr>
                    <td Width="20%">
                        Imię:</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Nick:</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Dane Statystyczne</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Rok urodzenia:</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        Grupa statystyczna:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="100%">
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Informatyk</asp:ListItem>
                            <asp:ListItem Value="Poczatkujacy">Początkujący</asp:ListItem>
                        </asp:DropDownList></td>
                    <td></td>
                </tr>
                <tr >
                    <td class="auto-style1">
                        Czy chcesz się zarejestrować?</td>
                    <td class="auto-style1">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Tak" Checked ="True" AutoPostBack="True" OnCheckedChanged ="CheckBox1_OnCheckedChanged"  /></td>
                    <td class="auto-style1"></td>
                </tr>
            
                <tr id="trNazwisko" runat="server">
                    <td >
                        Nazwisko:</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"  Width="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr id="trEmail" runat="server">
                    <td>
                        Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Width ="100%"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="OK" Width ="25%" align="left"/>
                        <asp:Button ID="Button4" runat="server" Text="Wyczyść" Width ="45%" align="right"/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td ></td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Przejdź do wyszukiwania" Width ="45%"/></td>
                    <td></td>
                </tr>


            </table>
        </asp:View>
    </asp:MultiView>
 </form>
</body>
</html>
