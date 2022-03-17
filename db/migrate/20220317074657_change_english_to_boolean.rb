class ChangeEnglishToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :english, from: :string, to: true
  end
end
