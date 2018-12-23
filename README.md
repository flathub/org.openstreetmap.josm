# About JOSM

JOSM is a visual editor for [OpenStreetMap](https://www.openstreetmap.org/).
The website of JOSM is [https://josm.openstreetmap.de/](https://josm.openstreetmap.de/)

# Flatpak Installation

Installing JOSM from the Flathub repository
```
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --user install flathub org.openstreetmap.josm
```

# Flatpak Updates

Updating JOSM from the Flathub repository
```
flatpak --user update org.openstreetmap.josm
```

# Run JOSM Flatpak

To run JOSM from command-line
```
flatpak run org.openstreetmap.josm
```
