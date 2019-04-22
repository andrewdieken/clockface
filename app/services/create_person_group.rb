class CreatePersonGroup
  def self.call(branch_id:, branch_name:)
    url = ENV["FACE_API_URL"] + "/persongroups/" + branch_id
    api_key = ENV["FACE_API_KEY"]
    response = HTTParty.put(
      url,
      headers: {
        "Ocp-Apim-Subscription-Key" => api_key,
        "Content-Type" => "application/json"
      },
      :body => {
        name: branch_name,
        recognitionModel: "recognition_02"
      }.to_json
    ).parsed_response
    response
  end
end
