class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.column :body, :string
      t.column :votes, :integer
      t.column :post_id, :integer
    end
  end
end
