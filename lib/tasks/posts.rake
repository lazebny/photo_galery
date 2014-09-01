namespace :posts do
  task fill: :environment do
    Post.destroy_all
    images_dir = Rails.root.join 'db/samples/posts/images'
    posts = YAML.load_file Rails.root.join('db/samples/posts/list.yml')
    posts.each do |post|
      Post.create(
        title: post['title'],
        content: post['content'],
        image: File.open(images_dir.join(post['image']))
      )
    end

    p ['posts', Post.count].join ': '
  end
end