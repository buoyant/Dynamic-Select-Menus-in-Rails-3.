// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() {

//    jQuery('#regform_district_id').html("<option value=''>Select District</option>");
    jQuery('#regform_state_id').change(function() {

        var data=$('#regform_state_id').val();
        $.ajax({

            type: "POST",
             url: "http://"+location.host+"/dynamic_districts/"+data,
            data: data,

            beforeSend: function()
            {
                //		alert('hi');
                //$('#status').html('<img src="loading.gif">');

            },

            success: function(response)
            {
                 //  alert(response);
                //	$('#regform_district_id').html(html);    //dynamic_districts.js.erb
                   //      $('#status').html(html);


            }

        });
    });
});

