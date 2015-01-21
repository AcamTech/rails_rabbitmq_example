class DashboardController < ApplicationController
  def index
    @posts = RecentPosts.list
  end
end