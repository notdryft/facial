module ApplicationHelper

  def yesno_helper(boolean)
    boolean ? t(:oui) : t(:non)
  end

  def date_helper(timestamp)
    formatted_date = l timestamp, :format => '%A %d %B'
    formatted_time = l timestamp, :format => '%Hh%M'

    date = timestamp.to_date
    today = Date.today
    if date == today
      t 'today', :time => formatted_time
    elsif today - date == 1
      t 'yesterday', :time => formatted_time
    else
      t 'pastday', :date => formatted_date, :time => formatted_time
    end
  end
end
