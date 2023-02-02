class Student < ApplicationRecord
    validates :name, presence: :true, allow_nil: :false

    belongs_to :universe
    enum gender:{
        male: 0,
        female: 1,
        not_said: 2
    }
end
