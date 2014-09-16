class AddSecurityQuestion1ToSecurityQuestions < ActiveRecord::Migration
  def change
    add_column :security_questions, :security_question1, :string
  end
end
