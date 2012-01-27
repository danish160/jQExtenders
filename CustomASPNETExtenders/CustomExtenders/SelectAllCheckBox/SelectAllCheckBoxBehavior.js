Type.registerNamespace('CustomExtenders');

CustomExtenders.SelectAllCheckBoxBehavior = function (element) {
    CustomExtenders.SelectAllCheckBoxBehavior.initializeBase(this, [element]);

    this._headerCheckBoxID = null;
    this._rowCheckBoxID = null;
};
CustomExtenders.SelectAllCheckBoxBehavior.prototype = {
    initialize: function() {
        var gridID = $(this).attr("id");

        CustomExtenders.SelectAllCheckBoxBehavior.callBaseMethod(this, 'initialize');

        $(this).find("[id*=" + this._headerCheckBoxID + "]").change(function() {
            if (($(this).attr("checked") == true) || $(this).is(":checked")) {
                if ($("#" + gridID).find("[id*=" + _rowCheckBoxID + "]").length > 0) {
                    $("#" + gridID).find("[id*=" + _rowCheckBoxID + "]").attr("checked", true);
                } else {
                }
            } else {
                $("#" + gridID).find("[id*=" + _rowCheckBoxID + "]").attr("checked", false);
            }
        });


        $(this).find("[id*=" + this._rowCheckBoxID + "]").change(function() {
            var numChecked = 0;

            var totalCheckBoxes = $("#" + gridID).find("[id*=" + this._rowCheckBoxID + "]").length;
            if (totalCheckBoxes > 0) {
                numChecked = $("#" + gridID).find("[id*=" + this._rowCheckBoxID + "]:checked").length;

                if (numChecked > 0) {
                    if (numChecked == totalCheckBoxes)
                        $("#" + gridID).find("[id*=" + this._headerCheckBoxID + "]").attr("checked", true);
                    else
                        $("#" + gridID).find("[id*=" + this._headerCheckBoxID + "]").attr("checked", false);
                } else {
                    $("table.options").hide();
                }
            }
        });
    },

    dispose: function() {
        // Cleanup code 
        CustomExtenders.SelectAllCheckBoxBehavior.callBaseMethod(this, 'dispose');
    },

    // Property accessors 
    //
    get_HeaderCheckBoxID: function() {
        return this._headerCheckBoxID;
    },

    set_HeaderCheckBoxID: function(value) {
        this._headerCheckBoxID = value;
    },

    get_RowCheckBoxID: function() {
        return this._rowCheckBoxID;
    },

    set_RowCheckBoxID: function(value) {
        this._rowCheckBoxID = value;
    }
};
CustomExtenders.SelectAllCheckBoxBehavior.registerClass('CustomExtenders.SelectAllCheckBoxBehavior', Sys.Extended.UI.BehaviorBase);
