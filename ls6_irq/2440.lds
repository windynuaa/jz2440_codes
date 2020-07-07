SECTIONS {
    . = 0x30000000;
    code_start = .;
    .text  :
    {
        . = ALIGN(4);
        *(.text)
    }

    .rodata :
    {
        . = ALIGN(4);
        *(.rodata)
    }
    .data   :
    {
        . = ALIGN(4);
        data_start = .;
        *(.data)
        data_end = .;
    }
    .bss    :
    {
        . = ALIGN(4);
        bss_start = .;
        *(.bss)
        bss_end = .;
    }
}