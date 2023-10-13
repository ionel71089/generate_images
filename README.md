# Image Generator Script

This Bash script generates a series of images with random background colors and numbers in the center. The images are created using ImageMagick.

## Prerequisites

Before using this script, you need to have Homebrew and ImageMagick installed on your system.

### Installing Homebrew

Homebrew is a package manager for macOS, and it can be used to easily install various software packages, including ImageMagick. To install Homebrew, follow these steps:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the instructions provided during the installation process.

After the installation is complete, you can verify it by running:

```sh
brew --version
```

### Installing ImageMagick

ImageMagick is a software suite to create, edit, and compose bitmap images. To install ImageMagick using Homebrew, follow these steps:

```sh
brew install imagemagick
```

After the installation is complete, you can verify it by running:
```sh
convert -version
```

## Usage
Download the generate_images.sh script to your local machine.
Make the script executable by running:
```sh
chmod +x generate_images.sh
```
Run the script with the desired arguments. For example, to generate images with a size of 800x600 and numbers from 1 to 100, run:
```sh
./generate_images.sh 800x600 1 100
```

The script will create a series of image files with random background colors and numbers.


