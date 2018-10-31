class StaticPagesController < ApplicationController

  def home
  end
  def new
    @gossips = Gossip.new
  end

  def create
  end

  def show
  end
end
