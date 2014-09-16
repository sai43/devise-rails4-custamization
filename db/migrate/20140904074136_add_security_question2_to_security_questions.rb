class AddSecurityQuestion2ToSecurityQuestions < ActiveRecord::Migration
  def change
    add_column :security_questions, :security_question2, :string
  end
end
