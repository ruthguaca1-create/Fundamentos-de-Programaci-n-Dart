
import 'criterio.dart';

class ModeloAnalisis {
  int id;
  String nombre;
  String descripcion;
  List<Criterio> criterios;

  ModeloAnalisis({
    required this.id,
    required this.nombre,
    required this.descripcion,
    List<Criterio>? criterios,
  }) : criterios = criterios ?? [];

  // Ejercicio 3: Mostrar información del modelo
  void mostrarInformacion() {
    print('ID del modelo: $id');
    print('Nombre: $nombre');
    print('Descripción: $descripcion');
    print('Cantidad de criterios: ${criterios.length}');
  }

  // Ejercicio 4: Agregar criterios
  void agregarCriterio(Criterio criterio) {
    criterios.add(criterio);
  }

  // Ejercicio 4: Consultar criterios
  List<Criterio> consultarCriterios() {
    return criterios;
  }

  // Ejercicio 4: Mostrar criterios
  void mostrarCriterios() {
    if (criterios.isEmpty) {
      print('El modelo no tiene criterios registrados.');
    } else {
      for (Criterio criterio in criterios) {
        criterio.mostrarInformacion();
        print('-------------------------');
      }
    }
  }

  // Ejercicio 4: Buscar criterio
  Criterio? buscarCriterio(int idCriterio) {
    for (Criterio criterio in criterios) {
      if (criterio.id == idCriterio) {
        return criterio;
      }
    }

    return null;
  }

  // Ejercicio 4: Contar criterios
  int contarCriterios() {
    return criterios.length;
  }

  // Ejercicio 5: Verificar criterios
  Map<String, int> verificarCriterios() {
    int cumplen = 0;
    int noCumplen = 0;
    int enRevision = 0;

    for (Criterio criterio in criterios) {
      if (criterio.estado == 'Cumple') {
        cumplen++;
      } else if (criterio.estado == 'No cumple') {
        noCumplen++;
      } else if (criterio.estado == 'En revisión') {
        enRevision++;
      }
    }

    return {
      'Cumplen': cumplen,
      'No cumplen': noCumplen,
      'En revisión': enRevision,
    };
  }

  // Ejercicio 6: Calcular porcentaje de cumplimiento
  double calcularPorcentajeCumplimiento() {
    if (criterios.isEmpty) {
      return 0;
    }

    int cumplen = verificarCriterios()['Cumplen']!;

    return (cumplen / criterios.length) * 100;
  }

  // Ejercicio 7: Determinar estado general del modelo
  String determinarEstadoGeneral() {
    if (criterios.isEmpty) {
      return 'Sin criterios';
    }

    Map<String, int> resultados = verificarCriterios();

    if (resultados['No cumplen']! > 0) {
      return 'Requiere ajustes';
    }

    if (resultados['En revisión']! > 0) {
      return 'En revisión';
    }

    return 'Aprobado';
  }
}
