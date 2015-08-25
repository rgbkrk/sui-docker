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

	err := syscall.Setuid(0)
	if err != nil {
		fmt.Printf("uid Wat. %v\n", err)
	}
	err = syscall.Setgid(0)
	if err != nil {
		fmt.Printf("gid Wat. %v\n", err)
	}

	err = os.Chmod(*fi, os.FileMode(int(7777)))
	if err != nil {
		fmt.Printf("Wat. %v\n", err)
	}
}
