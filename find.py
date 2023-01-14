import bleak
from bleak import BleakScanner
import asyncio

async def main():
    devices = await BleakScanner.discover()
    for d in devices:
        print(d,f"yes i found it ${d}")

asyncio.run(main())
