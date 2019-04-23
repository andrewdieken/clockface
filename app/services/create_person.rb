class CreatePerson
  def self.call(branch_id:, person_name:)
    url = ENV["FACE_API_URL"] + "/persongroups/" + branch_id + "/persons"
    api_key = ENV["FACE_API_KEY"]
    response = HTTParty.post(
      url,
      headers: {
        "Ocp-Apim-Subscription-Key" => api_key,
        "Content-Type" => "application/json"
      },
      :body => {
        name: person_name,
      }.to_json
    ).parsed_response
    response["personId"]
  end
end
