MID_Y = 350
MID_X = 650
SCALER = 3

def tick(args)
  label_args = [MID_X, MID_Y, "Hi"]
  label_args << 20
  label_args << 1
  args.outputs.labels  << label_args
  args.outputs.sprites << [576, 280, 128*SCALER, 101*SCALER, 'dragonruby.png']
end
