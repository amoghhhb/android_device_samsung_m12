# TWRP Device Tree for Samsung Galaxy M12 (SM-M127G)

![Build & Release TWRP Recovery](https://github.com/YOUR_GITHUB_USERNAME/Twrp_samsung-m12-sm-m127g-ds/actions/workflows/twrp.yml/badge.svg)

This repository contains the official TWRP device tree for **Samsung Galaxy M12 (SM-M127G / Exynos 850)**, configured for building TWRP Recovery using minimal Android build manifests and automated GitHub Actions releases.

---

## 📱 Device Specifications

| Feature | Details |
|---|---|
| **Device** | Samsung Galaxy M12 |
| **Model** | SM-M127G (m12 / m12dd) |
| **Chipset** | Samsung Exynos 850 (8x Cortex-A55) |
| **Architecture** | ARM64 (`arm64-v8a`) |
| **Display** | 720 x 1600 pixels (HD+), 300 DPI |
| **Android Version** | Android 11 / 12 / 13 |
| **Dynamic Partitions** | Yes (`system`, `vendor`, `product`, `odm`) |
| **FBE Encryption** | File-Based Encryption (AES-256-XTS) |

---

## 📁 Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── twrp.yml         # GitHub Actions automated build & release workflow
├── Android.mk               # Build entry file
├── AndroidProducts.mk       # Product definitions
├── BoardConfig.mk           # Architecture, partitions & TWRP build flags
├── device.mk                # Device packages & dynamic partition config
├── twrp_m12.mk              # Product makefile
├── recovery.fstab           # Partition mount points for recovery
├── twrp.flags               # Supplementary TWRP partition flags
├── vendorsetup.sh           # Lunch combo additions
├── extract_device_info.py   # ADB device extraction script
├── device_info.json         # Complete extracted system properties & partition layout
└── README.md                # Documentation
```

---

## 🚀 How to Build via GitHub Actions

1. Create a new repository on GitHub (e.g. `android_device_samsung_m12`).
2. Push all files in this project directory to your GitHub repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Samsung Galaxy M12 TWRP Device Tree"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/android_device_samsung_m12.git
   git push -u origin main
   ```
3. Go to the **Actions** tab in your GitHub repository.
4. The workflow **Build & Release TWRP Recovery (Samsung Galaxy M12)** will automatically trigger on push!
5. Once complete, your build (`twrp-SM-M127G-recovery.tar` and `twrp-SM-M127G-recovery.img`) will be automatically published under **Releases**!

---

## ⚡ How to Flash on Device

### Option 1: Odin (Windows)
1. Download `twrp-SM-M127G-recovery.tar` from the GitHub Release.
2. Put your Samsung Galaxy M12 into **Download Mode** (Power off -> Hold Volume Down + Volume Up -> Plug in USB cable).
3. Open Odin (v3.14+).
4. Select `twrp-SM-M127G-recovery.tar` in the **AP** slot.
5. Uncheck **Auto Reboot** in Odin Options.
6. Click **Start**.
7. Once flashed (`PASS!`), force reboot by holding `Power + Volume Down`, then immediately switch to `Power + Volume Up` to boot directly into TWRP Recovery.

### Option 2: Heimdall (Linux/Mac)
```bash
tar -xf twrp-SM-M127G-recovery.tar
heimdall flash --RECOVERY recovery.img --no-reboot
```

---

## ⚠️ Notes for Booting TWRP
- Ensure your bootloader is **unlocked** (OEM Unlocking turned ON in Developer Options & Download mode unlock state `DEV`).
- Flash `Multidisabler` zip or disable forced encryption / Knox guard if required by stock ROM.
