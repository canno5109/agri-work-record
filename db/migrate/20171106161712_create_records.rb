class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :user_name
      t.string :crop_name
      t.datetime :date
      t.string :work_name
      t.text :work_reason
      t.text :technical_supplement
      t.text :consideration
      t.text :evidence
      t.binary :photo

      t.timestamps
    end
  end
end
