
import 'package:fundamentos_programacion_dart/modelos/criterio.dart';
import 'package:fundamentos_programacion_dart/modelos/modelo_analisis.dart';
import 'package:fundamentos_programacion_dart/modelos/verificacion.dart';

void main() {
  // ==========================================
  // EJERCICIO 1 Y 2: CREAR Y MODIFICAR CRITERIOS
  // ==========================================

  Criterio criterio1 = Criterio(
    id: 1,
    descripcion: 'Identificar correctamente los actores',
    estado: 'Cumple',
    observacion: 'Los actores están identificados.',
  );

  Criterio criterio2 = Criterio(
    id: 2,
    descripcion: 'Verificar las relaciones entre actores y casos de uso',
    estado: 'En revisión',
    observacion: 'Se deben revisar algunas relaciones.',
  );

  Criterio criterio3 = Criterio(
    id: 3,
    descripcion: 'Validar los casos de uso del sistema',
    estado: 'No cumple',
    observacion: 'Faltan algunos casos de uso.',
  );

  print('===== EJERCICIO 1: CREAR CRITERIOS =====');

  criterio1.mostrarInformacion();
  print('');

  criterio2.mostrarInformacion();
  print('');

  criterio3.mostrarInformacion();

  print('\n===== EJERCICIO 2: MODIFICAR CRITERIO =====');

  criterio1.cambiarEstado('Cumple');

  criterio1.registrarObservacion(
    'Los actores fueron revisados correctamente.',
  );

  criterio1.mostrarInformacion();

  print('\n¿El criterio 1 cumple?');
  print(criterio1.determinarSiCumple());

  // ==========================================
  // EJERCICIO 3: CREAR MODELOS DE ANALISIS
  // ==========================================

  ModeloAnalisis modelo1 = ModeloAnalisis(
    id: 1,
    nombre: 'Modelo de casos de uso',
    descripcion: 'Representa las funcionalidades del sistema y sus actores.',
  );

  ModeloAnalisis modelo2 = ModeloAnalisis(
    id: 2,
    nombre: 'Modelo de actividades',
    descripcion: 'Representa el flujo de actividades de un proceso.',
  );

  ModeloAnalisis modelo3 = ModeloAnalisis(
    id: 3,
    nombre: 'Modelo de secuencia',
    descripcion: 'Representa la interacción entre objetos a través del tiempo.',
  );

  ModeloAnalisis modelo4 = ModeloAnalisis(
    id: 4,
    nombre: 'Modelo de clases',
    descripcion: 'Representa las clases, atributos y relaciones del sistema.',
  );

  print('\n===== EJERCICIO 3: MODELOS DE ANALISIS =====');

  modelo1.mostrarInformacion();
  print('');

  modelo2.mostrarInformacion();
  print('');

  modelo3.mostrarInformacion();
  print('');

  modelo4.mostrarInformacion();

  // ==========================================
  // EJERCICIO 4: AGREGAR Y CONSULTAR CRITERIOS
  // ==========================================

  modelo1.agregarCriterio(criterio1);
  modelo1.agregarCriterio(criterio2);
  modelo1.agregarCriterio(criterio3);

  print('\n===== EJERCICIO 4: MOSTRAR CRITERIOS =====');

  modelo1.mostrarCriterios();

  print('\n===== CONSULTAR CRITERIOS =====');

  List<Criterio> listaCriterios = modelo1.consultarCriterios();

  print('Criterios consultados: ${listaCriterios.length}');

  print('\n===== BUSCAR CRITERIO =====');

  Criterio? criterioEncontrado = modelo1.buscarCriterio(2);

  if (criterioEncontrado != null) {
    print('Criterio encontrado:');
    criterioEncontrado.mostrarInformacion();
  } else {
    print('El criterio no existe.');
  }

  print('\n===== CONTAR CRITERIOS =====');

  print('Total de criterios: ${modelo1.contarCriterios()}');

  // ==========================================
  // EJERCICIO 5: VERIFICAR CRITERIOS
  // ==========================================

  print('\n===== EJERCICIO 5: VERIFICACION DE CRITERIOS =====');

  Map<String, int> resultados = modelo1.verificarCriterios();

  print('Criterios que cumplen: ${resultados['Cumplen']}');
  print('Criterios que no cumplen: ${resultados['No cumplen']}');
  print('Criterios en revisión: ${resultados['En revisión']}');

  // ==========================================
  // EJERCICIO 6: PORCENTAJE DE CUMPLIMIENTO
  // ==========================================

  print('\n===== EJERCICIO 6: PORCENTAJE DE CUMPLIMIENTO =====');

  double porcentaje = modelo1.calcularPorcentajeCumplimiento();

  print(
    'Porcentaje de cumplimiento: ${porcentaje.toStringAsFixed(2)} %',
  );

  // ==========================================
  // EJERCICIO 7: ESTADO GENERAL DEL MODELO
  // ==========================================

  print('\n===== EJERCICIO 7: ESTADO GENERAL =====');

  String estadoGeneral = modelo1.determinarEstadoGeneral();

  print('Estado general del modelo: $estadoGeneral');

  // ==========================================
  // EJERCICIO 8: REGISTRAR VERIFICACION
  // ==========================================

  Verificacion verificacion1 = Verificacion(
    modelo: modelo1,
    fechaVerificacion: DateTime.now(),
    responsable: 'Analista responsable',
    porcentaje: modelo1.calcularPorcentajeCumplimiento(),
    estadoFinal: modelo1.determinarEstadoGeneral(),
    observaciones: 'Se identificaron criterios que requieren ajustes.',
  );

  print('\n===== EJERCICIO 8: REGISTRO DE VERIFICACION =====');

  verificacion1.mostrarInformacion();

  // ==========================================
  // EJERCICIO 9: GENERAR RESUMEN
  // ==========================================

  print('\n===== EJERCICIO 9: RESUMEN DE VERIFICACION =====');

  verificacion1.generarResumen();

  // ==========================================
  // EJERCICIO 10: INTEGRACION DE LOS CUATRO MODELOS
  // ==========================================

  print('\n===== EJERCICIO 10: INTEGRACION =====');

  // Criterios del modelo de actividades

  modelo2.agregarCriterio(
    Criterio(
      id: 4,
      descripcion: 'Identificar las actividades del proceso',
      estado: 'Cumple',
      observacion: 'Las actividades están identificadas.',
    ),
  );

  modelo2.agregarCriterio(
    Criterio(
      id: 5,
      descripcion: 'Verificar el flujo de actividades',
      estado: 'Cumple',
      observacion: 'El flujo es correcto.',
    ),
  );

  modelo2.agregarCriterio(
    Criterio(
      id: 6,
      descripcion: 'Validar las decisiones del proceso',
      estado: 'En revisión',
      observacion: 'Se deben revisar las decisiones.',
    ),
  );

  // Criterios del modelo de secuencia

  modelo3.agregarCriterio(
    Criterio(
      id: 7,
      descripcion: 'Identificar los objetos participantes',
      estado: 'Cumple',
      observacion: 'Los objetos están identificados.',
    ),
  );

  modelo3.agregarCriterio(
    Criterio(
      id: 8,
      descripcion: 'Verificar los mensajes entre objetos',
      estado: 'No cumple',
      observacion: 'Hay mensajes que deben corregirse.',
    ),
  );

  modelo3.agregarCriterio(
    Criterio(
      id: 9,
      descripcion: 'Validar el orden de las interacciones',
      estado: 'En revisión',
      observacion: 'Se debe revisar el orden.',
    ),
  );

  // Criterios del modelo de clases

  modelo4.agregarCriterio(
    Criterio(
      id: 10,
      descripcion: 'Identificar las clases del sistema',
      estado: 'Cumple',
      observacion: 'Las clases están identificadas.',
    ),
  );

  modelo4.agregarCriterio(
    Criterio(
      id: 11,
      descripcion: 'Verificar los atributos y métodos',
      estado: 'Cumple',
      observacion: 'Los atributos y métodos son correctos.',
    ),
  );

  modelo4.agregarCriterio(
    Criterio(
      id: 12,
      descripcion: 'Validar las relaciones entre clases',
      estado: 'Cumple',
      observacion: 'Las relaciones están correctamente definidas.',
    ),
  );

  // Crear verificaciones para los modelos restantes

  Verificacion verificacion2 = Verificacion(
    modelo: modelo2,
    fechaVerificacion: DateTime.now(),
    responsable: 'Analista responsable',
    porcentaje: modelo2.calcularPorcentajeCumplimiento(),
    estadoFinal: modelo2.determinarEstadoGeneral(),
    observaciones: 'El modelo de actividades requiere revisión.',
  );

  Verificacion verificacion3 = Verificacion(
    modelo: modelo3,
    fechaVerificacion: DateTime.now(),
    responsable: 'Analista responsable',
    porcentaje: modelo3.calcularPorcentajeCumplimiento(),
    estadoFinal: modelo3.determinarEstadoGeneral(),
    observaciones: 'El modelo de secuencia requiere ajustes.',
  );

  Verificacion verificacion4 = Verificacion(
    modelo: modelo4,
    fechaVerificacion: DateTime.now(),
    responsable: 'Analista responsable',
    porcentaje: modelo4.calcularPorcentajeCumplimiento(),
    estadoFinal: modelo4.determinarEstadoGeneral(),
    observaciones: 'El modelo de clases cumple con los criterios.',
  );

  // Lista de las cuatro verificaciones

  List<Verificacion> verificaciones = [
    verificacion1,
    verificacion2,
    verificacion3,
    verificacion4,
  ];

  // Generar el resumen de cada modelo

  for (Verificacion verificacion in verificaciones) {
    verificacion.generarResumen();
  }

  print('\n===== FIN DE LA INTEGRACION =====');
}
