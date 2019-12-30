class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :level
  belongs_to :player
end
