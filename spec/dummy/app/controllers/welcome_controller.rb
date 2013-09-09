class WelcomeController < ApplicationController

  def index
    flash[:alert] = 'This is an alert message.'
    flash[:error] = 'This is an error message.'
    flash[:notice] = 'This is a notice message.'
  end

end