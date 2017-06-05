module Dothoop
  class GeographicDescriptionMapping
    include Kartograph::DSL

    kartograph do
      mapping GeographicDescription

      scoped :read, :patch do
        property :mls_area, key: 'MLS Area'
        property :legal_description, key: 'Legal Description'
        property :map_grid, key: 'Map Grid'
        property :subdivision, key: 'Subdivision'
        property :lot, key: 'Lot'
        property :deed_page, key: 'Deed Page'
        property :deed_book, key: 'Deed Book'
        property :section, key: 'Section'
        property :addition, key: 'Addition'
        property :block, key: 'Block'
      end

    end
  end
end
