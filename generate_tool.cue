@experiment(explicitopen)

package registry

import (
	"encoding/yaml"
	"tool/file"
)

// Generate generates .github content from the CUE files in
// the top level directory.
command: generate: {
	for name, content in issues {
		file.Create
		filename: ".github/ISSUE_TEMPLATE/\(name)"
		contents: yaml.Marshal(content)
	}
}
