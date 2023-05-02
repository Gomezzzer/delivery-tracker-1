# == Schema Information
#
# Table name: deliveries
#
#  id          :integer          not null, primary key
#  arrive_on   :date
#  description :string
#  details     :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Delivery < ApplicationRecord
end
