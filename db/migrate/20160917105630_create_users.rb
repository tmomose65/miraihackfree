class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.string :sex
      t.string :age
      t.string :applicant_branch_no
      t.string :applicant_account_no

      t.timestamps null: false
    end
  end
end
