defmodule TaskManagerTest.RandomNumberTest do
    use ExUnit.Case
    import Mock

    test "should generate different numbers when calling 'write' twice" do
        :ets.new(:contents, [:set, :private, :named_table])
        with_mock File, [write!: fn (_path, content) -> :ets.insert_new(:contents, {content}) end] do
            TaskManager.RandomNumber.write
            TaskManager.RandomNumber.write
        end

        contents = :ets.tab2list(:contents)
        [first_content | contents] = contents
        [second_content | _] = contents

        assert first_content != second_content
    end
end