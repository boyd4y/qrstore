Spree::Core::Engine.routes.prepend do
  namespace :api, :defaults => { :format => 'json' } do
	  namespace :users do
	    post   :sign_up
	    post   :sign_in
	  end
  end
end
