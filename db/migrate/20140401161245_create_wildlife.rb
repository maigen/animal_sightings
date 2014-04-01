class CreateWildlife < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :regions do |t|
      t.string :name

      t.timestamps
    end

    create_table :sightings do |t|
      t.belongs_to :species
      t.belongs_to :regions
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
