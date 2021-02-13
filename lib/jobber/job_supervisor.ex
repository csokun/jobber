defmodule Jobber.JobSupervisor do
  # restart: :temporary
  # tell supervisor to ignore the process and
  # don't worry about restarting it, even when
  # the child process exitis with an error.
  use Supervisor, restart: :temporary

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args)
  end

  def init(args) do
    children = [
      {Jobber.Job, args}
    ]

    options = [
      strategy: :one_for_one,
      max_seconds: 30_000
    ]

    Supervisor.init(children, options)
  end
end
