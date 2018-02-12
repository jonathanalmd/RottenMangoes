class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
