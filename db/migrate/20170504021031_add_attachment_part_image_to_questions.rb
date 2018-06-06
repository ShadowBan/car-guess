class AddAttachmentPartImageToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :part_image
    end
  end

  def self.down
    remove_attachment :questions, :part_image
  end
end
