module BrandsHelper
  def brand_logo_for(brand, options = {})
    if brand.website.present?
      logo_url = "//logo.clearbit.com/#{brand.website}"
      image_tag(logo_url, alt: brand.name, class: "clearbit-logo rounded border #{options[:class]}")
    else
      content_tag :span, class: "avatar rounded bg-secondary text-white #{options[:class]}" do
        brand.name[0]
      end
    end
  end
end
