/* globals Chart:false, feather:false */

function dash(s) {
    console.log(s);
        'use strict'

        feather.replace({ 'aria-hidden': 'true' })

        // Graphs
        var ctx = document.getElementById('myChart')
        // eslint-disable-next-line no-unused-vars
        var myChart = new Chart(ctx, {
            type: 'line', // pie, bar
            data: {
                labels: [
                    'Sunday',
                    'Monday',
                    'Tuesday',
                    'Wednesday',
                    'Thursday',
                    'Friday',
                    'Saturday'
                ],
                datasets: [{
                    data: [
                        15339,
                        21345,
                        10000,
                        24003,
                        23489,
                        24092,
                        12034
                    ],
                    lineTension: 0,
                    backgroundColor: 'transparent',
                    borderColor: '#007bff',
                    borderWidth: 4,
                    pointBackgroundColor: '#007bff'
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false
                        }
                    }]
                },
                legend: {
                    display: false
                }
            }
        })
    }



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
