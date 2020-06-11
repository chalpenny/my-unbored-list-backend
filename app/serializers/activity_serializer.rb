class ActivitySerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :notes, :status
    belongs_to :category

end