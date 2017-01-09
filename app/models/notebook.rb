class Notebook < ApplicationRecord
  def get_cover
    require 'RMagick'
    colors = ['#b71c1c','#880E4F','#4A148C','#311B92','#1A237E','#0D47A1','#01579B','#006064','#004D40','#1B5E20','#E65100','#3E2723','#212121','#263238']
    canvas = Magick::Image.new(200, 250){self.background_color = colors.sample}
    gc = Magick::Draw.new
    gc.pointsize(24)
    gc.fill('#fff')
    gc.text(30,70, self.title.center(8))
    
    gc.draw(canvas)
    canvas.write(self.preview)
  end
end
