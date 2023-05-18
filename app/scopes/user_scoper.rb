class UserScoper
  attr_reader :relation

  def initialize(relation = User.all)
    @relation = relation
  end

  def active
    @relation = @relation.where(active: true)
    self
  end

  def by_name_contain(str)
    @relation = @relation.where("name like :str", str: "%#{str}%")
    self
  end

  def by_email_contain(str)
    @relation = @relation.where("email like :str", str: "%#{str}%")
    self
  end

  def by_date_range(start_date,end_date)
    @relation = @relation.where('start_date >= :start_date and end_date <= :end_date',
                                start_date: start_date,
                                end_date: end_date
    )
    self
  end

  def order_by_name
    @relation = @relation.order(:name)
    self
  end
end
