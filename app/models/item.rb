class Item < ApplicationRecord
  has_one :shelf
  has_one :user
  
  def get_height_ratio(height, width, new_width)
    return (width.to_f/height.to_f) * new_width.to_f
  end
  
  def get_image_preview(width)
    require 'RMagick'
    image = Magick::Image.read(self.file).first
    original_width = image.columns
    original_height = image.rows
    height = get_height_ratio(original_height, original_width, width)
    image.change_geometry!(height.to_s+"x"+width.to_s) { |cols, rows, img|
      newimg = img.resize(cols, rows)
      newimg.write(self.preview_path)
    }
  end
  
  def merge_pdf(file_array)
    # needs revision
      require 'combine_pdf'
      pdf = CombinePDF.new
      file_array.each do |file|
        pdf << CombinePDF.load(file) # one way to combine, very fast.
      end
      pdf.number_pages
      pdf.save self.file
  end
  
  def split_pdf
    require 'combine_pdf'
    pages = CombinePDF.load(self.file).pages;
    i = 0
    pages.each do |page|
       pdf = CombinePDF.new
       pdf << page
       pdf.save("#{i}.pdf")
       i+=1
    end
  end
  
  def image_to_pdf
    require 'rmagick'
    jpg = Magick::ImageList.new(self.file)
    jpg.write(self.file+".jpg")
  end
  
  def get_pdf_preview(width)
    #require 'RMagick'
    #Magick.limit_resource("memory", 20)
    #pdf = Magick::ImageList.new(self.file+"[0]")[0]
    #pdf.resize(width)
    #pdf.background_color = "white"
    #pdf.flatten_images
    #pdf.write(self.preview_path)

    system("convert -alpha off -cache 20 #{self.file}[0] -resize 200 -background white -flatten #{self.preview_path}")
  end
  
  def get_doc_preview(width)
    self.conv_doc_to_pdf
    self.get_pdf_preview(width)
    File.delete(self.file+".pdf")
  end
  
  def conv_doc_to_pdf
    require 'libreconv'
    Libreconv.convert(self.file, self.file+'.pdf')
  end
  

  def get_preview(width)
    require 'fileutils'
    FileUtils::mkdir_p File.dirname(self.preview_path)
    if self.format == "application/pdf"
      self.get_pdf_preview(width)
    elsif self.format == "image/jpeg" || self.format == "image/png"
      self.get_image_preview(width)
    elsif self.format == "application/epub+zip"
      #get preview image of epub
    elsif self.format == "application/x-mobipocket-ebook"
      # get preview image of epub
    elsif self.format == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || self.format == "application/msword" || self.format == "application/octet-stream"
      self.get_doc_preview(width)
    elsif self.format == "audio/mpeg"
      # get preview image
    elsif self.format == "video/mpeg"
      #get preview image
    else
      # use default image
    end
  end
end
