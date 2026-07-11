# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  next unless page.data["layout"] == "cv"

  page.output = page.output.gsub(
    %r{(<h3\b[^>]*>)Contact Information(</h3>)},
    '\1General Information\2'
  )
end
