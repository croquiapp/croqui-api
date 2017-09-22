class Campaign < ApplicationRecord
  belongs_to :product
  validates :description, :finished_at, :min_buyers, :total_buyers, presence: true

  after_save :schedule_campaign_ending

  def schedule_campaign_ending
    ScheduleCampaignEndingJob.set(wait_until: self.finished_at).perform_later(self.id)
  end
end
