class GossipsController < ApplicationController

  def new
    @gossips = Gossip.new
  end

  def create
    my_params = params["gossip"]
    Gossip.create(title:my_params["title"], content:my_params['content'], anonymous_gossiper:my_params["anonymous_gossiper"])
    redirect_to gossips_path
  end

  def show
    @gossip_id = Gossip.find(params["id"])
    @comments = @gossip_id.comments
  end

  def index
    @all_gossips = Gossip.all
    # @comments = @gossip_id.comments
    # @all_comments = @comments.count

  end

  def edit
    @gossip_id = Gossip.find(params["id"])

  end

  def update
    @gossip_id = Gossip.find(params["id"])
    gossip_params = params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
    @gossip_id.update(gossip_params)
    redirect_to '/' 
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/'
  end
end
