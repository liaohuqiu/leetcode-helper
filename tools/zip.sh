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

exe_cmd "rm -rf output"
exe_cmd "mkdir output"
exe_cmd "cp data/leetcode-helper-chrome.pem $extension_dir/key.pem"
exe_cmd "cd $extension_dir"
exe_cmd "zip -r ../output/leetcode-helper.zip *"
exe_cmd "rm $extension_dir/key.pem"
