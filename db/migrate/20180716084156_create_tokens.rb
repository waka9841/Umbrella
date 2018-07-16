class CreateTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.references :location, null: false     # 場所と紐付け
      t.string :uuid         # トークン
      t.datetime :expired_at
      t.timestamps

      t.timestamps
    end
  end
end
