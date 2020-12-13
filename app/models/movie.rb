class Movie < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :appeared_ins, dependent: :destroy
    has_many :actors, :through => :appeared_ins

    has_many :moviequeues, dependent: :destroy
    has_many :users, :through => :moviequeues

    has_many :orders, dependent: :destroy
    has_many :ratings, dependent: :destroy

    def rented? user
        user.orders.find_by(movie_id: self.id)
    end
end
