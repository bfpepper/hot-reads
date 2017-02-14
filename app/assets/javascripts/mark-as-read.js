$( document ).ready(function(){
  $("body").on("click", ".mark-read", markAsRead)
})

function markAsRead(e) {
  e.preventDefault();

  //var $link = .parents('.link');
  var linkId = $(this).data('link-id');

  $.ajax({
    type: "PATCH",
    url: "http://localhost:3001/api/v1/links/" + linkId,
    data: { read: true },
  }).then(updateLinkStatus)
    .fail(displayFailure);
}

function updateLinkStatus(link) {
  console.log('link', link);
  $('.link[data-link-id=' + link.id + ']').find(".read-status").text(link.read);
}

function displayFailure(failureData){
  console.log("FAILED attempt to update Link: " + failureData.responseText);
}
