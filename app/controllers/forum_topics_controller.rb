class ForumTopicsController < ApplicationController

  def index
    @forum_topics = ForumTopic.all
  end
  def new
    @forum_topic =  ForumTopic.new
  end

  def create
    @forum_topic =  ForumTopic.new(forum_topic_params)
    if @forum_topic.save
      redirect_to @forum_topic
    else
     flash[:notice] = "Oops forum topic wasn't created."
    end
  end

  def show
    @forum_topic = ForumTopic.find(params[:id])
  end

  private

  def forum_topic_params
    params.require(:forum_topic).permit(:title, :archived)
  end
end
