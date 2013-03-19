if Spree.user_class
  Spree.user_class.class_eval do
    has_many :qrproduct, :dependent => :destroy
  end
end
