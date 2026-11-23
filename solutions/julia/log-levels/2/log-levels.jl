message(msg) = join(strip.(split(msg))[2:end], " ")

log_level(msg) = lowercase(strip.(split(msg))[1][2:end-2])

reformat(msg) = "$(message(msg)) ($(log_level(msg)))"
