package main

import (
	"fmt"
	"log"
	"net/http"
)

const version = "v1"

func helloworld(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World, %s", version)
}

func main() {
	http.HandleFunc("/", helloworld)

	log.Fatal(http.ListenAndServe("0.0.0.0:8000", nil))
}
