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
end
