class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :github
      t.string :linkdn
      t.string :facebook
      t.string :twitter
      t.string :reddit
      t.string :youtube

      t.timestamps
    end
  end
end
