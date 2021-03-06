return {
    read = 0x52,
    write = 0x53,
    postRead = function(values)
        local ret = {}
        ret[1] = values[1]
        return ret
    end,
    preWrite = function(values)
        local ret = {}
        ret[1] = values[1]
        return ret
    end,
    title = 'Setpoints',
    text = {},
    fields = {
        {t = 'D Setpoint', x = 15, y = 25, sp = 70, i = 1, min = 0, max = 100}
    }
}
