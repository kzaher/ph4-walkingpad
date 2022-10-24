. venv/bin/activate
export ADDRESS=0D2C9F24-F57B-7658-5A97-C25BCAA50148

exitfn () {
    trap SIGINT              # Restore signal handling for SIGINT
    python3 -m  ph4_walkingpad.main --stop=true -a $ADDRESS
    exit                     #   then exit script.
}

trap "exitfn" INT            # Set up SIGINT trap to call function.

python3 -m  ph4_walkingpad.main -a $ADDRESS
