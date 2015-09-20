  Font.default_name = ["SimHei", "黑体", "DFKai-SB", "標楷體", "Verdana", "Arial Unicode MS"]
  Font.default_bold = true
  bootbitmap = Bitmap.new(514, 446)
  bootsprite = Sprite.new
  bootsprite.bitmap = bootbitmap
  bb = bootbitmap.clone
  Graphics.freeze
  Graphics.transition(10)
  scripts = load_data("Data/Scripts.rvdata")
  scripts.each do |script_file|
	zstream = Zlib::Inflate.new
	buf = zstream.inflate(script_file[2])
	bootloader.AddScriptFile(script_file[1], buf)
	zstream.finish
	zstream.close
	bootbitmap.clear
	bootbitmap.draw_text(200,200, 30,30, "loading " + script_file[1])
	Graphics.update
  end
  bootbitmap.clear
  bootbitmap.draw_text(200,200, 30,30, "Compiling... ")
  Graphics.update
  bootloader.Compile
  bootbitmap.clear
  bootbitmap.draw_text(200,200, 30,30, "Compiled")
  Graphics.update


  bootbitmap.dispose
  bootsprite.dispose