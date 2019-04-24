class TrainPersonGroup
  def self.call(branch_id:)
    url = ENV["FACE_API_URL"] + "/persongroups/" + branch_id + "/train"
    api_key = ENV["FACE_API_KEY"]
    response = HTTParty.post(
      url,
      headers: {
        "Ocp-Apim-Subscription-Key" => api_key,
      }
    )
    response
  end
end
