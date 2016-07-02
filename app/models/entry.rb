class Entry < ActiveRecord::Base

  def reformat_composer
    first_last = self.composer.split(',').reverse
    first_last.join(" ").strip
  end
end
