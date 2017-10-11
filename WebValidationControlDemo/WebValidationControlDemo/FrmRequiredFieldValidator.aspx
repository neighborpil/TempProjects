﻿<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="FrmRequiredFieldValidator.aspx.cs" 
    Inherits="WebValidationControlDemo.FrmRequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>입력 확인 유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>입력 확인 유효성 검사 컨트롤</h3>

        아이디 : 
        <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valUserId" runat="server" 
            ControlToValidate="txtUserId"
            Display="Dynamic"
            ErrorMessage="아이디를 입력하시오.">
        </asp:RequiredFieldValidator>
        (필수)ㅠ
        <br />
        암호 :
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valPassword" runat="server" 
            ControlToValidate="txtPassword"
            Display="Dynamic"
            ErrorMessage="암호를 입력하시오.">
        </asp:RequiredFieldValidator>
        (필수)
        <hr />
        <asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click">로그인</asp:LinkButton>

    </div>
    </form>
</body>
</html>