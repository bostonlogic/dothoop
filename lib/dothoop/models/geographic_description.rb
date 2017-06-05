module Dothoop
  class GeographicDescription < BaseModel
    attribute :mls_area #'MLS Area'
    attribute :legal_description #'Legal Description'
    attribute :map_grid #'Map Grid'
    attribute :subdivision #'Subdivision'
    attribute :lot #'Lot'
    attribute :deed_page #'Deed Page'
    attribute :deed_book #'Deed Book'
    attribute :section #'Section'
    attribute :addition #'Addition'
    attribute :block #'Block'
  end
end
