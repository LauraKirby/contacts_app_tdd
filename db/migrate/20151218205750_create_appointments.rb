class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :starts_at

      t.timestamps null: false

      t.references :contact
    end
  end
end
