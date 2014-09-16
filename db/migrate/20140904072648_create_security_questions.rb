class CreateSecurityQuestions < ActiveRecord::Migration
  def change
    create_table :security_questions do |t|

      t.timestamps
    end
  end
end
