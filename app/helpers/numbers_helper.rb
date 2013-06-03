module NumbersHelper

  def vote_label(vote)
    if vote == 1
      raw %Q{<span class="alert label">Scam</span>}
    else
      raw %Q{<span class="success label">OK</span>}
    end
  end

end
