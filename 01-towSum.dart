


  void main(){
    // Ejemplo 1
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print(twoSum(nums1, target1));  // Salida: [0, 1]

  // Ejemplo 2
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print(twoSum(nums2, target2));  // Salida: [1, 2]

  // Ejemplo 3
  List<int> nums3 = [3, 3];
  int target3 = 6;
  print(twoSum(nums3, target3));  // Salida: [0, 1]
  }



  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> indexNumber = {}; // Usamos el atajo para Map
    int complement = 0;

    // Recorremos la lista nums
    for (int i = 0; i < nums.length; i++) {
      // Calculamos el complemento
      complement = target - nums[i];

      // Si ya hemos visto el complemento en el mapa, devolvemos los índices
      if (indexNumber.containsKey(complement)) {
        return [indexNumber[complement]!, i]; // El operador ! asegura que no sea nulo
      }

      // Guardamos el número y su índice en el mapa
      indexNumber[nums[i]] = i;
    }

    // Si no se encuentra solución, podrías retornar un valor por defecto (aunque el problema garantiza una solución)
    return [];
  }

