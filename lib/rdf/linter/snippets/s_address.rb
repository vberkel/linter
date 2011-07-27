# data-vocabulary `Person` snippet:
module RDF::Linter
  LINTER_HAML.merge!({
    RDF::URI("http://schema.org/PostalAddress") => {
      # Properties to be used in snippet title
      :title_props => [
        "http://schema.org/streetAddress",
        "http://schema.org/postOfficeBoxNumber",
        "http://schema.org/addressLocality",
        "http://schema.org/addressRegion",
      ],
      # Properties to be used in snippet photo
      :photo_props => [],
      # Properties to be used in snippet body
      :body_props => [
        "http://schema.org/addressCountry",
        "http://schema.org/postalCode",
      ],
      # Properties to be used when snippet is nested
      :nested_props => [
        "http://schema.org/streetAddress",
        "http://schema.org/postOfficeBoxNumber",
        "http://schema.org/addressLocality",
        "http://schema.org/addressRegion",
        "http://schema.org/addressCountry",
        "http://schema.org/postalCode",
      ],
      # Post-processing on nested markup
      :nested_fmt => lambda {|list, &block| list.map{|p| block.call(p)}.compact.map(&:to_s).map(&:rstrip).join(", ")},
    }
  })
end