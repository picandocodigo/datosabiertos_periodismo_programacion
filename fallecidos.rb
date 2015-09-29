# coding: utf-8
require 'csv'
require 'pp'
tipos = {}
total = 0

CSV.foreach('fallecidos_2014.csv', encoding: 'iso-8859-2', col_sep: ';', headers: :first_row) do |row|
  # La quinta columna es el tipo de siniestro
  siniestro = row[4]
  # Agrego el tipo de siniestro y seteo el valor en 0
  tipos[siniestro] ||= 0
  # Sumo 1 a la cantidad de siniestros de este tipo
  tipos[siniestro] += 1
  # Sumo 1 al total
  total += 1
end

# Mostrar total:
puts "Total fallecidos en accidentes de tránsito 2014: #{total}"
puts
# Mostrar por tipo:
puts 'Por tipo de siniestro'
pp tipos
