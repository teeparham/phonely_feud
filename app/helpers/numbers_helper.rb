module NumbersHelper

  def vote_label(vote)
    if vote == 1
      content_tag(:span, "Scam", class: "alert label")
    else
      content_tag(:span, "OK", class: "success label")
    end
  end

end
