class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.name :string
      t.description :text
      t.lat :float
      t.long :float

      t.timestamps
    end
  end
end
