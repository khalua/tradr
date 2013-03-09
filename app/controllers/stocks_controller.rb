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

  def quote
    #symbol = Stock.get_quote(params[:symbol])
    symbol = Stock.where(:symbol => params[:symbol]).first
    lastTrade = symbol.get_quote.lastTrade
    render :json => {symbol: symbol.symbol, lastTrade:lastTrade, name: symbol.name}
    # symbol = Hash.new()
    # render :json => [symbol]
  end


end