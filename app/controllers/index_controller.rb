class IndexController < ApplicationController
  require 'csv'  

  before_action :read_csv

  def home

  end

  # 1
  def top_ten_avg
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
  end

  # 2
  def main_att_pace
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([33, 34], players)
  end
  def main_att_shoot
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([41, 42, 43, 46, 47], players)
  end
  def main_att_pass
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([33, 34], players)
  end
  def main_att_dribble
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([33, 34], players)
  end
  def main_att_defense
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([33, 34], players)
  end
  def main_att_physic
    players = get_top_ten_payers
    gon.player_names = get_player_names(players)
    gon.attributes = get_player_attributes([33, 34], players)

  end

  private

  def read_csv
    @csv_text = CSV.read(Rails.root.join('FullData.csv'),{:headers => true, :col_sep => ';', :encoding => 'UTF-8'})
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

  def get_player_names(data)
    player_names = []
    data.each do |p|
      player_names << p.split(",")[0]
    end
    return player_names
  end

  def get_player_attributes(indexes, data)
    all_values = []
    indexes.each do |i|
      current_data = []
      data.each do |p|
        current_data << p.split(",")[i].to_i
      end

      all_values << current_data
    end
    return all_values
  end
end
