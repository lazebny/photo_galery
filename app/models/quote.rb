class Quote < PhotoGallery::Base
  include Adminable::Quote

  class << self
    def day_qoute
      quote = Rails.cache.fetch day_qoute_cache_key
      unless quote
        quote = Quote.all.sample
        cache_quote quote
      end
      quote
      quote = Quote.all.sample
    end

    def day_qoute_cache_key
      'Quote.day_qoute'
    end

    def cache_quote(quote)
      Rails.cache.write(
        day_qoute_cache_key,
        quote,
        day_qoute_expires
      )
    end

    def day_qoute_expires
      time = Time.now
      {
        expires_in: (time.end_of_day - time)
      }
    end
  end
end
