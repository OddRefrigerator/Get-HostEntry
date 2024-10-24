# Get-HostEntry

`Get-HostEntry` is a simple PowerShell script designed to retrieve and display DNS host entries (IP addresses) for a given hostname. This script is useful for quickly resolving hostnames to their associated IP addresses on local or remote systems.

## Features

- **Hostname Resolution:** Resolve a given hostname to its corresponding IP addresses (both IPv4 and IPv6).
- **Simple and Lightweight:** A minimal PowerShell script that can be run on any system with PowerShell installed.
- **Error Handling:** Includes basic error handling to catch and display invalid hostnames or DNS resolution failures.

## Requirements

- PowerShell (available by default on Windows and installable on macOS and Linux).
- Internet or local network connection for resolving DNS entries.

## Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/OddRefrigerator/Get-HostEntry.git
   ```

2. Optionally, copy the `Get-HostEntry.ps1` script to a location in your system's `$PATH` for easy access, or run it directly from the cloned directory.

## Usage

To use the `Get-HostEntry` script:

1. Open a PowerShell terminal.

2. Navigate to the directory where the script is located, or ensure it's in your `$PATH`.

3. Run the script with the hostname you want to resolve as an argument:

   ```powershell
   ./Get-HostEntry.ps1 -Hostname example.com
   ```

   Example output:

   ```
   Hostname: example.com
   IPv4 Address: 93.184.216.34
   IPv6 Address: 2606:2800:220:1:248:1893:25c8:1946
   ```

### Parameters

- `-Hostname`: The hostname you wish to resolve. This parameter is required.

### Example

```powershell
./Get-HostEntry.ps1 -Hostname google.com
```

This will return the IPv4 and IPv6 addresses for `google.com`.

## Error Handling

If the hostname cannot be resolved, the script will display an error message indicating that the DNS resolution failed:

```powershell
Error: Could not resolve hostname example.invalid
```

## Customization

You can modify the script to suit your specific needs, such as adding additional logging, output formats, or resolving multiple hostnames in bulk. The script is written in PowerShell, so it can easily be adapted to fit more complex use cases.

## Contributing

Contributions are welcome! If you have any improvements or fixes, feel free to fork the repository and submit a pull request.

### Steps for Contribution

1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of your feature or fix"
   ```
4. Push your branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request with a detailed explanation of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or issues, feel free to open an issue on GitHub or contact the repository owner.

---

Simplify your DNS lookups with `Get-HostEntry`!
