class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :role, :string
  	add_column :users, :security_question_1_ans, :string
  	add_column :users, :security_question_2_ans, :string
  	add_column :users, :company_url, :string
  end
end
