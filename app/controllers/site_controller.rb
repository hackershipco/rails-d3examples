class SiteController < ApplicationController
  def home
  end

  def array
    return render json: (10..50).to_a.shuffle.take(15)
  end

  def json
    a = []
    b = []
    c = []
    (0..100).to_a.each do |i|
      a.push({x: i, y: Math.sin(i/10) *0.25 + 0.5 })
      b.push({x: i, y: 0.5 * Math.cos(i/10) })
      c.push({x: i, y: Math.sin(-i/10) })
    end
    render json: [
      {values: a, key: 'Sine', color: '#ff7f0e'},
      {values: b, key: 'Cos', color: '#2ca02c'},
      {values: c, key: 'Moar Sin', color: '#7777ff'},
    ]
  end

  def json2
    a = []
    b = []
    (Date.new(2014, 01, 01)..Date.new(2014, 01, 30)).each do |date|
      i = date.strftime('%Q').to_i
      a.push([i, Math.cos(i / 10) ])
      b.push([i, Math.sin( (i / 10000000) / 10) ])
    end
    render json: [
    {
      key: 'North America',
      values: a
    },
    {
      key: 'Korea del Sur',
      values: b
    }]
  end
end
