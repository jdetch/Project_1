class CreateSkinTypes < ActiveRecord::Migration
  def change
    create_table :skin_types do |t|
      t.string :skin_type_number
      t.integer :max_unprotected_exposure_time
    end
  end
end
