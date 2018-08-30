module SetlistsHelper
  def played_on_link
    if action_name == "new"
      link_text = Time.current.strftime("%B #{Time.current.day.ordinalize}, %Y at %l:%M%P")
    else
      link_text = @setlist.played_on.strftime("%B #{@setlist.played_on.day.ordinalize}, %Y at %l:%M%P")
    end

    link_to link_text, "#", class: "js-show-played-on-selects"
  end
end
