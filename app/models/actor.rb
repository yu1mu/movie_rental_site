class Actor < ApplicationRecord
    has_many :appeared_ins, dependent: :destroy
    has_many :movies, :through => :appeared_ins
end
