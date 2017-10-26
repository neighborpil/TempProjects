<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmValidationSummary.aspx.cs" Inherits="WebValidationControlDemo.FrmValidationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>유효성 검사 요약 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>유효성 검사 요약 컨트롤</h3>

            아이디 :
            <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUserId" Display="None"
                ErrorMessage="아이디를 입력하시오"></asp:RequiredFieldValidator>
            (필수)
            <br />

            암호:
            <asp:TextBox ID="txtPassword" runat="server"
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword" Display="None"
                ErrorMessage="암호를 입력하시오."></asp:RequiredFieldValidator>
            (필수)
            <hr />

            <asp:LinkButton ID="btnLogin" runat="server">로그인</asp:LinkButton>
            <hr />
            <asp:ValidationSummary ID="valSummary" runat="server" 
                ShowMessageBox="true"
                ShowSummary="false"
                DisplayMode="BulletList"/>

        </div>
    </form>
</body>
</html>
