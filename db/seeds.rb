User.delete_all
Stock.delete_all


u1 = User.create(:name => 'Tony Contreras', :email => 'tony.contreras@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 500000 )
u2 = User.create(:name => 'Olivia Contreras', :email => 'olivia@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 100000)
u3 = User.create(:name => 'Lulu Contreras', :email => 'lulu@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 10000)

s1 = Stock.create(:name => 'Apple Computer', :symbol => 'AAPL', :quantity => 1000 , :price => 432.00 )
s2 = Stock.create(:name => 'Cisco', :symbol => 'CSCO', :quantity => 1000 , :price => 100.00 )
s3 = Stock.create(:name => 'Cisco', :symbol => 'CSCO', :quantity => 1000 , :price => 100.00 )
s4 = Stock.create(:name => 'General Electric', :symbol => 'GE', :quantity => 500 , :price => 50 )
s5 = Stock.create(:name => 'Amazon', :symbol => 'AMZN', :quantity => 500 , :price => 80.23 )

u1.stocks << s1 << s2 << s5
u2.stocks << s3 << s4