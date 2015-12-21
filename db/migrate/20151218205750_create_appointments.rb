class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :starts_at

      t.timestamps null: false

      t.references :contact
    end
  end
end
