class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :email
      t.string :cell
      t.date :date

      t.timestamps
    end
  end
end
