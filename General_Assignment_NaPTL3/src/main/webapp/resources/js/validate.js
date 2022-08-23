function checkDate(pText) {
    let isValid = false ;
    let t = pText.match(/^(\d{2})\/(\d{2})\/(\d{4})$/);

    if (t !== null) {
        let d = +t[1], m = +t[2], y = +t[3];
        let date = new Date(y, m - 1, d);

        isValid = (date.getFullYear() === y && date.getMonth() === m - 1) ;
    }
    return isValid ;
}
function checkTime(time){
    let regex = /^([0-1][0-9]|2[0-3]):([0-5][0-9])$/
    return regex.test(time)
}
function stringContainsOnlyNumber(_input) {
    let string1 = String(_input);
    for (let i = 0; i < string1.length; i++) {
        if (isNaN(string1.charAt(i)) || (string1.charAt(i) === " ")) {
            return false;
        }
    }
    return true;
}