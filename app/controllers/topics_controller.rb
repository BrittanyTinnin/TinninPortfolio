class TopicsController < ApplicationController
  before action :set_topic [:show]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def show
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
