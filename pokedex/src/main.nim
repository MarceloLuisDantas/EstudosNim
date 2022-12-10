import ./pokemon

proc main() = 
    var leavanny: Pokemon = newPokemon(75, 103, 80, 70, 80, 92, "Leavanny")
    echo leavanny.show()
    discard leavanny.levelUp(30)
    echo leavanny.show()
    discard leavanny.levelUp(60)
    echo leavanny.show()

main()