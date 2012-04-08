class CreateConfiguration < ActiveRecord::Migration

  #
  # Change is new syntax to Rails 3.1. Before you would define an `up` step and a `down` step.
  # Rails migration is intelligent enough to handle most simple setUP and tearDOWN steps so they
  # simply ask you to write what is changed by this migration
  #
    
  def change
    create_table :configurations do |t|
      t.string :environment
      t.string :hostname
      t.string :title
      t.timestamps
    end
  end

end
