class Solution {
  List<List<String>> solveNQueens(int n) {
      List<String> init_mat = [];
      for(int i = 0 ; i < n ; ++i){
          init_mat.add("."*n);
      }
      List<List<String>> ret_list = nQueenControl(init_mat , 0);
      return ret_list;
  }
  List<List<String>> nQueenControl(List<String> matrix, int row){
      List<List<String>> ret_list = nQueens(matrix , row);
      for(int i = 0 ; i < ret_list.length ; ++i){
        for(int x = 0 ; x < ret_list[i].length ; ++x){
          ret_list[i][x] = ret_list[i][x].replaceAll('1' , '.');
        }
      }
      return ret_list;
  }
  List<List<String>> nQueens(List<String> matrix , int row){
    if(row == matrix.length){
      return [matrix];
    }
    List<List<String>> return_list = [];
    for(int i = 0 ; i < matrix[row].length ; ++i){
      if(matrix[row][i] == '1'){
        continue;
      }
      List<String> new_matrix = List.from(matrix);
      List<String> current_row = matrix[row].split('');
      current_row[i] = 'Q';
      new_matrix[row] = current_row.join('');
      int itr = 1;
      for(int x = row + 1 ; x < matrix.length ; ++x){
        List<String> next_row = matrix[x].split('');
        next_row[i] = '1';
        if(i - itr >= 0){
          next_row[i - itr] = '1';
        }
        if(i + itr < matrix.length){
          next_row[i + itr] = '1';
        }
        itr += 1;
        new_matrix[x] = next_row.join('');
      }
      List<List<String>> nQu = nQueens(new_matrix , row + 1);
      for(int i = 0 ; i < nQu.length ; ++i){
        return_list.add(nQu[i]);
      }
    }
    return return_list;
  }
}