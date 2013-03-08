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
