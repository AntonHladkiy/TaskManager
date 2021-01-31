require 'rails_helper'

RSpec.describe User, type: :model do
  user=User.new(firstName: 'First',secondName: 'Second')
  it 'test name' do
    expect(user.full_name == 'FirstSecond')
  end
end
