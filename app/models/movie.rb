class Movie < ActiveRecord::Base
  has_many :reviews

  #allows setting values through code/console
  def self.all_ratings ; %w[G PG PG-13 R NC-17] ; end  #array of string ratings

  #verify valid input from user
  validates :title, :presence => true;
  validates :release_date, :presence => true;
  validate :released_1930_or_later
  validates :rating, :inclusion => {:in => Movie.all_ratings},
            :unless => :grandfathered?
  @@grandfathered_date = Date.parse('1 Nov 1968')
  def grandfathered? ; self.release_date >= @@grandfathered_date ; end

  def released_1930_or_later
    errors.add(:release_date, "must be 1930 or later") if
        self.release_date < Date.parse('1 Jan 1930')
  end

  #before_save :capitalize_title
  def capitalize_title
    self.title = self.title.split(/s+/).map(&:downcase).map(&:capitalize).join(' ')
  end

  attr_accessible :title, :rating, :description, :release_date
end