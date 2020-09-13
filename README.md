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

1. Edit `./source/*.rst`
2. To generate html page, hit `make html` in root repository.
3. `./docs/html/` is referred from index.html. To deploy page, just pushing master branch.

## Author

[msyksphinz](http://github.com/msyksphinz)
