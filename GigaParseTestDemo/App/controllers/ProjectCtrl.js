
var myApp = angular.module('AdminApp', []);
//Defining a Controller 
myApp.controller('PropertyProjectController', function ($scope, $http, $filter, $window) {
    // Get all Property list for dropdownlist
    $scope.Error = "";
    var orderBy = $filter('orderBy');

    $scope.AddProjectInit = function () {
        $http({
            method: 'Get',
            url: 'http://localhost:14858/api/Project/GetAllProjects'
        }).success(function (response) {
            $scope.ProjectList = JSON.parse(response);
        }).error(function (er) {
            alert(er);
        });
    }
    $scope.EditProjectInit = function () {
        var pid = getParameterByName("ProjectID");
        $http({
            method: 'Get',
            url: 'http://localhost:14858/api/Project/GetProject',
            params:{projectid:pid}
        }).success(function (response) {
            console.log(JSON.parse(response))
            $scope.project = JSON.parse(response);
        }).error(function (er) {
            alert(er);
        });
    }
    $scope.EditProject = function () {
        $http({
            method: 'POST',
            url: 'http://localhost:14858/api/Project/EditProject',
            data: JSON.stringify($scope.project),
            headers: { 'Content-Type': 'application/JSON' }
        }).success(function (data) {
            alert(data);
        }).error(function (error) {
            alert(error);
        });
    }

   
    $scope.AddProjectSave = function () {
        $http({
            method: 'POST',
            url: '/Admin/PropertyProject/SaveProject',
            data: JSON.stringify($scope.project),
            headers: { 'Content-Type': 'application/JSON' }
        }).success(function (data) {
            $scope.status = "The Property Project Saved Successfully!!!";
        }).error(function (error) {
            //Showing error message
            $scope.status = 'Unable to save property: ' + error.message;
        });
    }

    function getParameterByName(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }

})