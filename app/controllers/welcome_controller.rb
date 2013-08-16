class WelcomeController < ApplicationController
  def index
  	@contacts = Contact.all
  end
end
