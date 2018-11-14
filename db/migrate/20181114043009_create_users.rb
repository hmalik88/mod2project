class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :date_of_birth
      t.string :employment_status
      t.string :location

      t.timestamps
    end
  end
end
