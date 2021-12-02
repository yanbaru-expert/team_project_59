class Text < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }
end