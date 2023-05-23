class Tweet < ApplicationRecord
    validates :UserName, :Description, presence: { message: "Campo Obligado"}
end
