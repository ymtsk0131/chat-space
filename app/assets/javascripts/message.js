$(function(){
  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var url = $(this).attr('action');
    $.ajax({
      url: url
      type: 'POST'
      data: formData,
      datatype: 'json',
      processData: false,
      contentType: false
    })
  })
})
