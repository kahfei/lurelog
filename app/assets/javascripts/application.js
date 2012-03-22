// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
 $(document).ready(function(){
        $("select#catch_make_id").change(function(){
            var id_value_string = $(this).val();
            if (id_value_string == "") { 
                // if the id is empty remove all the sub_selection options from being selectable and do not do any ajax
                $("select#catch_model_id option").remove();
                var row = "<option value=\"" + "" + "\">" + "" + "</option>";
                $(row).appendTo("select#catch_model_id");
            }
            else {
                // Send the request and update sub category dropdown 
                $.ajax({
                    dataType: "json",
                    cache: false,
                    url: '/models/for_makeid/' + id_value_string,
                    timeout: 2000,
                    error: function(XMLHttpRequest, errorTextStatus, error){
                        alert("Failed to submit : "+ errorTextStatus+" ;"+error);
                    },
                    success: function(data){                    
                        // Clear all options from sub category select 
                        $("select#catch_model_id option").remove();
                        //put in a empty default line
                        var row = "<option value=\"" + "" + "\">" + "" + "</option>";
                        $(row).appendTo("select#catch_model_id");                        
                        // Fill sub category select 
                        $.each(data, function(i, j){
                            row = "<option value=\"" + j.id + "\">" + j.name + "</option>";   
                            $(row).appendTo("select#catch_model_id");                     
                        });             
                     }
                });
            };
                });
    });
