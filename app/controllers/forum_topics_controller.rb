class ForumTopicsController < ApplicationController

  def new
    @forum_topic =  ForumTopic.new
  end

  def create
    @forum_topic =  ForumTopic.new(forum_topic_params)
  end

  private

  def forum_topic_params
    params.require(:title).permit(:archived)
  end
end
