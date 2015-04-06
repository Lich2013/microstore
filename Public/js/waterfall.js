/**
 * Created by liuhzz on 2015/4/4.
 */
window.onload = function() {
  var dataInt = {'data':[{'src':'1.png'},{'src':'2.png'}]};
};

function getClassName(oparent,name){
    var oparent = document.getElementById(oparent);

    var total = oparent.getElementsByTagName('*');

    var _arr = [];
    for(var i = 0;i < total.length;i++){
        if(total[i].className == name){
            _arr.push(total[i]);
        }

    }

    return _arr;
}

function waterfall(oParent,pin){
    var oparent = document.getElementById(oParent);
    var ochild = getClassName(oparent,pin);
    var col = 2;
    var _arr = [];
    for(var i =0;length = ochild.length;i++){
        var oHeight = ochild[i].offsetHeight;
        if(i<2){
            _arr[i] = oHeight;
        }else{
            var minH = Math.min.apply(null,_arr);
            var minHIndex = getMinIndex(_arr,minH);
            ochild[i].style.position = 'absolute';
            ochild[i].style.top = minH+'px';
            ochild[i].style.left=ochild[minHIndex].offsetLeft+'px';
            _arr[minHIndex]+=oHeight;
        }
    }
}


function getMinIndex(arr,height){
    for(var i in arr){
      if(arr[i] == height){
          return i;
      }
    }
}