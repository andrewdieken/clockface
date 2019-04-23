class AddFaceToPersonInPersonGroup
  def self.call(branch_id:, person_id:, image_data:)
    url = ENV["FACE_API_URL"] + "/persongroups/" + branch_id + "/persons/" + person_id + "/persistedFaces"
    api_key = ENV["FACE_API_KEY"]
    response = HTTParty.post(
      url,
      headers: {
        "Ocp-Apim-Subscription-Key" => api_key,
        "Content-Type" => "application/octet-stream"
      },
      :body => image_data
    ).parsed_response
    response["persistedFaceId"]
  end
end
