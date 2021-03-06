class Moviegoer < ActiveRecord::Base
  has_many :reviews
  attr_protected :name, :provider, :uid
  def self.create_with_omniauth(auth)
    Moviegoer.create!(
        :provider => auth["provider"],
        :uid => auth["uid"],
        :name => auth["info"]["name"])
  end
end
