class Power < ApplicationRecord
    has_many :hero_powers 
    has_many :heros, through: :hero_powers

    validates :description, presence: true
    validates :description, length: { minimum: 20 }

    # validate :is_valid
  
  #Custom validation
#   def is_valid
#     unless description.valid? 
#         render json: { errors: invalid.power.errors.full_messages }, status: :unprocessable_entity
#     end

#   end
end
