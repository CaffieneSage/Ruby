require 'ruby2d'

#Setup window dimensions and title.
set title: "Cast Away"
set width: 300, height: 200

#Create the player.
@square = Square.new(x: 25, y: 150, size: 16, color: 'blue')

@speed = 0

on  :key_down do |event|
    if event.key == 'd'
        @speed += 2
        if @speed >= 30
            @speed = 30
        end

    elsif event.key == 'a'
        @speed += -2
        if @speed <= -30
            @speed = -30
        end
    end
end

update do
    @square.x += @speed
end


#Show the window on screen.
show