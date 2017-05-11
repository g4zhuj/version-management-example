
#当前版本号,每次更新服务时都必须更新版本号
CurrentVersion=0.0.1
#项目名
Project=version-management-example



Path=$Project"/version"
GitCommit=$(git rev-parse --short HEAD || echo unsupported)

go build -ldflags "-X $Path.Version=$CurrentVersion -X '$Path.BuildTime=`date "+%Y-%m-%d %H:%M:%S"`' -X '$Path.GoVersion=`go version`' -X $Path.GitCommit=$GitCommit"

echo "build finish !!"
echo "Version:" $CurrentVersion
echo "Git commit:" $GitCommit
echo "Go version:" `go version`
