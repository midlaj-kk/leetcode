class Solution {
  String simplifyPath(final String path) {
    final result = <String>[''];

    for (final part in path.split('/')) {
      switch (part) {
        case '' || '.': {};
        case '..': if (result.length > 1) { result.removeLast(); };
        default: result.add(part);
      }
    }

    return result.length > 1 ? result.join('/') : '/';
  }
}