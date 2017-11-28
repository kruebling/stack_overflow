class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :votes, :integer
      t.column :user_id, :integer
    end
  end
end
