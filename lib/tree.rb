class Tree
  def initialize(root = nil)
    @root = root
  end

def get_element_by_id(id)
    # Define a helper method for depth-first traversal
    def dfs(node, target_id)
      return node if node[:id] == target_id

      node[:children].each do |child|
        result = dfs(child, target_id)
        return result if result
      end

      nil
    end

    # Start the traversal from the root node
    dfs(@root, id)
  end


end 




