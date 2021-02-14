good_job = fn ->
  Process.sleep(60_000)
  {:ok, []}
end

bad_job = fn ->
  Process.sleep(60_000)
  :error
end

doom_job = fn -> 
  Process.sleep(60_000)
  raise "Boom!"
end
