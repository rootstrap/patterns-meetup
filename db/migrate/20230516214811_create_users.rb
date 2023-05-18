class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
