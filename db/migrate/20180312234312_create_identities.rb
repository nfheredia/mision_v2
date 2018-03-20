class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :address
      t.string :phone
      t.string :profession
      t.string :provider
      t.string :access_token
      t.string :refresh_token
      t.string :uid
      t.string :image
      t.string :urls
    end
  end
end
