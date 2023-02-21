class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @current_player_name = @player1
    @cups = Array.new(14) {[]}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...cups.length).each do |cup_idx|
      next if cup_idx == 6 || cup_idx == 13
      cups[cup_idx] += [:stone, :stone, :stone, :stone]
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !start_pos.between?(0, 14)
    raise "Starting cup is empty" if cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    current_pos = start_pos + 1
    
    until cups[start_pos].empty?
      cups[current_pos] << cups[start_pos].pop unless current_pos == (current_player_name == @player_1 ? 6 : 13)
      current_pos += 1
    end
    self.render
    self.next_turn(current_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if cups[ending_cup_idx].empty?
      return :switch
    # elsif 
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[1..5].all?{|cup| cup.empty?} || cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    side_1 = cups[6].count
    side_2 = cups[13].count
    case side_1 <=> side_2
    when 1
      return @player1
    when 0
      return :draw
    when -1
      return @player2
    end
  end
end