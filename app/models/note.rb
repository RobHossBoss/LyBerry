class Note < ApplicationRecord
  has_one :user
  def get_preview
    require 'RMagick'
    require 'fileutils'
    FileUtils::mkdir_p File.dirname(self.preview)
    canvas = Magick::Image.new(200, 250){self.background_color = '#FAFAFA'}
    gc = Magick::Draw.new
    gc.pointsize(24)
    gc.fill('#000')
    gc.text(30,70, self.title.center(8))
    gc.pointsize(12)
    gc.text(30,120, self.content.truncate(12).center(8))

    
    gc.draw(canvas)
    canvas.write(self.preview)
  end
end
