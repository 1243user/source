@echo off
more "%~f0" +7>%tmp%\weather.js
set /p cs=����:
cscript.exe //nologo %tmp%\weather.js %cs% /a /t
pause>nul
del weather.js
goto :eof
/*--------------------*
  *  Global Variables  *
  *--------------------*/
var req, isGoodLuck;
var lii  = "http://61.4.185.48:81/g/";
var pcc  = "http://www.weather.com.cn/data/list3/city*.xml";
var data = "http://m.weather.com.cn/data/*.html";
var sb   = "http://toy.weather.com.cn/SearchBox/searchBox?language=zh&callback=gs&_=@&keyword=*";


/*-------------*
  *  Functions  *
  *-------------*/
function showUsage() {
    var s =  "�Ї����\r\n\r\n";
        s += "ָ��һ������������������\r\n"
        s += "weather.js [province [city [county]]] [/F] [/A] [/T]\r\n";
        s += "  province    ʡ������������ֱϽ���С��ر�������\r\n";
        s += "  city        �������ˡ������ݡ����ؼ�����\r\n";
        s += "  county      �ء������ء��졢�����졢���ؼ����С�����Ͻ����������������\r\n";
        s += "  /F          ʹ�û����¶�\r\n";
        s += "  /A          δ��һ������Ԥ��\r\n";
        s += "  /T          ��ʾ��������ָ��\r\n\r\n";
        s += "���ݲ�ѯ�ؼ���������������Ԥ����\r\n";
        s += "weather.js [keyword] [/F] [/A] [/T] [/S]\r\n";
        s += "  keyword     �ؼ��֡���������ȫƴ����ƴ���绰���š��ʱ�ȡ�\r\n";
        s += "  /S          ��������\r\n\r\n";
        s += "�����в�Ҫ����ʡ���С��ݡ��ء����������������ơ�";
        s += "���ָ���ĵ���������������Ĭ��ʶ��Ϊ�����ĳ��С�";
        s += "���û��ָ���������߹ؼ��֣���Ĭ����ʾ����������";
    WScript.Echo(s);
    WScript.Quit();
}

function getRequestText(url) {
    req = req || new ActiveXObject("Msxml2.XMLHTTP");
    req.open("GET", url, false);
    req.send(null);
    return req.responseText;
}

function getCityArray(cid) {
    cid = cid || "";
    var reqText = getRequestText(pcc.replace(/\*/, cid));
    var jsArray = reqText.replace(/\,/g, "'],['");
        jsArray = jsArray.replace(/\|/g, "','");
        jsArray = "[['" + jsArray + "']]";
    return eval(jsArray);
}

function getCodeByName(arr, v) {
    var k;
    if(v == null || v == "") {
        k = arr[0][0];
    } else {
        for(var i=0; i<arr.length; i++) {
            if(arr[i][1] == v) {
                k = arr[i][0];
                break;
            }
        }
    }
    return k;
}

function getID(province, city, county) {
    var idReturn;
    if(province == null || province.replace(/\s/g, "") == "") {
        eval(getRequestText(lii));
        idReturn = id;
    } else {
        var arrProvince = getCityArray();
        var provinceID  = getCodeByName(arrProvince, province);
        if(!provinceID) {
            var keywords = province;
            idReturn = getIDBySearch(keywords);
        } else {
            var arrCity     = getCityArray(provinceID);
            var cityID      = getCodeByName(arrCity, city);
            if(cityID) {
                var arrCounty   = getCityArray(cityID);
                var countyID    = getCodeByName(arrCounty, county);
                if(countyID) {
                    var idMapping   = getRequestText(pcc.replace(/\*/, countyID));
                    idReturn = idMapping.replace(/.*\|(\d+)/, "$1");
                } else {
                    WScript.Echo("δ�ҵ�ָ����������������  " + province + " - " + city + " - " + county);
                    WScript.Quit();                
                }
            } else {
                WScript.Echo("δ�ҵ�ָ���Ķ�����������  " + province + " - " + city);
                WScript.Quit();
            }
        }
    }
    return idReturn;
}

function getIDBySearch(keywords) {
    var gs = function(obj) {
        var id;
        if(obj.i) {
            var rs = obj.i;
            if(isGoodLuck == true) {
                id = rs[0].i;
            } else {
                for(var i=0; i<rs.length; i++) {
                    var x = rs[i];
                    WScript.Echo((i + 1) + ".\t" + (x.m ? "[" + x.m + "]:  " : "") + x.n + " - " + x.d);
                }
                var n = 0;
                while(n == 0) {
                    WScript.StdOut.Write("ѡ��");
                    var s = WScript.StdIn.ReadLine();
                    if(s && !isNaN(s)) n = Number(s);
                }
                id = rs[n - 1].i;
            }
        } else {
            WScript.Echo("�Բ���δ�ҵ�����ѯ�ĳ���������");
            WScript.Quit();
        }
        return id;
    }
    var url = sb;
        url = url.replace(/@/, (new Date()).getTime());
        url = url.replace(/\*/, encodeURI(keywords));    
    return eval(getRequestText(url));
}

function getWeather(id) {
    var json = getRequestText(data.replace(/\*/, id));
    eval("var info = (" + json + ").weatherinfo");
    return info;
}

function getSimpleInfo(w) {
    var s = w.city + "(" + w.city_en + ")";
    return s;
}

function getDataInfo(w) {
    var s = "�������ݷ����� " + w.week + " " + w.date_y + " " + w.fchh + ":00";
    return s;
}

function getTips(w) {
    var s =  w.index_d + "\r\n";
        s += "������ǿ�ȣ�\t" + w.index_uv + "\r\n";
        s += "����ָ����\t" + w.index + "\r\n";
        s += "����ָ����\t" + w.index_cl + "\r\n";
        s += "���ʶ�ָ����\t" + w.index_co + "\r\n";
        s += "��ɹָ����\t" + w.index_ls + "\r\n";
        s += "����ָ����\t" + w.index_tr + "\r\n";
        s += "ϴ��ָ����\t" + w.index_xc;
    return s;
}

function getForecast(w, c, n) {
    var s;
    if(!n || isNaN(n) || n == 0 || n > 6) {
        s = w.weather1 + "\r\n" + (c ? w.tempF1 : w.temp1) + "\r\n" + w.wind1;        
    } else {
        s = "δ��" + (n < 3 ? (n*24) + "Сʱ" : "��" + n + "��") + "��\t";
        s += eval("w.weather" + n) + "  ";
        s += eval((c ? "w.tempF" : "w.temp") + n) + "  ";
        s += eval("w.wind" + n);
    }
    return s;
}


//==============================================================================


var t = WScript.Arguments.Named;
var p = WScript.Arguments.Unnamed;
if(t.Exists("?")) showUsage();
if(t.Exists("S")) isGoodLuck = true;    
var province = p.Count > 0 ? p(0) : "";
var city     = p.Count > 1 ? p(1) : "";
var county   = p.Count > 2 ? p(2) : "";
var is6DaysForcast    = t.Exists("A") ? true : false;
var isShowLivingIndex = t.Exists("T") ? true : false;
var isFahrenheit      = t.Exists("F") ? true : false;

var id = getID(province, city, county);

var weather = getWeather(id);

var str =  getSimpleInfo(weather);

if(is6DaysForcast) {
    str += "\r\n" + getDataInfo(weather);
    for(var i=0; i<6; i++) {
        str += "\r\n" + getForecast(weather, isFahrenheit, i + 1);
    }
} else {
    str += "\r\n" + getForecast(weather, isFahrenheit);
}

if(isShowLivingIndex) {
    str += "\r\n" + getTips(weather);
}

WScript.Echo(str);
