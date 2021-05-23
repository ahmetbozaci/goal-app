module ApplicationHelper
  def groupid
    arr = ["no group"]
    Group.all.each do |group|
      arr.push(group.id)
    end
    arr
  end
end
