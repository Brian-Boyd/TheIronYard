var when_page_is_ready = function() {

  $(document.body).on("click", "a.change_workflow", function() {
    $.ajax({
      type: "PATCH",
      url: $(this).attr("workflow_url"),
      dataType: "script"
    })
  });

  // $(document.body).on("submit", ".patient_search", function() {
  //   $.ajax({
  //     type: "GET",
  //     // url: $(this).serialize(),
  //     url: $(this).attr(),
  //     dataType: "script"
  //   })
  // });


}
$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);
