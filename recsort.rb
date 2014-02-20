def sort arr
    recSort arr, []
end

def recSort old, new
    if old.length <= 0
        return new
    end

    temp = []

    smallest = old.pop

    old.each do |w|
        if (w.downcase) < (smallest.downcase)
            temp.push(smallest)
            smallest = w
        else
            temp.push(w)
        end
    end
    
    new.push(smallest)
    recSort temp, new
end

arr = ["Jerry", "elaine", "george", "Susan", "camelback", "Ricola", "Art Vandelay"]
puts sort(arr)

