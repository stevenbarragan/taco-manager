object @team

attributes :id, :name

child(:taco_rules) { attributes :description }
