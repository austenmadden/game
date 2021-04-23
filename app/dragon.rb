# Create type with ALL sprite properties AND primitive_marker
class Dragon
  include Sprite

  def initialize(x: 0, y: 0, w: 100, h: 100, path: "sprites/misc/dragon-0.png")
    @x = x
    @y = y
    @w = w
    @h = h
    @path = path
    @flip_horizontally = false
  end

  MOVE_SCALER = 10
  def move(inputs)
    self.x += inputs.left_right * MOVE_SCALER
    self.y += inputs.up_down    * MOVE_SCALER

    if !inputs.left_right.zero?
      self.flip_horizontally = inputs.left_right.negative?
    end
  end
end
