class User < ApplicationRecord
    has_many :projects
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :github, presence: true
    validates :email, presence: true
    

end
