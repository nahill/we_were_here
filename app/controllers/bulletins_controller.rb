class BulletinsController < ApplicationController
  def index
    @msgs = Bulletin.all
    @msg1 = Bulletin.last
    @msg = Bulletin.new
  end
  
  def create
  @msg = Bulletin.new(:title => bulletin_params[:title], :body => bulletin_params[:body]).save
  redirect_to :back
  end

  def edit
  end

  def show
  end
end


private

def bulletin_params
  params.require(:bulletin).permit(:title, :body)
end

