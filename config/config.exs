use Mix.Config

config :task_manager, TaskManager.Scheduler, jobs: [
    {"* * * * *", fn -> GenServer.cast(:server, :write) end}
]