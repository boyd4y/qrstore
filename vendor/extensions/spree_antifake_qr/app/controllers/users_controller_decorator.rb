module Spree
  module Api
      class UsersController < Spree::Api::BaseController
        respond_to :json

        before_filter :check_for_api_key, :except => [:sign_in_factory, :sign_up, :sign_in]
        before_filter :authenticate_user, :except => [:sign_in_factory, :sign_up, :sign_in]

        def sign_in_factory
          @user = Spree::User.find_by_email("#{params[:user][:code]}@test.com")
          if !@user.present? || !@user.valid_password?(params[:user][:password])
            unauthorized
            return 
          end
          @user.generate_spree_api_key! if @user.spree_api_key.blank?
        end

        def sign_up
          @user = Spree::User.new(params[:user])
          if !@user.save
            unauthorized 
            return 
          end
          @user.generate_spree_api_key!
        end

        def sign_in
          @user = Spree::User.find_by_email('a@a.com')
          if !@user.present? || !@user.valid_password?(params[:user][:password])
            unauthorized
            return 
          end
          @user.generate_spree_api_key! if @user.spree_api_key.blank?
        end
    end
  end
end