class Quantity < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '個' },
    { id: 3, name: '本' },
    { id: 4, name: '匹' },
    { id: 5, name: 'mg(ミリグラム)' },
    { id: 6, name: 'g(グラム)' },
    { id: 7, name: 'kg(キログラム)' },
    { id: 8, name: 'ml(ミリリットル)' },
    { id: 9, name: 'l(リットル)' },
    { id: 10, name: 'cc(シーシー)' },
    { id: 11, name: 'パック' },
    { id: 12, name: 'ボトル' },
    { id: 13, name: '人前' },
    { id: 14, name: '袋' },
    { id: 15, name: '枚' },
    { id: 16, name: '片' },
    { id: 17, name: '杯' },
    { id: 18, name: '丁' }
  ]

  include ActiveHash::Associations
  has_many :foods

end