class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references, :user
      t.string, :fname
      t.string, :lname
      t.string, :street_address
      t.string, :city
      t.string, :state
      t.string, :country
      t.string, :zip
      t.string, :email
      t.string :cell,
      t.string :string,
      t.string, :fbhandle
      t.string, :twhandle
      t.string, :lihandle
      t.string, :insthandle
      t.boolean, :hractive
      t.string, :focuses
      t.sting, :title
      t.string, :profession
      t.string, :skills
      t.attachment, :avatar
      t.string :username

      t.timestamps null: false
    end
  end
end
