module ApplicationHelper
  def groupid
    arr = [0]
    Group.all.each do |group|
      arr.push(group.id)
    end
    arr
  end
end
