
class Criterio {
  int id;
  String descripcion;
  String estado;
  String observacion;

  Criterio({
    required this.id,
    required this.descripcion,
    required this.estado,
    required this.observacion,
  });

  // Metodo para cambiar el estado del criterio
  void cambiarEstado(String nuevoEstado) {
    estado = nuevoEstado;
  }

  // Metodo para registrar una observacion
  void registrarObservacion(String nuevaObservacion) {
    observacion = nuevaObservacion;
  }

  // Metodo para mostrar la informacion
  void mostrarInformacion() {
    print('ID: $id');
    print('Descripción: $descripcion');
    print('Estado: $estado');
    print('Observación: $observacion');
  }

  // Metodo para determinar si el criterio cumple
  bool determinarSiCumple() {
    return estado == 'Cumple';
  }
}
