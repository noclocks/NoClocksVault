async function getDateAll(tp) {
    let varYear = await tp.system.suggester(["📆 today", "2023", "2022", "2021"], ["1", "2023", "2022", "2021"], false, "Year...");
    let varDateAll = "";

    if (varYear == "1") {
        varDateAll = tp.date.now("YYYY-MM-DD");
    } else {

        let varMonth = await tp.system.suggester(
            ["Jan", "Feb", "Marz", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"],
            ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],
            false,
            "Month..."
        );

        let varDay = await tp.system.prompt("The day...?");

        varDateAll = varYear + "-" + varMonth + "-" + varDay;
    }
    // let vartime = await tp.system.prompt("Which time...?");
    return varDateAll
    // return [varDateAll, vartime]
}

module.exports = getDateAll;
