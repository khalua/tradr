$(function() {
  $('#close_user_form_button').click(close_new_user_form);
  $('#close_stock_form_button').click(close_buy_stock_form);
  $('.box').click(show_graph);
});

// forms for stocks and users
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

// let's get some graph shit on!
function show_graph()
{
  symbol = $(this).children().attr('name');
  console.log(symbol);
  get_data(symbol);

}

function get_data(symbol)
{

  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/stocks/quote/" + symbol
  }).done(process_quote);

return false;

}

function process_quote(quote)
{

  console.log(quote);
}