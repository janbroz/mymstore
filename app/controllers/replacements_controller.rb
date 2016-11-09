class ReplacementsController < ApplicationController

  def index

  end

  def new
    
    #render nothing: true
  end

  def create
    puts params[:replacement]
    redirect_to :replacements
  end

  def update
  end

  def destroy
  end

  
end
