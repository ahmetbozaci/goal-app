module GoalsHelper
  def totalAmount
    total = 0
    @goals.each do |goal|
      total += goal.amount if goal.user_id == Current.user.id
    end
    total
  end

  def most_recent
    @goals.reverse_order.each do goal 
      if goal.user_id == Current.user.id
        goal.amount 
      end
    end
  end

  
end
