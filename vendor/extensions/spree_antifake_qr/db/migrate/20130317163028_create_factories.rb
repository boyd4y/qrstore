class CreateFactories < ActiveRecord::Migration
  	def up
	    create_table :factories do |t|
	    	t.integer :id
	    	t.string :name
	    	t.text :description
	    	t.references :spree_users
	      	t.timestamps
	    end
  	end

	def down
	    drop_table :factories
  	end
end
