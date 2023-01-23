. venv/bin/activate
export ADDRESS=1447FF81-8E91-7130-AC42-D700F2EED7B1

exitfn () {
    trap SIGINT              # Restore signal handling for SIGINT
    python3 -m  ph4_walkingpad.main --stop=true -a $ADDRESS
    exit                     #   then exit script.
}

trap "exitfn" INT            # Set up SIGINT trap to call function.

python3 -m  ph4_walkingpad.main -a $ADDRESS
