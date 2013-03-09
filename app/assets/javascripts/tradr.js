$(function() {
  $('#close_user_form_button').click(close_new_user_form);
  $('#close_stock_form_button').click(close_buy_stock_form);
  $('.box').click(show_graph);
});

function close_new_user_form()
{
  $('#new_user').hide();
}

function close_buy_stock_form()
{
  $('#new_stock').hide();
}

function hide_buy_stock_button()
{
  $('#show_new_stock_button').hide();
}

function show_graph ()
{
  var symbol = $(this).children().attr('name');
  console.log(symbol);
  get_data();

}

funtion get_data()
{

  var id = $(this).parent().siblings('.clear').prev().text();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
    dataType: 'json',
    type: "post",
    url: "/priorities/" + id + "/up",
    data: {authenticity_token:token}
  }).done(process_priority);
}

}