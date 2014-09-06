namespace :galleries do
  task fill: :environment do
    Gallery.all.destroy_all

    dir = Rails.root.join 'db/samples/galleries/images'
    images = Dir.entries(dir).select{ |name| ['.', '..'].exclude? name }

    categories = YAML.load_file Rails.root.join('db/samples/galleries/list.yml')
    categories.each do |category_name|
      gallery =
        Gallery.find_or_initialize_by(
          name: category_name
        )
      gallery.save
      gallery.images.destroy_all

      20.times do
        gallery.images.create(
          src: File.open(File.join(dir, images.sample))
        )
      end
    end

    p ['categories', Gallery.all.pluck(:name).join(';')].join ': '
  end
end
