class DropAdmins < ActiveRecord::Migration[5.1]
  def change
    drop_table(:admins, if_exists: true)
  end
end
