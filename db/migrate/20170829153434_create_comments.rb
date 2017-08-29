class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :text, null: false, limit: 512
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
