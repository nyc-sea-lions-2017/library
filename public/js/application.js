$(document).ready(function() {

$('.add-reader').on('submit', function(e){
  e.preventDefault();
  // debugger
  var that = this
  var url = $(e.target).attr('action')
  var method = $(e.target).attr('method')
  $.ajax({
    url: url,
    method: method
  }).done(function(res){
    console.log(e.target)
    $(e.target).html('<h3 class="read-book">' + res.message + '</h3>')
  })
})

});
