function exe_cmd()
{
    echo $1
    eval $1
}
function show_help() 
{
    echo "usage: sh tools/$0; please run this script in the project root directory"
    exit 1
}
# if [ ! $# -eq 1 ]; then
#     show_help
# fi

dir=./iconfont-tool

root_dir=`pwd`
if [[ $root_dir == *"/tools"* ]]; then
    show_help
fi

exe_cmd "cp -rf $dir/dist/fonts $root_dir/src"
exe_cmd "cp $dir/dist/css/* $root_dir/src/style/"
