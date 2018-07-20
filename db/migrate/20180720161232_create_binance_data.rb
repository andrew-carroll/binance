class CreateBinanceData < ActiveRecord::Migration[5.1]
  def change
    create_table :binance_data do |t|
      t.integer :value
      t.integer :daily_volume

      t.timestamps
    end
  end
end
