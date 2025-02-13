#!/bin/sh

primary=#689D6A
secondary=#D79921
foreground=#A89984

get_status() {
    status=$(transformers_ocr status)
    if [[ $status == "Running"* ]]; then
        echo %{F"$primary"}manga ocr on%{F-}
    else
        echo manga ocr off
    fi
}

toggle() {
    status = $(transformers_ocr status)
    if [[ $status == "Running"* ]]; then
        transformers_ocr stop
    else
        transformers_ocr start
    fi
}

get_status

case "$1" in
    --toggle)
        toggle
        ;;
    *)
        print
        ;;
esac
