class ComplexNumber

    attr_accessor :img ,:real,:sum_real,:sum_img,:mul_real,:mul_img
    attr_reader :add_count,:mul_count
    @@add_count=0
    @@mul_count=0
    
    def initialize(img=1, real=1)
        @img=img
        @real=real
        
    end

    def +(complex2)
        @real=self.real+complex2.real
        @img=self.img+complex2.img
        @result= ComplexNumber.new(@img,@real)
        return @result
    end

    def *(complex2)
        @real=self.real*complex2.real
        @img=self.img*complex2.img
        @result= ComplexNumber.new(@img,@real)
        return @result
        
    end
    
    def self.bulk_add(arr_complex)
        @result=arr_complex[0]
        i=1
        if i < arr_complex.count
            @result=@result+arr_complex[i]
        end    
        @@add_count+=1
        return "real = #{@result.real} img = #{@result.img}  "
    end  

    def self.bulk_multiply(arr_complex)
        @result=arr_complex[0]
        i=1
        if i < arr_complex.count
            @result=@result*arr_complex[i]
        end    
        @@mul_count+=1
        return "real = #{@result.real} img = #{@result.img}  "
    end

    def self.get_stats()
       return "add used #{@@add_count} and multiply used #{@@mul_count}"
    end      

end    

complex1 = ComplexNumber.new(1,2)
complex2 = ComplexNumber.new(0,2)
complex3 = ComplexNumber.new(1,1)
arr_complex=[]
arr_complex.push(complex1)
arr_complex.push(complex2)
arr_complex.push(complex3)
result = ComplexNumber.bulk_add(arr_complex) #1
puts result
mul_res = ComplexNumber.bulk_multiply(arr_complex) #2
puts mul_res 
stats=ComplexNumber.get_stats()
puts stats



