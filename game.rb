class Player
  attr_reader :strength, :defense, :speed, :max_health, :name
  attr_accessor :health

  # Class variables that are shared among ALL players
  @@player_list = [] #Each time we create a player, we will push them into this list.
  @@player_count = 0

  def initialize(name)
    ## These instance variables should be unique to each user. Every user will HAVE a name, but each user will probably have a different name.
    @name = name
    @strength = rand(8..12) # The stat values will all be random, but within a range of reasonableness
    @defense = rand(8..12)
    @speed = rand(8..12)
    @max_health = rand(18..24) # The max health value will be random, but higher than the others.
    @health = @max_health # Set the current health equal to the max health.
    puts("Player #{@name} has entered the game. \n  Strength: #{@strength}\n  Defense: #{@defense}\n  Speed: #{@speed}\n  Maximum health: #{@max_health}.\n")
    ## We're going to also manipulate the two class variables - While each user has their own specific defense or strength, the users all share the class variables that start with @@.
    @@player_list.push(self) ## The player will be added to the list of players.
    @@player_count += 1 ## The player count should go up by one.
    puts("There are currently #{@@player_count} players in the game.\n\n")
  end

  def attack(target)
    ## With a CLI, we want to print out all the information our users need to play this game.
    ## Let's show the attacker and defender's names here.
    puts("Player #{self.name} attacks #{target.name}!!!")
    puts("#{self.name}'s strength is #{self.strength} and target #{target.name}'s defense is #{target.defense}.")
    ## The battle will go differently depending on who is stronger.
    if self.strength < target.defense
      puts("Due to the target's strong defense, the attack only does half damage...")
      damage = self.strength / 2
    elsif self.strength > target.defense
      puts("Since the target is weaker than you are, the attack does double damage!")
      damage = self.strength * 2
    else
      puts("These players are evenly matched. The attack goes through normally.")
      damage = self.strength
    end
    target.health -= damage
    ## Let's pring out the new totals so that we know the final results of the fight.
    puts("#{target.name} now has #{target.health}/#{target.max_health} health remaining.\n\n")
  end

  ## All other methods you code for the player class will fit best below this line.



  ## All other methods you code for the player class will fit best below this line.
end
## Be careful not to code player methods outside the player class.
