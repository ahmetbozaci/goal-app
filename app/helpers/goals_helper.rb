module GoalsHelper
  def totalAmount
    total = 0
    @goals.each do |goal|
      total += goal.amount if goal.user_id == Current.user.id
    end
    total
  end
end
