class DetectFace
  def self.call()
    url = ENV["FACE_API_URL"] + "/detect"
    api_key = ENV["FACE_API_KEY"]
    params = {
      'returnFaceId' => 'true',
      'returnFaceLandmarks' => 'false',
      'returnFaceAttributes' => 'age,gender,smile,facialHair,glasses,' +
            'emotion,hair'
    }
    response = HTTParty.post(
      url,
      query: params,
      headers: {
        "Ocp-Apim-Subscription-Key" => api_key,
        "Content-Type" => "application/json"
      },
      :body => {
        url: "https://i.pinimg.com/564x/d3/ef/7f/d3ef7f12617985b708436adbfdc7f23d.jpg"
      }.to_json
    ).parsed_response
    response
  end
end
