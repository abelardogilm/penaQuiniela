class Match < ActiveRecord::Base
  belongs_to :quiniela_id, :class_name => "quiniela"
  belongs_to :team1_id, :class_name =>  "team"
  belongs_to :team2_id, :class_name => "team"
end
