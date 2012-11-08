class CreateApplicationlogs < ActiveRecord::Migration
  def change
    create_table :applicationlogs do |t|
      t.string :log_source
      t.string :log_filename
      t.datetime :log_datetime
      t.string :log_channel
      t.string :log_type
      t.text :log_message

      t.timestamps
    end
  end
end
