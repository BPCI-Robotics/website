activate :automatic_image_sizes
activate :directory_indexes
activate :livereload

helpers do
  
  def home_page
    "/"
  end

  def projects_page
    "/projects"
  end

  def documentation_page
    "/docs"
  end

  def contact_page
    "/contact"
  end

  def team_code
    "41977B"
  end

  def team_name
    "B(ro)botics"
  end

  def club_name
    "Birchmount Robotics Club"
  end

  def github_path
    "https://github.com/BPCI-Robotics"
  end

  def nav_class(path)
    if /^#{path}/ =~ current_page.url
      {:class => 'selected'}
    else
      {}
    end
  end

  def person_image(name)
    "<div class='ms-auto'><img src='images/#{name}.jpg' alt='Picture of #{name}'/></div>"
  end

  def homepage?
    current_page.url == "/"
  end

  def package_row(title, url, icon=:globe)
    partial("package-row", locals: { title: title, url: url, icon: icon })
  end

  def fetch_pages(doctype=nil)
    query = sitemap
    query = query.where(:doctype.equal => doctype) if doctype.present?
    query.order_by(:order).all
  end
end

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :fonts_dir,  "fonts"
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
