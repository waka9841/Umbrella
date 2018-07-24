class CreateKasas < ActiveRecord::Migration[5.2]
  def change
    create_table :kasas do |t|
      t.integer :state
      t.references :location, null: false     # 場所と紐付け

      t.timestamps
    end
  end
end
