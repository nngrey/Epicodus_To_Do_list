class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :description, :string

      t.timestamps
    end
  end
end
