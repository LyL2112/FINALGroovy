angular.module('G-Lito')
    .controller('navCtrl', function($scope) {

        this.seleccionada = "";

        $scope.selecciona = function(nuevoValor){
            alert("Ha seleccionado "+nuevoValor);
        };
    });