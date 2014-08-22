class StaticController < ApplicationController
  def home
    @lost = Advertise.where(status: 'perdido').limit(4)
    @found = Advertise.where(status: 'encontrado').limit(4)
    @transit = Advertise.where(status: 'transito').limit(4)
    @adoption = Advertise.where(status: 'adopcion').limit(4)
  end
end
