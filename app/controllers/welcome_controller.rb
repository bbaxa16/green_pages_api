class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: 'green-pages API'}
  end
end
