RSpec.describe ActiveModelSerializersVuetables do
  let(:author) { Author.create(name: 'foo') }

  def serialize(objects)
    serializer = objects.respond_to?(:each) ?
      ActiveModel::Serializer::CollectionSerializer.new(objects) :
      BookSerializer.new(objects)
    ActiveModelSerializersVuetables::Adapter.new(serializer).serializable_hash
  end

  describe 'root' do
    subject { serialize [] }

    it { is_expected.to match(data: []) }
  end

  describe 'count' do
    subject { serialize collection }

    context 'with "limit"' do
      let(:collection) { Book.all.limit(1) }
      before do
        Book.create(title: 'bar')
        Book.create(title: 'baz')
      end

      it { is_expected.to match(data: [instance_of(Hash)], count: 2) }
    end

    context 'with parent' do
      let(:collection) { author.books }
      before do
        Book.create(title: 'foo')
        Book.create(title: 'baz', author: author)
      end

      it { is_expected.to match(data: [instance_of(Hash)], count: 1) }
    end

    context 'with instance' do
      let(:collection) { Book.create(title: 'foo') }

      it { is_expected.to match(data: instance_of(Hash)) }
    end
  end

end
