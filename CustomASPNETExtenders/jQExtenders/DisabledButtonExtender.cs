using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

[assembly: WebResource("CustomExtenders.DisabledButtonBehavior.js", "text/javascript")]

namespace CustomExtenders
{
    [Designer(typeof(DisabledButtonDesigner))]
    [ClientScriptResource("CustomExtenders.DisabledButtonBehavior", "CustomExtenders.DisabledButtonBehavior.js")]
    [TargetControlType(typeof (TextBox))]
    public class DisabledButtonExtender : ExtenderControlBase
    {
        [ExtenderControlProperty]
        [DefaultValue("")]
        [IDReferenceProperty(typeof (Button))]
        public string TargetButtonID
        {
            get { return GetPropertyValue("TargetButtonID", ""); }
            set { SetPropertyValue("TargetButtonID", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string DisabledText
        {
            get { return GetPropertyValue("DisabledText", ""); }
            set { SetPropertyValue("DisabledText", value); }
        }
    }
}
