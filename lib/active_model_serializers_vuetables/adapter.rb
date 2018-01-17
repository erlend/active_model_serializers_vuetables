module ActiveModelSerializersVuetables
  class Adapter < ActiveModelSerializers::Adapter::Json

    def serializable_hash(options = nil)
      collection = serializer.object

      if collection.is_a? ActiveRecord::Relation
        collection = collection.unscope(:limit, :offset)
      end

      super.merge(count: collection.count)
    end

    def root
      :data
    end

  end
end
ActiveModelSerializers::Adapter.register(:vuetables, ActiveModelSerializersVuetables::Adapter)
