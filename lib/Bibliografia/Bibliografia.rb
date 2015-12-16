module Bibliografia
	class Bibliografia
		  attr_accessor :titulo, :autor, :fecha_publicacion 
	
		include Comparable
	
		  def initialize(titulo, &bloque) 
		    self.autor= []
		    self.fecha_publicacion= []
		    self.titulo= titulo
		    
		    
		    if block_given?  
		      if block.arity == 1
		        yield self
		      else
		       instance_eval &bloque 
		      end
		    end
		  end
		
		def <=>(other)
			#return nil unless other.kind_of? Bibliografia::Bibliografia
				
			#return nil unless other.kind_of? Bibliografia::Bibliografia
			if((@autor == other.autor)== 0)
					if((@fecha_publicacion <=> other.fecha_publicacion)==0)
						@titulo <=> other.titulo
					else
						@fecha_publicacion <=> other.fecha_publicacion
					end
			else
				@autor <=> other.autor
				
			end
		end
		
		
		
		#def to_s()
			
		#end
		
	end
	
	
	
	
	class Libro < Bibliografia
		attr_accessor  :edicion, :volumen, :lpublicacion, :editor
		def initialize(titulo, &bloque)
		
               @autor = []
               @fecha_publicacion = []
               @titulo = titulo
               @edicion = []
               @volumen = []
               @lpublicacion = []
               @editor= []
               
        	if block_given?  
		      if bloque.arity == 1
		        yield self
		      else
		       instance_eval &bloque 
		      end
		 	end
		 
               
		end
		
		def author(text, options = {})
			author= text
			author << " (#{options[:a_total]})" if options[:a_total]
			autor << author
		end
		
		def date(text, options = {})
			date= text
			date << " (#{options[:a_date]})" if options[:a_date]
			fecha_publicacion << date
			
		end
		
		def title(text, options = {})
			title= text
			title << " (#{options[:a_title]})" if options[:a_title]
			titulo << title
		end
		
		def edition(text, options = {})
			edition= text
			edition << " (#{options[:n_editions]})" if options[:n_editions]
			edicion << edition
		end
		
		def vols(text, options = {})
			vols = text
			vols << " (#{options[:n_vols]})" if options[:n_vols]
			volumen << vols 
		end
		
		def place(text, options = {})
			place= text
			edition << " (#{options[:a_place]})" if options[:a_place]
			lpublicacion << place
		end
		
		def ed(text, options= {})
			ed= text
			ed << " (#{options[:a_ed]})" if options[:a_ed]
			editor << ed
		end
		
		def to_s()
			salida= titulo
			salida << ", #{autor.join(', ')}, #{fecha_publicacion.join(', ')}, #{edicion.join(', ')}, #{volumen.join(', ')}, #{lpublicacion.join(', ')}, #{editor.join(', ')}\n\n"
			
			salida
		end
		
	
	end
	
	class Articulo < Bibliografia
		attr_accessor  :eds, :titulo2, :pags, :edicion, :volumen, :lpublicacion, :editor
		def initialize(titulo, &bloque)
			
			@autor = []
            @fecha_publicacion = []
            @titulo = titulo
            @eds = []
            @titulo2 = []
            @pags = []
            @edicion = []
            @volumen = []
            @lpublicacion = []
            @editor = []
            
            if block_given?  
		      if bloque.arity == 1
		        yield self
		      else
		       instance_eval &bloque 
		      end
		    end
            
		end
		
		def author(text, options = {})
			author= text
			author << " (#{options[:a_total]})" if options[:a_total]
			autor << author
		end
		
		def date(text, options = {})
			date= text
			date << " (#{options[:a_date]})" if options[:a_date]
			fecha_publicacion << date
			
		end
		
		def title(text, options = {})
			title= text
			title << " (#{options[:a_title]})" if options[:a_title]
			titulo << title
		end
		
		def title2(text, options = {})
			title2= text
			title2 << " (#{options[:a_title]})" if options[:a_title]
			titulo2 << title2
		end
		
		
		def edition(text, options = {})
			edition = text
			edition << " (#{options[:n_editions]})" if options[:n_editions]
			edicion << edition
		end
		
		
		def vols(text, options = {})
			vols = text
			vols << " (#{options[:n_vols]})" if options[:n_vols]
			volumen << vols 
		end
		
		def place(text, options = {})
			place= text
			place << " (#{options[:a_place]})" if options[:a_place]
			lpublicacion << place
		end
		
		def eds(text, options= {})
			eds = text
			eds << " (#{options[:a_eds]})" if options[:a_eds]
			editor << eds
		end
		
		def the_editor(text, options= {})
			the_editor = text
			the_editor << " (#{options[:a_editeur]})" if options[:a_editeur]
			editor << the_editor
		end
		
		def pages(text, options= {})
			pages = text
			pages << " (#{options[:a_editeur]})" if options[:a_editeur]
			editor << pages
		end
		
		def to_s()
			salida= titulo
			
			salida << ", #{autor.join(', ')}, #{fecha_publicacion.join(', ')},  #{titulo2.join(', ')},  #{editor.join(', ')}, #{edicion.join(', ')}, #{volumen.join(', ')}, #{lpublicacion.join(', ')}\n\n"
			
			salida
		end
	
	end
	
	class Edoc < Bibliografia
		attr_accessor :edicion, :tipo_medio, :lpublicacion, :editor, :source, :fechacceso
		def initialize(titulo, &bloque)
			@autor = []
            @fecha_publicacion = []
            @titulo = titulo
            @edicion = []	
            @tipo_medio = []
            @lpublicacion = []
            @editor = []
            @source = []
            @fechacceso = []
            
            if block_given?  
		      if bloque.arity == 1
		        yield self
		      else
		       instance_eval &bloque 
		      end
		    end
		end
		
		def author(text, options = {})
			author= text
			author << " (#{options[:a_total]})" if options[:a_total]
			autor << author
		end
		
		def date(text, options = {})
			date= text
			date << " (#{options[:a_date]})" if options[:a_date]
			fecha_publicacion << date
			
		end
		
		def title(text, options = {})
			title= text
			title << " (#{options[:a_title]})" if options[:a_title]
			titulo << title
		end
		
		def edition(text, options = {})
			edition = text
			edition << " (#{options[:n_editions]})" if options[:n_editions]
			edicion << edition
		end
		
		def place(text, options = {})
			place = text
			place << " (#{options[:a_place]})" if options[:a_place]
			lpublicacion << place
		end
		
		def the_editor(text, options= {})
			the_editor = text
			the_editor << " (#{options[:a_editeur]})" if options[:a_editeur]
			editor << the_editor
		end
		
		def access(text, options= {})
			access = text
			access << " (#{options[:a_access]})" if options[:a_access]
			fechacceso << access
		end
		
		def fuente(text, options= {})
			fuente = text
			fuente<< " (#{options[:a_fuente]})" if options[:a_fuente]
			source << fuente
		end
		
		def media(text, options= {})
			media = text
			media<< " (#{options[:a_media]})" if options[:a_media]
			tipo_medio << media
		end
		
		def to_s()
			salida= titulo
			
			salida << ", #{autor.join(', ')}, #{fecha_publicacion.join(', ')}, #{edicion.join(', ')}, #{tipo_medio.join(', ')}, #{lpublicacion.join(', ')}, #{editor.join(', ')}, #{source.join(', ')}, #{fechacceso.join(', ')}\n\n"
			
			salida
		end
		
	end
end
	
