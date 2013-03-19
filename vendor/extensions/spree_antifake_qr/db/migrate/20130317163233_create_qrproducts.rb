class CreateQrproducts < ActiveRecord::Migration
  	def up
	    create_table :qrproducts do |t|
	    	t.integer :id
	    	t.integer :code
	    	t.boolean :checked
	    	t.timestamps :created_at
	    	t.references :spree_users
	    	t.references :spree_factory
	      	t.timestamps
	    end
  	end

	def down
	    drop_table :qrproducts
  	end
end
