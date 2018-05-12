class Champion < ApplicationRecord
    has_many :skins
    validates :name, uniqueness: true
end
