class Card < ApplicationRecord

    
#   scope :for_dates,                 -> (start_date, end_date) { where("account_reports.created_at BETWEEN ? AND ?", start_date, end_date + 1.days) }
#   scope :custom,                    -> { where(custom: true) }
#   scope :draft,                     -> { where(report_status: 'Draft') }
#   scope :published,                 -> { where(report_status: 'Published!') }
#   scope :by_subscription_status,    -> (status) { joins(:account).where('accounts.subscription_status': status) }
#   scope :by_account_id,             -> (account_id) { where(account_id: account_id )}

    # scope :search_input, -> (query) { where("title LIKE :query", query: "%#{query.strip.downcase}%")}

  scope :search_input, -> (query) { where('(LOWER(cards.title) LIKE :query)', query: "%#{query.strip.downcase}%")}
end