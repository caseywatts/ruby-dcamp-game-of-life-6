class Neighborhood
  def initialize(starter_grid)
    @grid = starter_grid
  end

  def grid
    puts @grid
    @grid
  end
end

class EvaluateRules
  def initialize(alive_neighbors_count, current_cell_state)
    @alive_neighbors_count = alive_neighbors_count
    @current_cell_state = current_cell_state
  end

  def alive?
    if @current_cell_state == true
      evaluate_for_currently_alive_cell
    else
      evaluate_for_currently_dead_cell
    end
  end

  def evaluate_for_currently_alive_cell
    if [2, 3].include?(@alive_neighbors_count)
      return true
    else
      return false
    end
  end

  def evaluate_for_currently_dead_cell
    if @alive_neighbors_count == 3
      return true
    else
      return false
    end
  end
end
