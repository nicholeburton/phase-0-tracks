# Data structure based on a car

my_car = {
  inside_car: {
    max_capacity: 5,
    passengers: {
      driver: 'mom',
      passenger: 'mom2',
      back_seat: 'kids',
    },
    snacks: ['cheerios', 'gushers', 'milk'],

    luggage: {
      suitcases: 4,
      suitcase_type: ['small suitcase', 'large suitcase']
    },
  },

  dashboard: {
    entertainment_system: {
      music: ['R&B', 'Opera', 'Classical'],
      movies: {
        comedy: ['Spy', 'Emperor\'s New Groove'],
        romance: ['Princess Bride', 'Princess Mononoke']
      }
    },

    climate_control: {
      air_conditioning: false,
      heating:false
    }
  }
}

puts "Car before:"
p my_car

#switch mom and mom2
my_car[:inside_car][:driver] = 'mom2'
my_car[:inside_car][:passenger] = 'mom'

#some snacks were eaten.
my_car[:inside_car][:snacks].delete('cheerios')

#found another CD in the car.
my_car[:dashboard][:entertainment_system][:music].push('Rap')

#turned on the A / C
my_car[:dashboard][:climate_control][:air_conditioning] = true

# car too heavy. Taking out a suitcase.
my_car[:inside_car][:luggage][:suitcases] -= 1

puts "Car after:"
p my_car
