export ADDRESS=57:4C:4E:2B:18:3C

exitfn () {
    trap SIGINT              # Restore signal handling for SIGINT
    ./venv/Scripts/python.exe -m  ph4_walkingpad.main --stop=true -a $ADDRESS
    exit                     #   then exit script.
}

trap "exitfn" INT            # Set up SIGINT trap to call function.

./venv/Scripts/python.exe -m  ph4_walkingpad.main -a $ADDRESS
