module ApplicationHelper
	def titre
		base_titre = "web app"
		if @titre.nil?
			base_titre
		else
			"#{base_titre} | #{@titre}"
		end
	end
end
