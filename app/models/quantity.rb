class Quantity < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '個' },
    { id: 3, name: '本' },
    { id: 4, name: 'mg(ミリグラム)' },
    { id: 5, name: 'g(グラム)' },
    { id: 6, name: 'kg(キログラム)' },
    { id: 7, name: 'ml(ミリリットル)' },
    { id: 8, name: 'l(リットル)' },
    { id: 9, name: 'cc(シーシー)' },
    { id: 10, name: 'パック' },
    { id: 11, name: 'ボトル' },
    { id: 12, name: '人前' },
    { id: 13, name: '袋' },
    { id: 14, name: '枚' },
    { id: 15, name: '片' },
    { id: 16, name: '杯' },
    { id: 17, name: '丁' }
  ]

  include ActiveHash::Associations
  has_many :foods

end