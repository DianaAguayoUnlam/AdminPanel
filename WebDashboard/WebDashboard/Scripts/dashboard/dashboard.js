function actualizar() {
    // Declaramos la url que vamos a usar para el Get
    const URL = "Home/ActualizarResizeCard"
    // Enviamos el idBusiness al controlador Visitas
    $.get(URL, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-1").html(respuesta);
        }
    });
}

function actualizarImgProducto() {
    // Declaramos la url que vamos a usar para el Get
    const URL = "Home/ActualizarImagenProducto"
    // Declaramos la información a enviar
    let idProductoElement = $("#idProducto");
    let idProducto = idProductoElement.val();
    const info = { idProducto: idProducto };
    // Enviamos el parametro al backend
    $.get(URL, info, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-2").html(respuesta);
            $("#idProducto").val(idProducto);
        }
    });
}

function actualizarVentasPorAnio() {
    // Declaramos la url que vamos a usar para el Get
    const URL = "Home/VentasPorAnio"
    // Enviamos el idBusiness al controlador Visitas
    $.get(URL, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-3").html(respuesta);
        }
    });
}

function actualizarProductoMarca() {
    const URL = "Home/ActualizarProductosPorMarca"
    let idmarca = $("#marca").val();
    const info = { idMarca: idmarca };
    $.get(URL, info, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-4").html(respuesta);
        }
    });
}

function actualizarProductoCategoria() {
    const URL = "Home/ActualizarProductosPorCategoria"
    let idCategory = $("#idCategory").val();
    const info = { idCategory: idCategory };
    $.get(URL, info, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-5").html(respuesta);
        }
    });
}

function actualizarImgMarca() {
    const URL = "Home/ActualizarImagenMarca"
    let idMarcaElement = $("#IdMarca");
    let IdMarca = idMarcaElement.val();
    const info = { IdMarca: IdMarca };
    $.get(URL, info, (respuesta, estado) => {
        if (estado === "success") {
            $("#card-6").html(respuesta);
            $("#IdMarca").val(IdMarca);
        }
    });
}