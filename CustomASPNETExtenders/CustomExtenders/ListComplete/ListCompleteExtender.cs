using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

[assembly: WebResource("CustomExtenders.ListComplete.ListCompleteBehavior.js", "text/javascript")]
[assembly: WebResource("CustomExtenders.ListComplete.style.css", "text/css")]
[assembly: WebResource("CustomExtenders.ListComplete.close.gif", "image/gif")]

namespace CustomExtenders.ListComplete
{
    [Designer(typeof(ListCompleteDesigner))]
    [ClientScriptResource("CustomExtenders.ListCompleteBehavior", "CustomExtenders.ListComplete.ListCompleteBehavior.js")]
    [ClientCssResource("CustomExtenders.ListComplete.style.css", LoadOrder = 1)]
    [TargetControlType(typeof(ListBox))]
    public class ListCompleteExtender : ExtenderControlBase
    {
        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);

            string closeImageUrl = Page.ClientScript.GetWebResourceUrl(this.GetType(), "CustomExtenders.ListComplete.close.gif");

            //LiteralControl include = new LiteralControl(closeImageUrl);

            Label lblCloseImageUrl = new Label();
            lblCloseImageUrl.ID = "lblCloseImageUrlListCompleteExtender";
            lblCloseImageUrl.ViewStateMode = ViewStateMode.Disabled;
            lblCloseImageUrl.EnableViewState = false;
            lblCloseImageUrl.Text = closeImageUrl;
            lblCloseImageUrl.Attributes["style"] = "display: none;";

            this.Page.Header.Controls.Add(lblCloseImageUrl);
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string ControlWidth
        {
            get { return GetPropertyValue("ControlWidth", "512px"); }
            set { SetPropertyValue("ControlWidth", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string JsonUrl
        {
            get { return GetPropertyValue("JsonUrl", ""); }
            set { SetPropertyValue("JsonUrl", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool IsCacheAllowed
        {
            get { return GetPropertyValue("IsCacheAllowed", false); }
            set { SetPropertyValue("IsCacheAllowed", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue(0)]
        public int InputFieldTabIndex
        {
            get { return GetPropertyValue("InputFieldTabIndex", 0); }
            set { SetPropertyValue("InputFieldTabIndex", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string TipForSelectAll
        {
            get { return GetPropertyValue("TipForSelectAll", string.Empty); }
            set { SetPropertyValue("TipForSelectAll", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public int MaxItemsAllowed
        {
            get { return GetPropertyValue("MaxItemsAllowed", 10); }
            set { SetPropertyValue("MaxItemsAllowed", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public int MaxItemsShown
        {
            get { return GetPropertyValue("MaxItemsShown", 30); }
            set { SetPropertyValue("MaxItemsShown", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public string TipForItemSelection
        {
            get { return GetPropertyValue("TipForItemSelection", "Start typing ..."); }
            set { SetPropertyValue("TipForItemSelection", value); }
        }

        //public bool FilterFromBeginning
        //{
        //    get { return GetPropertyValue("FilterFromBeginning", false); }
        //    set { SetPropertyValue("FilterFromBeginning", value); }
        //}

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool FilterSelectedItems
        {
            get { return GetPropertyValue("FilterSelectedItems", false); }
            set { SetPropertyValue("FilterSelectedItems", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool IsCaseSensitive
        {
            get { return GetPropertyValue("IsCaseSensitive", false); }
            set { SetPropertyValue("IsCaseSensitive", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool IsFirstItemSelected
        {
            get { return GetPropertyValue("IsFirstItemSelected", false); }
            set { SetPropertyValue("IsFirstItemSelected", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool AllowAddingOnComma
        {
            get { return GetPropertyValue("AllowAddingOnComma", false); }
            set { SetPropertyValue("AllowAddingOnComma", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool AllowAddingOnTab
        {
            get { return GetPropertyValue("AllowAddingOnTab", false); }
            set { SetPropertyValue("AllowAddingOnTab", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public bool AllowAddingNewElements
        {
            get { return GetPropertyValue("AllowAddingNewElements", false); }
            set { SetPropertyValue("AllowAddingNewElements", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public int MaxDropdownHeight
        {
            get { return GetPropertyValue("MaxDropdownHeight", 10); }
            set { SetPropertyValue("MaxDropdownHeight", value); }
        }

        [ExtenderControlProperty]
        [DefaultValue("")]
        public int MinInputLength
        {
            get { return GetPropertyValue("MinInputLength", 1); }
            set { SetPropertyValue("MinInputLength", value); }
        }

    }
}
