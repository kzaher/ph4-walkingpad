. venv/bin/activate
export ADDRESS=8ECF901E-82B2-826D-FC47-E44DC7D8CBC0

exitfn () {
    trap SIGINT              # Restore signal handling for SIGINT
    python3 -m  ph4_walkingpad.main --stop=true -a $ADDRESS
    exit                     #   then exit script.
}

trap "exitfn" INT            # Set up SIGINT trap to call function.

python3 -m  ph4_walkingpad.main -a $ADDRESS
