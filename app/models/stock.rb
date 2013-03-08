# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  symbol     :string(255)
#  user_id    :integer
#  quantity   :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :name, :symbol, :user_id, :quantity, :price
  belongs_to  :user, :inverse_of =>:stocks

  def position
    self.price * self.quantity
  end

  before_save :buy_stock
  private

  def buy_stock
    begin
      quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, self.symbol)[self.symbol]
    rescue
      puts "Oh oh. Yahoo is out to lunch"
    end

    if quote.present?
      self.symbol = quote.symbol
      self.price = quote.lastTrade
      self.name = quote.name
    end
  end
end
