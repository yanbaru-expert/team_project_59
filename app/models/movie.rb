class Movie < ApplicationRecord
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze
  PHP_GENRE_LIST = %w[php]
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  def self.genre_list(genre)
    if genre == "php"
      where(genre: Movie::PHP_GENRE_LIST)
    else
      where(genre: Movie::RAILS_GENRE_LIST)
    end
  end
end
