class Poll < ApplicationRecord
    has_many :vote_values, dependent: :destroy
    accepts_nested_attributes_for :vote_values, :reject_if => :all_blank, :allow_destroy => true
    def normalized_votes_for(content)
            votes_summary == 0 ? 0 : (content.votes.count.to_f / votes_summary) * 100
    end
    def votes_summary
         vote_values.inject(0) {|summary, option| summary + option.votes.count}
    end
end
