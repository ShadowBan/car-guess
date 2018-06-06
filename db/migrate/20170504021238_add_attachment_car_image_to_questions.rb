class AddAttachmentCarImageToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :car_image
    end
  end

  def self.down
    remove_attachment :questions, :car_image
  end
end
