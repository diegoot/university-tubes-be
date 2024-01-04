class AddColumnsToApiV1Simulation < ActiveRecord::Migration[7.1]
  def change
    add_column :api_v1_simulations, :cost, :integer
    add_column :api_v1_simulations, :brokenTubes, :integer
  end
end
