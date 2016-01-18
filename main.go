package main

import (
	"fmt"
)

var (
	buildDate string
)

func main() {
	fmt.Printf("Drone AWS Lambda Plugin built at %s\n", buildDate)
}
