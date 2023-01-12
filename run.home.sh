. venv/bin/activate
export ADDRESS=90321197-5B4D-0A78-F8B9-4696CEF0F4B5

exitfn () {
    trap SIGINT              # Restore signal handling for SIGINT
    python3 -m  ph4_walkingpad.main --stop=true -a $ADDRESS
    exit                     #   then exit script.
}

trap "exitfn" INT            # Set up SIGINT trap to call function.

python3 -m  ph4_walkingpad.main -a $ADDRESS
