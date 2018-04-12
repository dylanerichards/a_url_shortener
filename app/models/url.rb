class Url < ApplicationRecord
  after_create  :create_short_url, :sanitize_long_url

  validates_format_of :long_url, :with => /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/, :on => :create

  def create_short_url
    self.short_url = self.id.to_s(36)
    self.save
  end

  private

  def sanitize_long_url
    self.long_url = self.long_url.sub("http://", "").sub("https://", "")
    self.save
  end
end
