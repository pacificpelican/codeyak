class CreateMsgs < ActiveRecord::Migration[5.0]
  def change
    create_table :msgs do |t|
      t.text :content
      t.string :sender
      t.date :sent
      t.string :sent_id

      t.timestamps
    end
  end
end
