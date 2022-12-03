class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :email              #メールアドレス
      t.string :encrypted_password #パスワード
      t.string :name               #ユーザー名
      t.text :profile              #プロフィール
      t.text :occupation           #所属
      t.text :position             #役職
      t.timestamps
    end
  end
end
