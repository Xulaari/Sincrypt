if syn then
    local SINKY = syn.crypt.random(64)
    local R1 = tostring(math.random(2 ^ 31 - 1))
    ENC = syn.crypt.encrypt(R1, SINKY)
else
    local SWINKEY = crypt.generatekey()
    local R1 =
        tostring(math.random(2 ^ 31 - 1)) ..
        tostring(math.random(2 ^ 31 - 1)) ..
            tostring(math.random(2 ^ 31 - 1)) ..
                tostring(math.random(2 ^ 31 - 1)) ..
                    tostring(math.random(2 ^ 31 - 1)) .. tostring(math.random(2 ^ 31 - 1))
    ENC = crypt.encrypt(R1, SWINKEY)
end