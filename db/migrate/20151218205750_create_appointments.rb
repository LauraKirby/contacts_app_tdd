class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :starts_at, null: false

      t.timestamps null: false

      t.references :contact
    end
  end
end
