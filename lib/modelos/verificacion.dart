
import 'modelo_analisis.dart';

class Verificacion {
  ModeloAnalisis modelo;
  DateTime fechaVerificacion;
  String responsable;
  double porcentaje;
  String estadoFinal;
  String observaciones;

  Verificacion({
    required this.modelo,
    required this.fechaVerificacion,
    required this.responsable,
    required this.porcentaje,
    required this.estadoFinal,
    required this.observaciones,
  });

  // Ejercicio 8: Mostrar información de la verificación
  void mostrarInformacion() {
    print('Modelo evaluado: ${modelo.nombre}');
    print('Fecha de verificación: $fechaVerificacion');
    print('Responsable: $responsable');
    print('Porcentaje de cumplimiento: ${porcentaje.toStringAsFixed(2)} %');
    print('Estado final: $estadoFinal');
    print('Observaciones: $observaciones');
  }

  // Ejercicio 9: Generar resumen de la verificación
  void generarResumen() {
    Map<String, int> resultados = modelo.verificarCriterios();

    print('\n========================================');
    print('       RESULTADO DE LA VERIFICACIÓN');
    print('========================================');

    print('Modelo: ${modelo.nombre}');
    print('Fecha: $fechaVerificacion');
    print('Responsable: $responsable');

    print('\nTotal de criterios: ${modelo.contarCriterios()}');
    print('Cumplen: ${resultados['Cumplen']}');
    print('No cumplen: ${resultados['No cumplen']}');
    print('En revisión: ${resultados['En revisión']}');

    print('\nCumplimiento: ${porcentaje.toStringAsFixed(2)} %');

    print('Estado: ${estadoFinal.toUpperCase()}');

    print('\nObservaciones: $observaciones');

    print('========================================');
  }
}
