class AddQrToUser < ActiveRecord::Migration
  def up

    say 'set up qr for users'
    
    add_column :spree_users, :qr_usertype, :integer
    add_column :spree_users, :qr_factorycode, :integer
  end
 
  def down
    say 'remove remove_column'
    remove_column :spree_users, :qr_usertype
    remove_column :spree_users, :qr_factorycode
  end

end