require 'ppt6'

describe PiedraPapelTijeras do


before (:each) do
	@muestra = PiedraPapelTijeras.new
	@muestra.set_jh(:piedra)
end


it "Debe existir una tirada para el humano" do
	@muestra.obtener_humano.should_not == nil
end


it "Debe existir una tirada para la maquina" do
	@muestra.obtener_maquina.should_not == nil
end


it "Debe existir una lista de tiradas validas" do
	PiedraPapelTijeras.get_posibles.include?(:piedra).should be_true
	PiedraPapelTijeras.get_posibles.include?(:papel).should be_true
	PiedraPapelTijeras.get_posibles.include?(:tijeras).should be_true
end


it "Debe existir una lista de jugadas posibles y quien gana" do
	PiedraPapelTijeras.get_gana(:piedra).should == :tijeras
	PiedraPapelTijeras.get_gana(:papel).should == :piedra
	PiedraPapelTijeras.get_gana(:tijeras).should == :papel
end


it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
	@muestra.obtener_humano.should == :piedra
end


it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
	[:piedra, :papel, :tijeras].include?(@muestra.obtener_maquina).should be_true
end


it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
	["Jugador", "Maquina", "Empate"].include?(@muestra.jugar).should be_true
end


end


=begin
Debe existir una tirada para el humano (geter)-------------------------------------------------------------------- HECHA
Debe existir una tirada para la maquina (geter)------------------------------------------------------------------- HECHA
Debe existir una lista de tiradas validas (geter)----------------------------------------------------------------- HECHA
Debe existir una lista de jugadas posibles y quien gana (geter)--------------------------------------------------- HECHA
Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (generador)---- HECHA
Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida (Generador) HECHA
Debe existir una lista de resultados de un juego desde el punto de vista de la maquina --------------------------- NO
Debe existir un resultado para un juego, desde el punto de vista de la maquina ----------------------------------- NO
Se debe invocar al metodo jugar() para determinar el ganador de la tirada ---------------------------------------- HECHA
Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades ------------- DUDA
Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma ----------------------------- NO
=end
