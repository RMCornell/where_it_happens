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

  def self.all_politics
    service.politics
  end

  def self.all_business
    service.business
  end

  def self.all_technology
    service.technology
  end
end