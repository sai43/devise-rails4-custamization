class AddSecurityQuestionsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :security_question1, :string
  	add_column :users, :security_question2, :string
  end
end
