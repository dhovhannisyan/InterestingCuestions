class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :email
      

      t.timestamps
    end
  end
end
