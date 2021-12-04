class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :siscon_users do |t|
      t.string :name
      t.integer :siscon_local_id
      t.string :senha_user

      t.timestamps
    end
    create_table :siscon_locals do |t|
      t.string :name

      t.timestamps
    end
    create_table :siscon_products do |t|
      t.string :name
      t.integer :siscon_local_id

      t.timestamps
    end
    create_table :siscon_pragas do |t|
      t.string :name
      t.integer :siscon_local_id

      t.timestamps
    end
    create_table :siscon_incidentes do |t|
      t.string :name
      t.integer :siscon_local_id
      t.integer :siscon_product_id

      t.timestamps
    end
  end
end
