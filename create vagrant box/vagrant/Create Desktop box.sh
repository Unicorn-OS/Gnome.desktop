name=`basename "$PWD"`
image="$name.box"

pre(){
    ./ln.sh
}

build(){
    vagrant up
    vagrant halt
}

add(){
    vagrant package --output $image
    vagrant box add $name $image
}

clean(){
    vagrant destroy -f
}

_test(){
    vagrant box list
}

main(){
    pre
    build
    add
    clean
    _test
}

main