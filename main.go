package main

import "fmt"

func test() error {
	return fmt.Errorf("this is an error")
}

func main() {
	test()

	var mp map[string]string
	mp["hello"] = "你好"

	v, _ := mp["hi"]
	fmt.Println(mp, v)
}
