class CreateSpellcheckWords < ActiveRecord::Migration
  def change
    create_table :spellcheck_words do |t|
      t.string :word
      t.integer :frequency

      t.timestamps
    end
  end
end
