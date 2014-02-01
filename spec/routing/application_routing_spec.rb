require 'spec_helper'

describe 'routing' do
    it 'routes the new league page' do
        expect(get: '/leagues/new').to route_to(
            controller: 'leagues',
            action: 'new'
        )
    end
end

