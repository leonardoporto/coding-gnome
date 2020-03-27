defmodule Journey do

  defstruct(
    start: nil,
    start_launch: nil,
    finish_launch: nil,
    finish: nil
  )
  def calculate(journey) do
    diff1 = Time.diff(
      Time.from_iso8601!(journey.start_launch), 
      Time.from_iso8601!(journey.start) 
    ) 

    diff2 = Time.diff(
      Time.from_iso8601!(journey.finish), 
      Time.from_iso8601!(journey.finish_launch) 
    ) 


    (diff1 + diff2) / 60 / 60

  end
end
