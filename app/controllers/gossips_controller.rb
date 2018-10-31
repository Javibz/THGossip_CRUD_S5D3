class GossipsController < ApplicationController

  def new
    @gossips = Gossip.new
  end

  def create
    my_params = params["gossip"]
    Gossip.create(title:my_params["title"], content:my_params['content'], anonymous_gossiper:my_params["anonymous_gossiper"])
  end

  def show
    @gossip_id = Gossip.find(params["id"])
  end

  def index
    @all_gossips = Gossip.all
  end

  def edit
  end

  def update
  end
end
