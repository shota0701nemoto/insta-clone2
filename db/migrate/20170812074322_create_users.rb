class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|#=> この引数名(:users)がテーブル名になる
      t.string :name          #string型のnameというカラム
      t.string :email         #string型のemailというカラム

      t.timestamps            #created_atとupdated_atのカラムが定義される
    end
  end
end
