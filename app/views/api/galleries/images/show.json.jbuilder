# json.src @image.src
json.gallery do
  json.name @image.gallery_name
end

json.src do
  json.xsmall @image.src.xsmall.url
  json.small @image.src.small.url
  json.medium @image.src.medium.url
  json.large @image.src.large.url
  json.xlarge @image.src.xlarge.url
  json.xxlarge @image.src.xxlarge.url
  json.xxxlarge @image.src.xxxlarge.url
end
