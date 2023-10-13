#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Please install it to use this script."
    exit 1
fi

# Check if the number of arguments is correct
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <width>x<height> <start> <end>"
    exit 1
fi

dimensions="$1"
start="$2"
end="$3"

# Function to generate a random color
random_color() {
    echo "rgb($(jot -r 1 0 255),$(jot -r 1 0 255),$(jot -r 1 0 255))"
}

# Create images
for ((i = start; i <= end; i++)); do
    text="$i"
    background_color=$(random_color)
    output_file="image_$i.png"

    convert -size "$dimensions" xc:"$background_color" -gravity Center -pointsize 100 -fill white -annotate 0 "$text" "$output_file"
done

echo "Images generated with numbers from $start to $end."
