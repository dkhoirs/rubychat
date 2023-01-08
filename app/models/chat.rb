class Chat < ApplicationRecord
	# before_create :set_id_number
    after_create :notify_pusher, if: :create
    validates :id, presence: false
      
      def notify_pusher
        Pusher.trigger('chat', 'new', self.as_json)
      end

def set_id_number
  last_id_number = Chat.maximum(:id)
  self.id = last_id_number.to_i + 50
end
end
