class CreateEventinterests < ActiveRecord::Migration[5.2]
  def change
    create_table :eventinterests do |t|
      t.string :isinterest
      t.references :user, foreign_key: true
      t.references :events, foreign_key: true

      t.timestamps
    end
  end
end
