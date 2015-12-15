#!/usr/bin/env ruby
# encoding: utf-8

require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'


describe Bibliografia do
            
        context "#Pruebas con libros" do
            
            libro4 = Bibliografia::Libro.new("Los Pilares de la Tierra") do |r| 
                    
                      r.autor = "Follet, K."   
                      r.fecha_publicacion = "2010"
                      r.edicion = "Tercera"
                      r.volumen = "1" 
                      r.lpublicacion = "EEUU"
                      r.editor = "Bolsillo"
                      
            end
            
            #lista1 = List::List.new()
            #lista1.insert_single_beg(libro4)
            
            
            it "Se crea un objeto r de tipo libro" do
                expect(libro4.kind_of?Bibliografia::Libro).to eq(true)
            end
            
            
            
            
            libro5 = Bibliografia::Libro.new("Mis mejores recetas") do  
                    
                      author  "Arguiñano, K." 
                      date "2010"
                      edition  "Primera", :n_editions => "total 5"
                      vols  "1", :n_vols => "1 de 2"
                      place  "España"
                      ed  "Planeta"
                      
            end
            it "Se crea un DSL con el libro 5" do
                expect(libro5.kind_of?Bibliografia::Libro).to eq(true)
            end
                
            puts libro5
            
            
            articulo1 = Bibliografia::Articulo.new("Beyond the MLA handbook") do
                
                author "Harnack, A"
                date "1996"
                title2 "Documenting electronic sources on the Internet"
                edition "Segunda", :n_editions => " total 3"
                vols "2",  :n_vols => "2 of 2"
                place "Chicago", :a_place => "Illinois"
                pages "30"
                the_editor "Science"
                eds "B. Editor"
                
            end
            it "Se crea un DSL con articulo1" do
                expect(articulo1.kind_of?Bibliografia::Articulo).to eq(true)
            end
            
            puts articulo1
            
            edoc1= Bibliografia::Edoc.new("Encyclopedia of Chemical Technology") do
                
                author "Othmer, K."
                date "1991"
                edition "First", :n_editions => "1 of 1"
                media "CD-DVD"
                place "France", :a_place => "Paris"
                the_editor "JACS", :a_editeur => "Chem section"
                fuente "www.cas.usf.edu"
                access "17 March", :a_access => "Online"
                
            end
            
            it "Se crea un DSL con edoc1" do
                expect(edoc1.kind_of?Bibliografia::Edoc).to eq(true)
            end
            puts edoc1
            
            
           
        end
        

        
end
    
















