package main

// 构建信息
var (
	BuildVersion   string
	BuildGitBranch string
	BuildGitRev    string
	BuildGitCommit string
	BuildDate      string
	BuildBy        string
)

func main() {
	println(BuildVersion)
	println(BuildGitBranch)
	println(BuildGitRev)
	println(BuildGitCommit)
	println(BuildDate)
	println(BuildBy)
}
