class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '会社員' },
    { id: 3, name: '公務員' },
    { id: 4, name: '自営業' },
    { id: 5, name: '会社役員' },
    { id: 6, name: '専業主婦(夫)' },
    { id: 7, name: '学生' },
    { id: 8, name: 'パート・アルバイト' },
    { id: 9, name: '無職' }
  ]

  include ActiveHash::Associations
  has_many :users

end