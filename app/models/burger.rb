class Burger < ApplicationRecord
    def nutriments
        product = Openfoodfacts::Product.get(self.code, locale: 'fr')
        if product
            return product.nutriments.to_hash
        else
            return ["nutri" => "Pas de nutriment"]
        end
    end
end
