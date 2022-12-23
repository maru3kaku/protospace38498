class Comment < ApplicationRecord
  belongs_to :user       # usersテーブルとのアソシエーション
  belongs_to :prototype  # prototypeテーブルとのアソシエーション

  validates :content, presence: true
end
