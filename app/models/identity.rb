class Identity < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :uid, :provider, :oauth_token
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider, oauth_token: auth.credentials.token)
  end
end
