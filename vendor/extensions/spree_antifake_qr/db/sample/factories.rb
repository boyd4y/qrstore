
user1 = Spree::Users.create!({
  :email =>  "100@test.com",
  :password => '448ddd517d3abb70045aea6929f02367',
  :qr_usertype => 1,
  :qr_factorycode => 100
}, :without_protection => true)

Spree::Factories.create!({
  :code => user1.qr_factorycode,
  :name => 'P&G',
  :description => 'P&G factory',
  :qr_usertype => 1,
  :spree_users => user1
}, :without_protection => true)

user2 = Spree::Users.create!({
  :email =>  "101@test.com",
  :password => '448ddd517d3abb70045aea6929f02367',
  :qr_usertype => 1,
  :qr_factorycode => 101
}, :without_protection => true)

Spree::Factories.create!({
  :code => user2.qr_factorycode,
  :name => 'P&G2',
  :description => 'P&G factory2',
  :qr_usertype => 1,
  :spree_users => user2
}, :without_protection => true)


