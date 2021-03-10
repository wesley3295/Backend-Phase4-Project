class UserSerializer
  include FastJsonapi::ObjectSerializer
 
  attributes :id, :first_name, :last_name, :email, :github, :linkdn, :facebook, :twitter, :reddit, :youtube, :id
   has_many :projects, serializer: ProjectSerializer
end
