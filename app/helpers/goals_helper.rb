module GoalsHelper
  def total_amount
    total = 0
    @goals.each do |goal|
      total += goal.amount if goal.user_id == Current.user.id
    end
    total
  end

  def total_amount_external
    total = 0
    @goals.each do |goal|
      total += goal.amount if goal.user_id == Current.user.id && goal.group_id.zero?
    end
    total
  end
end
