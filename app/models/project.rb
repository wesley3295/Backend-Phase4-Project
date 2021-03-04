class Project < ApplicationRecord
  belongs_to :user
  validates :project_link, presence: true
    validates :cohort, presence: true
end
