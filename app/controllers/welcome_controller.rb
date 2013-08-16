class WelcomeController < ApplicationController

before_action :redirect_if_logged_in, :only => [:index]
  def index
  	@contacts = Contact.all
  end

  private

  def redirect_if_logged_in
    if user_signed_in?
      redirect_to contacts_path
    end
  end
end
