class CreateDooDads < ActiveRecord::Migration[5.0]
  def change
    create_table :doo_dads do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
