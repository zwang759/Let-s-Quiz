class CreateScoreboards < ActiveRecord::Migration[6.0]
  def change
    create_table :scoreboards do |t|

      t.timestamps
    end
  end
end
