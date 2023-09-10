# frozen_string_literal: true
require './assignment'
require 'rspec/autorun'

describe Array do
  let(:words) { ['B$u$i$Id', '$t$$h$e', 'N$e$x$t', 'E$$ra', '$$o$f$', 'S$$of$t$wa$r$e', 'De$$ve$l$op$me$n$t'] }

  context 'with beautify_message' do
    it 'returns a string without special characters' do
      expect(words.beautify_message).not_to include '$'
    end

    it 'returns a string message with upcase characters' do
      expect(words.beautify_message).to eq 'BUIID THE NEXT ERA OF SOFTWARE DEVELOPMENT'
    end

    it 'returns a string message with non-string elements' do
      words = [1, 2, 'test']
      expect(words.beautify_message).to eq '1 2 TEST'
    end
  end
end
