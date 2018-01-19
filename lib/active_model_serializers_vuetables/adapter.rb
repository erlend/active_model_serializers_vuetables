module ActiveModelSerializersVuetables
  class Adapter < ActiveModelSerializers::Adapter::Json

    def serializable_hash(options = nil)
      data = {}
      collection = serializer.object

      if collection.is_a? ActiveRecord::Relation
        collection = collection.unscope(:limit, :offset)
        data[:count] = collection.count
      end

      super.merge(data)
    end

    def root
      :data
    end

  end
end
ActiveModelSerializers::Adapter.register(:vuetables, ActiveModelSerializersVuetables::Adapter)
