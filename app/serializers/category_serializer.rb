class CategorySerializer < ActiveModel::Serializer
    attributes :name, :activities
    has_many :activities
    
end