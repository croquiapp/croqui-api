class ScheduleCampaignEndingJob < ApplicationJob
  queue_as :campaign_ending

  def perform(campaign_id)
    logger = Logger.new(Rails.root.join("log", "campaign.log"))
    logger.info "Started job"

    ActiveRecord::Base.connection_pool.with_connection do
      #Still to be implemented
    end
  end
end
