using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

[assembly: WebResource("CustomExtenders.SelectAllCheckBox.SelectAllCheckBoxBehavior.js", "text/javascript")]

namespace CustomExtenders.SelectAllCheckBox
{
    [Designer(typeof(SelectAllCheckBoxDesigner))]
    [ClientScriptResource("CustomExtenders.SelectAllCheckBoxBehavior", "CustomExtenders.SelectAllCheckBox.SelectAllCheckBoxBehavior.js")]
    [TargetControlType(typeof(GridView))]
    public class SelectAllCheckBoxExtender : ExtenderControlBase
    {
        [ExtenderControlProperty]
        [DefaultValue("")]
        public string HeaderCheckBoxID
        {
            get { return GetPropertyValue("HeaderCheckBoxID", ""); }
            set { SetPropertyValue("HeaderCheckBoxID", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string RowCheckBoxID
        {
            get { return GetPropertyValue("RowCheckBoxID", ""); }
            set { SetPropertyValue("RowCheckBoxID", value); }
        }
    }
}
