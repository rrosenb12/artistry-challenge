class Instrument < ApplicationRecord
    has_many :sessions
    has_many :artists, through: :sessions

    def name_and_classification
        " #{self.name} - #{self.classification} "
    end
end
