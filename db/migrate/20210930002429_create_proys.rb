class CreateProys < ActiveRecord::Migration[6.1]
  def change
    create_table :proys do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
  end
end
