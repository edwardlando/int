module ApplicationHelper
	def markdown(text)
		options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode ]
		Redcarpet.new(text, *options).to_html.html_safe
	end

	def shorten(text)
		markdown truncate(text, :length => 200, separator: ' ')
	end

end
