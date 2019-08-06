class CreateTwee < ActiveRecord::Migration[5.2]
  def change
    create_table :twees do |t|
      t.text :content
      t.timestamp :created_on
    end
  end
end
