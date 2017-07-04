class MyHash
  @hashes = {}

  define_method(:all) do
    @hashes
  end

  define_method(:myFetch) do |key|
    @hashes[key]
  end

  define_method(:myStore) do |key,value|
    new_hash = {key=>value}
    if @hashes==nil
      @hashes = new_hash
    else
    @hashes = @hashes.merge(new_hash)
    end
  end

  define_method(:myMerge) do |hash|
    @hashes = @hashes.merge(hash)
  end


end
