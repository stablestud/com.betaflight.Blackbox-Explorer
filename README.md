# com.betaflight.Blackbox-Explorer
Flatpak build configuration for the [betaflight/blackbox-log-viewer: Interactive log viewer for flight logs recorded with blackbox](https://github.com/betaflight/blackbox-log-viewer)

## Creating an update

When updating the flatpak to a new Betaflight Blackbox Explorer release the following has to be done:
- Change the App version in `generate-sources.sh`
- Generate required sources for the update by running `generate-sources.sh` or `make sources`
- Build the flatpak `flatpak-builder build-dir com.betaflight.Blackbox-Explorer.yml` or `make build`
- If build goes through, manually test the build by running the flatpak `make install` `make run`

## Generated files

The following files are auto generated and should not be changed manually.    
Instead run `generate-sources.sh` to generate the latest sources based on the selected Betaflight Configurator Version in `generate-sources.sh`

- `src-appdata.json`
- `src-app.json`
- `com.betaflight.Blackbox-Explorer.appdata.xml`

### Errors in logs

Following errors can be ignored as they do not affect the betaflight-configurator
- `Failed to load module "pk-gtk-module"`
- `Failed to load module "canberra-gtk-module"`
- `Failed to parse extension manifest.`
- `Too short EDID data: manufacturer id`
- `Failed to connect to the bus: Failed to connect to socket /run/dbus/system_bus_socket: No such file or directory`
- `InitializeSandbox() called with multiple threads in process gpu-process.`
- `GetVSyncParametersIfAvailable() failed for X times!`
