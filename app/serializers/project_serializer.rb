class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :user
  attributes :id, :title, :video_link, :project_link, :cohort, :blog_link, :user_id
end
