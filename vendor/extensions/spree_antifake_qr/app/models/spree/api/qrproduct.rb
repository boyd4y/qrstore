class Qrproduct < ActiveRecord::Base
  attr_accessible :id, :code, :checked, :created_at
  belongs_to :users
  belongs_to :factory
end
