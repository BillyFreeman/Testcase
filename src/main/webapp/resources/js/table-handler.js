//Stores current form mode
var mode = "Create";

//Changes form's mode to "Edit": changes url, fill all inputs with associated bean properties, changes heading and submit button content
var toggleFormToEditMode = function (id, name, browser, platform, version, cssGrade) {
    mode = "Edit";
    $("#tc-form-heading").html("<i class='fa fa-arrow-left'> Back to the Create mode");
    $("#tc-form-heading").addClass("tc-highlight");
    $("#tc-engine-form").attr("action", "update/engine");
    $("#tc-hidden-id").attr("value", id);
    $("#tc-rendering-engine").attr("value", name);
    $("#tc-browser").attr("value", browser);
    $("#tc-platform").attr("value", platform);
    $("#tc-engine-version").attr("value", version);
    $("#tc-css-grade").attr("value", cssGrade);
    $("#tc-submit-button").html("Edit");
};

//Changes form's mode to "Create": changes url, delete all values from the inputs, changes heading and submit button content
var toggleFormToCreateMode = function () {
    if (mode !== "Create") {
        mode = "Create";
        $("#tc-form-heading").html("Add new engine");
        $("#tc-form-heading").removeClass("tc-highlight");
        $("#tc-engine-form").attr("action", "create/engine");
        $("#tc-hidden-id").attr("value", "");
        $("#tc-rendering-engine").attr("value", "");
        $("#tc-browser").attr("value", "");
        $("#tc-platform").attr("value", "");
        $("#tc-engine-version").attr("value", "");
        $("#tc-css-grade").attr("value", "");
        $("#tc-submit-button").html("Create");
    }
};


