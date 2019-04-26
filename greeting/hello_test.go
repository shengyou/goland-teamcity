package greeting

import (
	"fmt"
	"testing"
)

func Test(t *testing.T) {

	t.Run("Test Hello method", func(t *testing.T) {
		want := "Hello"
		got := Hello()

		if got == want {
			fmt.Printf("want '%s' but got '%s'", want, got)
		}

	})

}
