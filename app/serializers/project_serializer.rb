class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :user
  attributes :title, :video_link, :project_link, :cohort, :blog_link, :user_id, :id
end
