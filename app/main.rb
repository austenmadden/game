MID_Y = 350
MID_X = 650
SCALER = 3

def tick(args)
  args.state.x ||= 0
  args.state.y ||= 0

  args.state.y += args.inputs.up_down
  args.state.x += args.inputs.left_right

  label_args = [MID_X + args.state.x, MID_Y + args.state.y, "Hi"]
  label_args << 20
  label_args << 1

  args.outputs.labels  << label_args
  args.outputs.sprites << [576, 280, 128*SCALER, 101*SCALER, 'dragonruby.png']
end
