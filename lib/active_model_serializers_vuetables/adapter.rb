module ActiveModelSerializersVuetables
  class Adapter < ActiveModelSerializers::Adapter::Json

    def serializable_hash(options = nil)
      data = {}
      collection = serializer.object

      if collection.respond_to?(:total_count)
        data[:count] = collection.total_count
      end

      super.merge(data)
    end

    def root
      :data
    end

  end
end
ActiveModelSerializers::Adapter.register(:vuetables, ActiveModelSerializersVuetables::Adapter)
