class Profile < ActiveRecord::Base
  belongs_to :user

  enum sex: { 'male': 0, 'female': 1 }
  enum marry: { 'not_married': 0, 'married': 1 }

  mount_uploader :avatar, AvatarUploader
end
