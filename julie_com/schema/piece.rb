# encoding: UTF-8

class Piece < Content::Piece
end

class Text < Piece
  title "Text"
  field :text
end

class Video < Piece
  title "Video"
  field :video, :webvideo, :player => {:width => 555 }
  #field :thumbnail_image, :image do
  #  size :thumb do
  #    fillcrop 80, 60
  #    optimize!
  #  end
  #end
end

class CaseStudyImage < Piece
  title "Image"
  field :image do
    size :large do
      fit 555, 1110
      optimize!
    end
    size :thumb do
      fillcrop 80, 60
      optimize!
    end
  end
end
