class IndexController < ApplicationController
  require 'csv'  

  before_action :read_csv

  def home

  end

  # 1
  def top_ten_avg
    players = get_top_ten_payers
    player_names = []
    players.each do |p|
      player_names << p.split(",")[0]
    end
    gon.player_names = player_names
  end

  # 2
  def main_att_pace

  end
  def main_att_shoot

  end
  def main_att_pass

  end
  def main_att_dribble

  end
  def main_att_defense

  end
  def main_att_physic

  end

  private

  def read_csv
    @csv_text = CSV.read(Rails.root.join('FullData.csv'),{:headers => true, :col_sep => ';', :encoding => 'ISO-8859-1'})
  end

  def get_top_ten_payers # ignoring 3 goalkeepers
    players = []
    @csv_text.each_with_index do |row, index|
      unless (index == 4 || index == 5 || index == 9)
        players << row[0]
      end 
      break if index >= 12 
    end
    return players
  end

end
