class Burger < ApplicationRecord
    def nutriments
        product = Openfoodfacts::Product.get(self.code, locale: 'fr')
        if product
            return product.nutriments.to_hash
        else
            return {"No data" =>"No data"}
        end
    end
end
