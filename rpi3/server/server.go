package main

import (
	"net/http"
	"log"
)

func main() {
	fs := http.FileServer(http.Dir("static"))
	http.Handle("/static/", http.StripPrefix("/static/", fs))
	log.Println("Listening...")
	http.ListenAndServe(":80", nil)
}

