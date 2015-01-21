class PostsWorker
  include Sneakers::Worker
  # This worker will connect to "dashboard.posts" queue
  # env is set to nil since to avoid the queue be named: 'dashboard.posts_development'
  from_queue "dashboard.posts", env: nil

  def work(raw_post)
    RecentPosts.push(raw_post)
    ack! # confirm message received
  end
end