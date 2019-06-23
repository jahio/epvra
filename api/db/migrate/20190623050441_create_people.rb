class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'
    create_table :people, id: :uuid do |t|
      t.string      :password_digest
      t.string      :first_name
      t.string      :last_name
      t.string      :address
      t.string      :city
      t.string      :state
      t.string      :zip
      t.string      :phone
      t.string      :email
      t.string      :facebook
      t.string      :instagram
      t.string      :twitter
      t.string      :linkedin
      t.text        :bio
      t.timestamps
    end
    add_index :people, :last_name
    add_index :people, :email
  end
end
