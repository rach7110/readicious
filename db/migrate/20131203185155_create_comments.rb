	class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |c|
			c.references :link
			c.references :user
			c.text :message
			c.timestamps
		end
	end
end
