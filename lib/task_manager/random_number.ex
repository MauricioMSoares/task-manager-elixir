defmodule TaskManager.RandomNumber do
    def write do
        file_path = Path.join([
            :code.priv_dir(:task_manager),
            'file.txt'
        ])

        random_number = :rand.uniform(1000)
        File.write!(file_path, "Number: #{random_number}")
    end
end