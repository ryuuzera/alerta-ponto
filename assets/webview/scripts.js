setClock();

setInterval(setClock, 1000);

function setClock() {
    let date = new Date();
    const formattedDate = formatDate(date);
    document.querySelector("#clockDigits").innerHTML = formattedDate;
}

function formatDate(date) {
    let hours = date.getHours();
    let minutes = date.getMinutes();
    let seconds = date.getSeconds();
    let meridian = "AM";
    if (hours > 12) {
        hours -= 12;
        meridian = "PM";
    }
    if (minutes < 10) { minutes = `0${minutes}` };
    if (seconds < 10) { seconds = `0${seconds}` };
    return `${hours}:${minutes}:${seconds} ${meridian}`;
}