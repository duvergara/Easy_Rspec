

describe "validar a API do Stars War" do 


        
   it ("Validar Stars War  endpoints  Pepople") do
   result = HTTParty.get(
      "https://swapi.co/api/people/1/", 
     #  body:{name: "uke Skywalker""}.to_json,
   headers:{
   "Content-Type" => "application/jason",
   },
   )
   expect(result.response.code).to eql "200"
   expect(result.parsed_response["name"]).to eql "Luke Skywalker"
   expect(result.parsed_response["height"]).to eql "172"
   expect(result.parsed_response["mass"]). to eql "77"
   expect(result.parsed_response["hair_color"]).to eql "blond" 
   expect(result.parsed_response["skin_color"]).to eql "fair" 
   expect(result.parsed_response["eye_color"]).to eql "blue" 
   expect(result.parsed_response["birth_year"]).to eql "19BBY" 
   expect(result.parsed_response["gender"]).to eql "male"
   puts("status",result.response.code)
   end
   
   it ("Validar Stars Wars endpoints Planet") do
       result = HTTParty.get(
          "https://swapi.co/api/planets/1/", 
       headers:{
       "Content-Type" => "application/jason",
       },
       )
       expect(result.response.code).to eql "200"
       expect(result.parsed_response["name"]).to eql "Tatooine"
       expect(result.parsed_response["rotation_period"]).to eql "23"
       expect(result.parsed_response["orbital_period"]). to eql "304"
       expect(result.parsed_response["diameter"]).to eql "10465" 
       expect(result.parsed_response["climate"]).to eql "arid" 
       expect(result.parsed_response["gravity"]).to eql "1 standard" 
       expect(result.parsed_response["terrain"]).to eql "desert" 
       expect(result.parsed_response["surface_water"]).to eql "1"
       expect(result.parsed_response["population"]).to eql "200000"
       puts("status",result.response.code)
   
       end
   
   
   
   
   end
   
         
   