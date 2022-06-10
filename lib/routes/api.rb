module Routes
  class Api < Roda
    plugin :all_verbs
    plugin :json, parser: proc { |str| Oj.load(str) }
    plugin :json_parser

    route do |r|
      r.on "people" do
        r.get Integer do |id|
          "#{id}"
        end
      end

      r.on "transactions" do
        r.post do
          "#{r.params}"
        end

        r.put Integer, "decline" do |reference_id|
          "#{reference_id}"
        end

        r.put Integer, "approve" do |reference_id|
          "#{reference_id}"
        end

        r.get Integer do |reference_id|
          "#{reference_id}"
        end
      end
    end
  end
end
