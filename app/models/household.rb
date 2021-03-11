class Household < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '一人暮らし' },
    { id: 3, name: '同棲カップル' },
    { id: 4, name: '夫婦のみの世帯' },
    { id: 5, name: '夫婦と子供からなる世帯' },
    { id: 6, name: 'ひとり親と子供からなる世帯' },
    { id: 7, name: 'その他の世帯' }
  ]

  include ActiveHash::Associations
  has_many :users

end