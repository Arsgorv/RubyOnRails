namespace :rand_users do
desc 'fills test table with a random data'
  task run: :environment do
    #User.destroy_all
    user = User.create! name: 'test_user2', email: 'email2@email.com'
    puts 'User created'
    post = Post.create! title: 'test_post2', body: 'test_post_body_is_not_to_short', user: user
    puts 'Post created'
    comment = Comment.create! body: 'test-comment', user: user, post: post
    puts 'Comment created'
    mark = Mark.create! value: 5, user: user, post: post, comment: comment
    puts 'Mark created'

  end
end