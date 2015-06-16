class ForumTopicsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @forum_topics = ForumTopic.all
  end

  def new
    @forum_topic =  ForumTopic.new
  end

  def create
    @forum_topic =  ForumTopic.new(forum_topic_params)
    @forum_topic = current_user.forum_topics.new(forum_topic_params)
    if @forum_topic.save
      flash[:notice] = "Forum Topic was successfully created."
      redirect_to @forum_topic
    else
      flash[:alert] = "Oops forum topic wasn't created."
      redirect_to @forum_topic
    end
  end

  def show
    @forum_topic = ForumTopic.find(params[:id])
    @post = ForumTopic.find(params[:id])
  end

  def update
    @forum_topic = ForumTopic.find(params[:id])
    if @forum_topic.update(forum_topic_params)
      flash[:notice] = "This Forum Topic has been updated"
    else
      flash[:alert] = "There was an error updating this Forum Topic"
    end
    redirect_to @forum_topic
  end

  private

  def forum_topic_params
    params.require(:forum_topic).permit(:title, :archived, :user_id)
  end
end
