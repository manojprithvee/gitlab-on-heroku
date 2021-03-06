# == Schema Information
#
# Table name: abuse_reports
#
#  id          :integer          not null, primary key
#  reporter_id :integer
#  user_id     :integer
#  message     :text
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryGirl.define do
  factory :abuse_report do
    reporter factory: :user
    user
    message 'User sends spam'
  end
end
