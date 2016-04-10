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

root_dir=`pwd`
if [[ $root_dir == *"/tools"* ]]; then
    show_help
fi

extension_dir=$root_dir'/extension'

exe_cmd "npm run build-popup-prod"
exe_cmd "npm run build-prod"
