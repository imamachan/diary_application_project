class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "は有効なメールアドレスを入力してください" }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
end
