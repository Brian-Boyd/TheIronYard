$(document).ready(function() {
  $( ".hospital_submit" ).hide();
  $( ".hospital_name, .hospital_location" ).keyup(function() {
    if ($( '.hospital_name' ).val() && $( '.hospital_location' ).val() ) 
        $( '.hospital_submit' ).fadeIn() && 
        $( ".instruct-message" ).replaceWith( "<h6>Please submit form</h6>" );
  });

  $( ".patient_submit" ).hide();
  $( ".patient_name, .patient_email, .patient_description" ).keyup(function() {
    if ($( '.patient_name' ).val() && $( '.patient_email' ).val() && $( '.patient_description' ).val() ) 
        $( '.patient_submit' ).fadeIn() && 
        $( ".instruct-message" ).replaceWith( "<h6>Please submit form</h6>" );
  });

  $( ".doctor_submit" ).hide();
  $( ".doctor_name" ).keyup(function() {
    if ($( '.doctor_name' ).val() ) 
        $( '.doctor_submit' ).fadeIn() && 
        $( ".instruct-message" ).replaceWith( "<h6>Please submit form</h6>" );
  });

  $( ".medication_submit" ).hide();
  $( ".medication_name, .medication_description" ).keyup(function() {
    if ($( '.medication_name' ).val() && $( '.medication_description' ).val() ) 
        $( '.medication_submit' ).fadeIn() && 
        $( ".instruct-message" ).replaceWith( "<h6>Please submit form</h6>" );
  });

  $( "div.notice" ).hide( 9000 );

  // pageSize = 3;

  // showPage = function(page) {
  //     $(".content").hide();
  //     $(".content").each(function(n) {
  //         if (n >= pageSize * (page - 1) && n < pageSize * page)
  //             $(this).show();
  //     });        
  // }
      
  // showPage(1);

  // $("#pagin li a").click(function() {
  //     $("#pagin li a").removeClass("current");
  //     $(this).addClass("current");
  //     showPage(parseInt($(this).text())) 
  // });

});
