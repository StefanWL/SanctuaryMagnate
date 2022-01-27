window.onload = () => {
    const buttons = document.getElementsByTagName('button');
    const tables = document.getElementsByTagName('table');
    const msgOut = document.getElementById('console-output');
    const form = document.forms[0];
    const commands = [
        "commands",
        "buyAds",
        "buyAnimal",
        "buyEnclosure",
        "buyFood",
        "buyMedicine",
        "hireStaff",
        "newGame",
        "nextWeek"
    ];
    var specialChars = /[!@#$%^&*_+\-=\[\]{};:"\\|.<>\/?]/;

    if (sessionStorage.getItem("lastTab")) {
        document.getElementById(sessionStorage.getItem("lastTab")).classList.remove('hidden')
    }

    for (let i = 0; i < buttons.length; i++){
        buttons[i].onclick = () => {
            for(let j = 0; j < tables.length-1; j++){
                tables[j].classList.add('hidden');
            }
            tables[i].classList.remove('hidden');
            sessionStorage.setItem("lastTab", tables[i].id);
        }
    }

    let formContainsCommand = false;
    form.onsubmit = (event) => {
        commands.forEach(command => {
            if(form.writeLine.value.includes(command)){
                formContainsCommand = true;
            }
        })
        console.log(form.writeLine.value.match(specialChars))
        if (!formContainsCommand){
            event.preventDefault();
            msgOut.innerHTML = form.writeLine.value + ' is not a recognized command. Type commands to see a list of commands';
            form.writeLine.value = "";
        } else if (form.writeLine.value == "commands"){
            event.preventDefault();
            msgOut.innerHTML = "The available commands are: commands, buyAds, buyAnimal, buyEnclosure, buyFood, buyMedicine, hireStaff, newGame and nextWeek";
            form.writeLine.value = "";
        }else if (form.writeLine.value.match(specialChars)){
            event.preventDefault();
            msgOut.innerHTML = "Commands can only contain letters, numbers, spaces, and special characters ( ) '";
            form.writeLine.value = "";
        }
    }
}