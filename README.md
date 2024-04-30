# Morse Code Converter

This repository contains a simple Ruby function to convert Morse code into text characters. It provides two main functions:

1. `morse_to_char(morse)`: Converts a single Morse code sequence (e.g., ".-" or "--..") into its corresponding character (e.g., "A" or "Z"). If the input is not recognized as valid Morse code, it returns an error message.

2. `morse_to_text(morse_code)`: Converts a full Morse code message (with spaces between words) into a text string. It processes each Morse character and builds the resulting text.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/henriquemcmedeiros/morse-code-converter.git
   ```
2. Run the provided example:
   ```bash
   ruby morse_converter.rb
   ```
   Example input:
   ```bash
   - . ... - . / - .-. .- -.. ..- - --- .-. / -.. . / -- --- .-. ... .
   ```
## Contributors
- Henrique Medeiros
- Gabriel Reimberg
- Murilo Oliveira

Feel free to contribute or use this code in your projects!
