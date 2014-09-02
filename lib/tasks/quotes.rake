namespace :quotes do
  task fill: :environment do
    filename = Rails.root.join 'db/samples/quotes/list.yml'
    quotes = YAML.load_file filename
    quotes.each do |quote|
      Quote.create quote
    end
  end
end