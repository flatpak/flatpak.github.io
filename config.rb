###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

data.distro.each do |i|
  proxy "/setup/#{i.name}.html", "/distro-template.html", :locals => { :name => i.name, :logo => i.logo, :info => i.info }, :ignore => true
end

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do

end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

#activate :relative_assets
#set :relative_links, true

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch   = 'master' # default: gh-pages
end

#activate :redcarpet
set :markdown_engine, :redcarpet
set :markdown, :tables => true #, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true

activate :matomo do |p|
  p.domain = 'webstats.gnome.org'
  p.site_id = 12
end

#activate :asset_hash
activate :directory_indexes
# we have reditects on nginx side
#redirect "/hello-world.html", to: "/hello-world/"
#
#redirects happening in nginx
#https://github.com/flatpak/flatpak.github.io/issues/241
