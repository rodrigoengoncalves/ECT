function soma(x,y){
    return x+y;
    }
function sub(x,y){
    return x-y;
    }
function div(x,y){
    return x/y;
    }
function mul(x,y){
return x*y;
}
var x = 4
var y = 6

document.write("x="+x+" y="+y)
document.write("<br>");
document.write("soma:"+soma(x,y))
document.write("<br>");
document.write("subtraçao:"+sub(x,y))
document.write("<br>");
document.write("divisao:"+div(x,y))
document.write("<br>");
document.write("multiplicaçao:"+mul(x,y))

var a ="3";
var b = 3
var t = a === b
switch(t) {
case true: alert("iguais"); break;
case false: alert("diferentes"); break;
default: alert("outro");
}
    