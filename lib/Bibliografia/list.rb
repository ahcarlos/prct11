
 
 Node= Struct.new(:prev, :value, :next)



module List
    
    class List

      
         include Enumerable
        attr_accessor :inicio, :fin
       
        def initialize()
            
            @inicio= nil
            @fin = nil
        end
        
        
        def extract_beg()
            
            if (@inicio != nil)
                aux= @inicio
                @inicio= @inicio.next
                return aux
            else
                return nil
            end
        end
        
        
        
       
        
        def insert_single_beg(valor)
            
            nodo = Node.new(nil, valor, nil)
            
            if (@inicio == nil)
                @inicio = nodo
                @fin = nodo
            else
                aux = @inicio
                @inicio = nodo
                @inicio.next = aux
                aux.prev = @inicio
                
            end
        end
        
       
        
   
        
        def insert_end(valor)
            
            nodo = Node.new(nil, valor,nil)
            if(@fin == nil)
                @fin = nodo
                @inicio = nodo
            else
                aux = @fin
                @fin = nodo
                @fin.prev = aux
                aux.next = @fin
            end  
        end
        
        
    def each
        aux = @inicio
        if (@inicio == nil and @fin == nil)
                
                yield nil
                
            elsif (@inicio == @fin)
                
                yield @inicio.value
                
            else
                while(aux != nil)
                    yield aux.value  
                    aux = aux.next 
                end
        end
    end 
       
        
        
        
        def extract_end() #Extraer al final
            if(@fin != nil)
                aux= @fin
                @fin= @fin.prev
                return aux
            else
                return nil
            end
            
        end
        
        
        
        
        def insert_multiple_beg(nodos) #insertar multiple al principio
            nodos.each do |element|
                insert_single_beg(element)
            end
        end
        
        def insert_multiple_end(nodos) #Insertar multiple al final
            nodos.each do |element|
                insert_single_end(element)
            end
        end
        
        
        
        
        def empty() #Comprueba si la lista esta vacia
            
            if(@inicio == nil)
                return true
            else
                return false
            end
            
        end
        
        
        def to_s()
            
            lista_ref = []
            index= 0
            while(@inicio != nil)
               lista_ref1= @inicio.value.to_s()
               lista_ref[index]= lista_ref1
                @inicio= @inicio.next
                index += 1
            end
            lista_ref
        end
        
        
    end

end