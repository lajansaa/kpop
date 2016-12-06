class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.string :name
      t.text :profile_img
      t.hstore :judging_criteria, default: {}, null: false

      t.timestamps
    end
  end
end
