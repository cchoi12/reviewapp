class CreateMegaphones < ActiveRecord::Migration[5.1]
  def change
    create_table :megaphones do |t|
      t.string :body, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
