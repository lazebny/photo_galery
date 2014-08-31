namespace :galeries do
  task fill: :environment do
    Galery.all.destroy_all

    dir = Rails.root.join 'db/samples/galeries/images'
    images = Dir.entries(dir).select{ |name| ['.', '..'].exclude? name }

    categories = YAML.load_file Rails.root.join('db/samples/galeries/list.yml')
    categories.each do |category_name|
      galery =
        Galery.find_or_initialize_by(
          name: category_name
        )
      galery.save
      galery.images.destroy_all

      20.times do
        galery.images.create(
          src: File.open(File.join(dir, images.sample))
        )
      end
    end

    p ['categories', Galery.all.pluck(:name).join(';')].join ': '
  end
end
