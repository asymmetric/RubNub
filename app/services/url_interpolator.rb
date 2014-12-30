class URLInterpolator
  def self.call(url, param)
    url.sub('%s', param)
  end
end
