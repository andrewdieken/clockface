require 'net/http'

uri = URI('https://westus.api.cognitive.microsoft.com/face/v1.0/detect')
uri.query = URI.encode_www_form({
  'returnFaceId' => 'true',
  'returnFaceLandmarks' => 'false',
  'returnFaceAttributes' => 'age,gender,smile,facialHair,glasses,' +
        'emotion,hair'
  })

request = Net::HTTP::Post.new(uri.request_uri)

request['Ocp-Apim-Subscription-Key'] = '<API_KEY'
request['Content-Type'] = 'application/json'

imageUri = 'https://i.pinimg.com/564x/d3/ef/7f/d3ef7f12617985b708436adbfdc7f23d.jpg'
request.body = "{\"url\": \"" + imageUri + "\"}"

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
