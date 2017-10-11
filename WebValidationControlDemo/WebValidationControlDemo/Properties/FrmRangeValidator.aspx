<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="FrmRangeValidator.aspx.cs" 
    Inherits="WebValidationControlDemo.Properties.FrmRangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>범위 확인 유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>범위 확인 유효성 검사 컨트롤</h3>

            나이 :
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="valAge" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="1" MaximumValue="150" Type="Integer"
                Display="Static"
                ErrorMessage="나이는 1~150 사이의 정수입니다."></asp:RangeValidator>
            <br />

            학점 :
            <asp:TextBox ID="txtScore" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="valScore" runat="server"
                ControlToValidate="txtScore"
                MinimumValue="A" MaximumValue="F" Type="String"
                ErrorMessage="학점은 A부터 F까지 입니다"></asp:RangeValidator>

            <hr />
            <asp:LinkButton ID="btnCheck" runat="server">체크</asp:LinkButton>
        </div>
    </form>
</body>
</html>
