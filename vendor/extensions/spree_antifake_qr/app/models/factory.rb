class Factory < ActiveRecord::Base
	attr_accessible :id, :name, :description
    has_many :qrproduct, :dependent => :destroy
    has_one :users
end
