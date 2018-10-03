class InitialShema < ActiveRecord::Migration[5.2]
  def change

    create_table :agents do |t|
      t.string :name
      t.text   :experience
      t.string :adress1
      t.string :adress2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
    end

    create_table :avis do |t|
      t.string :comment
      t.string :rating
    end
    create_table :specialties do |t|
      t.string :name
    end

  end
end