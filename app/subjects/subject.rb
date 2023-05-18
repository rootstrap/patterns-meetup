class Subject
  attr_reader :observers

  def initialize
    @observers = []
  end

  def attach(observer)
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify(message)
    @observers.each { |observer| observer.update(message) }
  end
end