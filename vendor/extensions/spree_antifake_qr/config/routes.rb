Spree::Core::Engine.routes.draw do

	namespace :api, :defaults => { :format => 'json' } do
		  namespace :users do
		    post   :sign_in_factory
		    post   :sign_up
		    post   :sign_in
		  end
	end

  	resources :qrproducts


  	resources :factories


  # Add your extension routes here
end
