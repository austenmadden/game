require "app/sprite.rb"
require "app/dragon.rb"

MID_Y = 350
MID_X = 650

def tick(args)
  args.state.x ||= 0
  args.state.y ||= 0

  args.state.dragon ||= Dragon.new(x: MID_X, y: MID_Y)

  args.state.dragon.move(args.inputs)

  label_args = [MID_X, MID_Y, "Demo", 20, 1]

  args.outputs.labels  << label_args
  args.outputs.sprites << args.state.dragon
end
