good_job = fn ->
  Process.sleep(5000)
  {:ok, []}
end

bad_job = fn ->
  Process.sleep(5000)
  :error
end

doom_job = fn -> 
  Process.sleep(5000)
  raise "Boom!"
end
