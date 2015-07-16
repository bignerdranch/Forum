class PostsController < ApplicationController
  before_action :find_forum_topic
  before_action :authenticate_user!

  def new
    @post = Post.new.decorate
  end

  def create
    @post = @forum_topic.posts.new(post_params).decorate
    @post.user = current_user
    if previewed? || !@post.save
      render "new"
    else
      flash[:notice] = "Post successfully created"
      redirect_to forum_topic_path(@forum_topic.id)
    end
  end

  def show
    @post = @forum_topic.posts.find(params[:id]).decorate
  end

  private

  def find_forum_topic
    @forum_topic = ForumTopic.find(params[:forum_topic_id])
  end

  def post_params
    params.require(:post).permit(:content, :forum_topic_id, :post_image, :commit)
  end

  def previewed?
    params[:preview_button]
  end
end
