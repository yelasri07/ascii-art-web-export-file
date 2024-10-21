package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	exportfile "exportfile/handlers"
)

const port string = ":8080"

func main() {
	if len(os.Args) != 1 {
		fmt.Println("Please enter only the program name.")
		return
	}
	
	http.HandleFunc("/assets/images/", exportfile.ImagesHandler)
	http.HandleFunc("/assets/css/", exportfile.CssHandler)
	http.HandleFunc("/", exportfile.IndexPage)
	http.HandleFunc("/ascii-art", exportfile.AsciiArtPage)
	http.HandleFunc("/export",exportfile.ExportHandler)
	fmt.Println("http://localhost"+port+"/")
	log.Fatal(http.ListenAndServe(port, nil))
}
