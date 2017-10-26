using System;
using System.Web.UI.WebControls;

namespace WebValidationControlDemo
{
    public partial class FrmCustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valEvenNumber_ServerValidate(
            object source, ServerValidateEventArgs args)
        {
            //args에 넘겨져 온 값을 담고 있다

            if (Convert.ToInt32(args.Value) % 2 == 0)
            {
                args.IsValid = true; //유효성 검사 통과
            }
            else
            {
                args.IsValid = false; // 에러 메세지 출력
            }
        }
    }
}