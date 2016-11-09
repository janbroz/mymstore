class ReplacementsController < ApplicationController
  def index

  end

  def new
    
    #render nothing: true
  end

  def create
    puts params[:replacement]
    redirect_to :action => :index
  end

  def update
  end

  def destroy
  end

  
end
