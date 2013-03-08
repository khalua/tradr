# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  balance         :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :balance
  has_many :stocks, :inverse_of => :user
  has_secure_password

  def positions_total
    stocks.map(&:position).reduce(:+).to_i
  end
end
