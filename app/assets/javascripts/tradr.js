$(function() {
  $('#close_user_form_button').click(close_new_user_form);
  $('#close_stock_form_button').click(close_buy_stock_form);
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
