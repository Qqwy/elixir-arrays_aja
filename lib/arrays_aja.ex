defimpl Arrays.Protocol, for: Aja.Vector do
  defdelegate size(vector), to: @for
  defdelegate map(vector, fun), to: @for
  defdelegate reduce(vector, acc, fun), to: @for, as: :foldl
  def reduce_right(vector, acc, fun) do
    @for.foldr(vector, acc, fn val, acc -> fun.(acc, val) end)
  end
  defdelegate get(vector, index), to: @for, as: :at!
  defdelegate replace(vector, index, item), to: @for, as: :replace_at!
  defdelegate append(vector, item), to: @for
  def extract(vector) do
    case @for.size(vector) do
      0 -> {:error, :empty}
      _ ->
        res = @for.pop_last(vector)
        {:ok, res}
    end
  end
  def resize(vector, size, default) do
    vector_size = @for.size(vector)
    cond  do
      size < vector_size ->
        @for.slice(vector, 0..size)
      size == vector_size ->
        vector
      size > vector_size ->
        @for.concat(vector, Aja.Enum.into(1..size - vector_size, fn _ -> default end))
    end
  end
  defdelegate to_list(vector), to: @for
  defdelegate slice(vector, start_index, amount), to: @for
  def empty(_) do
    @for.new()
  end
end
