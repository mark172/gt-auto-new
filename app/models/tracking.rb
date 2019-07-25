class Tracking < ActiveRecord::Base
    validates :first_name, :last_name, :phone, :email, :origin_city, :origin_state, :origin_zip, :destination_city, :destination_state, :destination_zip, :year, :make, :model, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "not a valid email address", on: :create }
    # validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "not a valid phone number. Format as XXX-XXX-XXXX" }
end
