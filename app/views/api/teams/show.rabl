object @team

attributes :id, :name

child(:taco_rules){ attribute :description, :id}

