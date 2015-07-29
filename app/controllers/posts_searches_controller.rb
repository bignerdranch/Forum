class PostsSearchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @query = Post.search do
      fulltext params[:search]
    end
    @posts = @query.results
  end
end
