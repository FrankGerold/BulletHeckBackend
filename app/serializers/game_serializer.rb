class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :level, :updated_at, key: :time
  belongs_to :player
end
