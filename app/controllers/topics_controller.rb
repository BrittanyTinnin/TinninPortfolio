class TopicsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  def index
    @topics = Topic.all
  end

  
  def show
  end
  
  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to topics_url, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
