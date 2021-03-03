class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :video_link
      t.string :project_link
      t.string :cohort
      t.string :blog_link
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
