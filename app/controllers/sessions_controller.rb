class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def show
    @sessions = Session.find(params[:id])
  end
end
