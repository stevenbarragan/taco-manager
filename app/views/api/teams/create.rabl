child @team => :team do
  attributes :id, :name

  node(:taco_rules_ids) do |t|
    t.taco_rules.map{ |r| r.id  }
  end

  node(:user_ids) do |t|
    t.users.map{ |r| r.id  }
  end

end




