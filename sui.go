package main

import (
	"flag"
	"fmt"
	"os"
	"syscall"
)

func main() {
	var fi = flag.String("file", "/bin/chmod", "file to give sticky bit")
	flag.Parse()

	syscall.Setuid(0)
	syscall.Setgid(0)

	err := os.Chmod(*fi, os.ModeSticky)
	if err != nil {
		fmt.Printf("Wat. %v\n", err)
	}
}
