class Universe < ApplicationRecord
has_many :students
    enum status:{
        active: 0,
        inactive: 1
    }
end
