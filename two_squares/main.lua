-- initialize variables
function love.load()
    square1 = { x = 100, y = 100, size = 50, speed = 200 }
    square2 = { x = 150, y = 150, size = 50, speed = 200 }
    collisionDetected = false
end

function love.update(dt)
    -- update square1 positions
    if love.keyboard.isDown("a") then
        square1.x = square1.x - square1.speed * dt
    end
    if love.keyboard.isDown("d") then
        square1.x = square1.x + square1.speed * dt
    end
    if love.keyboard.isDown("w") then
        square1.y = square1.y - square1.speed * dt
    end
    if love.keyboard.isDown("s") then
        square1.y = square1.y + square1.speed * dt
    end

    -- square1 2
    if love.keyboard.isDown("left") then
        square2.x = square2.x - square2.speed * dt
    end
    if love.keyboard.isDown("right") then
        square2.x = square2.x + square2.speed * dt
    end
    if love.keyboard.isDown("up") then
        square2.y = square2.y - square2.speed * dt
    end
    if love.keyboard.isDown("down") then
        square2.y = square2.y + square2.speed * dt
    end
end

function love.draw()
    -- draw square1
    love.graphics.setColor(love.math.colorFromBytes(101, 154, 240))
    love.graphics.rectangle("fill", square1.x, square1.y, square1.size, square1.size)

    -- draw square2
    love.graphics.setColor(love.math.colorFromBytes(45, 235, 108))
    love.graphics.rectangle("fill", square2.x, square2.y, square2.size, square2.size)

    -- draw the line
    love.graphics.setColor(love.math.colorFromBytes(255,255,255))
    love.graphics.line(square1.x + 25, square1.y + 25, square2.x + 20, square2.y + 20)
end