class PostsController < ApplicationController
  before_action :find_forum_topic
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = @forum_topic.posts.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to forum_topic_post_path(id: @post.id)
    else
      render "new"
    end
  end

  def show
    @post = @forum_topic.posts.find(params[:id])
  end

  private

  def find_forum_topic
    @forum_topic = ForumTopic.find(params[:forum_topic_id])
  end

  def post_params
    params.require(:post).permit(:content, :forum_topic_id)
  end
end
