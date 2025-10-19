RISC-V ISA Specification
========================

RISC-V ISA Specification web page.

## Description

This is a documentation of RISC-V ISA.

Document would be deployed at https://msyksphinz-self.github.io/riscv-isadoc/html/index.html

ISA spec is based on RISC-V User-Level ISA V2.2.

Each instruction, bit encoding is generated from RISC-V Instruction set simulator Swimmer-RISCV(https://github.com/msyksphinz/swimmer_riscv.git).
- Swimmer-RISCV instruction decode list: https://github.com/msyksphinz/swimmer_riscv/blob/master/build/riscv_arch_table.json
- Executing `gen_rst_table.rb` in https://github.com/msyksphinz/swimmer_riscv/blob/master/script/ generaets instruction bit field.

## Usage

### Local Development

1. Edit `./source/*.adoc` files
2. Install dependencies:
   ```bash
   npm install
   bundle install
   ```
3. Generate HTML documentation:
   ```bash
   make
   ```
4. The generated documentation will be available in `./docs/` directory

### Automatic Deployment

This project uses GitHub Actions to automatically build and deploy documentation to GitHub Pages.

## Author

[msyksphinz](http://github.com/msyksphinz)
