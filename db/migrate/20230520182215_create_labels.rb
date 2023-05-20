class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.string :board_id

      t.timestamps
    end
  end
end
