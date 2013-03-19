class CreateFactories < ActiveRecord::Migration
  	def up
	    create_table :factories do |t|	    	
	    	t.integer :code
	    	t.string :name
	    	t.text :description
	    	t.references :spree_users
	      	t.timestamps
	    end

	    add_index :factories :code
  	end

	def down
	    drop_table :factories
  	end
end
