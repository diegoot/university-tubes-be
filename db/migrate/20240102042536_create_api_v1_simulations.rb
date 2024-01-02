class CreateApiV1Simulations < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_simulations do |t|
      t.integer :hoursDay
      t.integer :daysWeek
      t.integer :months
      t.string :tubesConfiguration

      t.timestamps
    end
  end
end
