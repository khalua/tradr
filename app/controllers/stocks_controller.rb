class StocksController < ApplicationController
  def index
    @stocks = @auth.stocks
  end

  def new
    @stock = Stock.new
  end

  def create #for this lab, new = buy
    @stock = Stock.create(params[:stock])
    @auth.stocks << @stock
  end

  def get_quote

  end


end