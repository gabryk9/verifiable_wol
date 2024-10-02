# Wake-on-LAN Script

This repository contains a Bash script to send a Wake-on-LAN (WOL) signal to a device on your network. The script reads configuration settings from a `.env` file, which contains the target device's IP address and MAC address.

## Prerequisites

- A Linux environment with Bash support.
- `etherwake` installed for sending WOL packets. You can install it using:

  ```bash
  sudo apt-get install etherwake
  ```

- Ensure your device supports Wake-on-LAN and is properly configured to accept WOL packets.

## Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/wake-on-lan.git
   cd wake-on-lan
   ```

2. **Create a `.env` file** in the root of the repository with the following format:

   ```dotenv
   TARGET_IP=<your_device_ip>
   TARGET_MAC=<your_device_mac>
   ```

   Replace `<your_device_ip>` and `<your_device_mac>` with the actual IP address and MAC address of the target device.

## Script Overview

The provided script performs the following actions:

1. **Checks for the `.env` file** and exports the variables defined within it.
2. **Sends a WOL signal** to the specified device using its MAC address.
3. **Waits for the device to come online** by pinging its IP address for up to 120 seconds.
4. **Outputs the status** of the operation, confirming whether the device is online or if a physical check is needed.

## Usage

1. **Make the script executable**:

   ```bash
   chmod +x wake_on_lan.sh
   ```

2. **Run the script**:

   ```bash
   ./wake_on_lan.sh
   ```

## License

This project is licensed under the GNU General Public License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- This script utilizes `etherwake` for sending Wake-on-LAN packets.
- Inspired by various online resources and community contributions to network automation.
