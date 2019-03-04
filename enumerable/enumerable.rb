module Enumerable

    def my_each
        i = 0
        while i < self.size
            yield(self[i])
            i += 1
        end
        return self
    end
    
    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)
            i += 1
        end
        return self
    end

    def my_select
        select_array = []
        self.my_each {|element| select_array << element if yield(element)}
        return select_array
    end

    def my_all?
        if block_given?
            self.my_each {|element| return false if yield(element) == false || yield(element).nil?}
            true
        else
            self.my_all? {|element| element != false && element.nil? != true}
        end
    end

    def my_any?
        if block_given?
            self.my_each {|element| return true if yield(element) == true || yield(element).nil?}
        end
        return false
    end

    def my_none?
        if block_given?
            self.my_each {|element| return false if yield(element) == true || yield(element).nil?}
        end
        return true
    end

    def my_count
        i = 0
        if block_given?
            self.my_each {|element| i += 1 if yield(element)}
        else
            i = self.length
        end
        return i
    end

    def my_map(proc=nil)
        mapped = []
        self.my_each { |element| mapped << (proc.nil? ? yield(element) : proc.call(element))}
        return mapped
    end

    def my_inject(result=nil)
        result = self[0] if result.nil?
        self.my_each { |i| result = yield(result, i)}
        return result
    end
end

def multiply_els array
   puts array.my_inject(1) { |result, element| result * element}
end

