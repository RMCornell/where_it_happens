class NytimesTopStory
  def self.service
    @service ||= NytimesTopStoriesService.new
  end

  def self.all_world
    service.world
  end

  def self.all_national
    service.national
  end

  def self.politics
    service.politics
  end

  def self.business
    service.business
  end

  def self.technology
    service.technology
  end
end