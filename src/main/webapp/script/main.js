$(document).ready(function () {
    $("#btn1").click(function () {
        $("td[class=td1]").empty();
        $("#p1").empty();
        $.ajax({
            url: "https://poloniex.com/public?command=returnTicker",
            type: 'GET',
            success: function (result) {
                $(result.BTC_ETH).each(function () {
                    $("#id").append(this.id);
                    $("#last").append(this.last);
                    $("#lowestAsk").append(this.lowestAsk);
                    $("#highestBid").append(this.highestBid);
                    $("#percentChange").append(this.percentChange);
                    $("#baseVolume").append(this.baseVolume);
                    $("#quoteVolume").append(this.quoteVolume);
                    $("#isFrozen").append(this.isFrozen);
                    $("#high24hr").append(this.high24hr);
                    $("#low24hr").append(this.low24hr);
                });
            },
            error: function () {
                $("#p1").append("Can't get Ticker from POLONIEX, please try again later or get the previously saved data...");
            }
        });
    });
});


$(document).ready(function () {
    $("#btn3").click(function () {
        $("#p3").empty();
        $("td[class=tdDB]").empty();
        $.ajax({
            url: "/showTickers",
            type: "GET",
            success: function (result) {
                console.log(result);
                if (result.length == 0) {
                    $("#p3").append("There are no data in DB yet");
                } else {
                    $(result).each(function () {
                        $("#idDB").append(this.id);
                        $("#lastDB").append(this.last);
                        $("#lowestAskDB").append(this.lowestAsk);
                        $("#highestBidDB").append(this.highestBid);
                        $("#percentChangeDB").append(this.percentChange);
                        $("#baseVolumeDB").append(this.baseVolume);
                        $("#quoteVolumeDB").append(this.quoteVolume);
                        $("#isFrozenDB").append(this.isFrozen);
                        $("#high24hrDB").append(this.high24hr);
                        $("#low24hrDB").append(this.low24hr);
                    });
                }
            },
            error: function () {
                $("#p3").append("Can't get access to DB");
            }
        });
    });
});


$(document).ready(function () {
    $("#btn2").click(function () {
        $("#p2").empty();
        $("#p2").show();
        $.ajax({
            url: "https://poloniex.com/public?command=returnTicker",
            type: 'GET',
            success: function (result) {
                var ticker = result.BTC_ETH;
                var stringify = JSON.stringify(ticker);
                $.ajax({
                    url: "/saveToDB",
                    type: "POST",
                    contentType: "application/json",
                    data: stringify,
                    success: function () {
                        $("#p2").append("Ticker saved to DB");
                        $("#p2").hide(5000);
                    },
                    error: function () {
                        alert("Can't get access to DB");
                    }
                });
            },
            error: function () {
                $("#p2").append("Can't get Ticker from POLONIEX, please try again later or get the previously saved data...");
            }
        });
    });
});


