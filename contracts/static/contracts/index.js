const mediaQuery = window.matchMedia('(max-width: 768px)')

var rate_columns = 0;
var accruals_columns = 0;

var numberInput = document.getElementById("number");
numberInput.addEventListener('input', numberEnter);

var isContractNumberRight = false;

function handleTabletChange(e) {
  if (e.matches && document.getElementById("contract_info").style.display === "block") {
      document.getElementById("rate_data").style.gridTemplateColumns = "repeat(" + rate_columns + 1 + ", 1fr)";
      document.getElementById("rate_data").style.gridTemplateRows = "none";

      rate_data_sections = document.getElementsByClassName("rate_data_sections");

      for (var i = 0; i < rate_data_sections.length; i++) {
          rate_data_sections[i].style.gridTemplateRows = "repeat(4, 1fr)";
          rate_data_sections[i].style.gridTemplateColumns = "none";
      }

      document.getElementById("accruals_data").style.gridTemplateColumns = "repeat(" + accruals_columns + 1 + ", 1fr)";
      document.getElementById("accruals_data").style.gridTemplateRows = "none";

      accruals_data_sections = document.getElementsByClassName("accruals_data_sections");

      for (var i = 0; i < accruals_data_sections.length; i++) {
          accruals_data_sections[i].style.gridTemplateColumns = "none";
          accruals_data_sections[i].style.gridTemplateRows = "repeat(3, 1fr)";
      }
  }
  if (!e.matches && document.getElementById("contract_info").style.display === "block") {
      document.getElementById("rate_data").style.gridTemplateColumns = "none";
      document.getElementById("rate_data").style.gridTemplateRows = "22px repeat(" + rate_columns + ", 1fr)";

      rate_data_sections = document.getElementsByClassName("rate_data_sections");

      for (var i = 0; i < rate_data_sections.length; i++) {
          rate_data_sections[i].style.gridTemplateColumns = "repeat(4, 1fr)";
          rate_data_sections[i].style.gridTemplateRows = "none";
      }

      document.getElementById("accruals_data").style.gridTemplateColumns = "none";
      document.getElementById("accruals_data").style.gridTemplateRows = "22px repeat(" + accruals_columns + ", 1fr)";

      accruals_data_sections = document.getElementsByClassName("accruals_data_sections");

      for (var i = 0; i < accruals_data_sections.length; i++) {
          accruals_data_sections[i].style.gridTemplateColumns = "repeat(3, 1fr)";
          accruals_data_sections[i].style.gridTemplateRows = "none";
      }
  }
}

mediaQuery.addListener(handleTabletChange);

function numberEnter(event) {
    var contractNumber = numberInput.value;

    var checkContract = new RegExp("[(a-z)(0-9)-/]{1,10}", "g");
    var rightContractNumber = checkContract.exec(contractNumber);

    if (contractNumber.length > 10 || contractNumber.length < 1) {
        document.getElementById("number").style.border = "1px solid red";
        document.getElementById("contract_prompt").style.color = "red";
        document.getElementById("contract_prompt").innerHTML = "Номер договора ограничен 10-ю символами, латинскими буквами, цифрами, дефисом и слэшем!";
        isContractNumberRight = false;
        console.log("Неправильно!");
        // console.log(contractNumber.length);
        // console.log("Неправильно!");
    }
    else if (rightContractNumber === null || rightContractNumber[0] !== contractNumber) {
        document.getElementById("number").style.border = "1px solid red";
        document.getElementById("contract_prompt").style.color = "red";
        document.getElementById("contract_prompt").innerHTML = "Номер договора ограничен 10-ю символами, латинскими буквами, цифрами, дефисом и слэшем!";
        isContractNumberRight = false;
        console.log("Неправильно!");
    }
    else{
        document.getElementById("number").style.border = "1px solid green";
        document.getElementById("contract_prompt").style.color = "green";
        document.getElementById("contract_prompt").innerHTML = "Номер удовлетворяет всем правилам!";
        isContractNumberRight = true;
        console.log("Правильно!");
    }
}

function enable_load() {
    document.getElementById("load").style.display = 'block';
    document.getElementById("error").style.display = 'none';
    document.getElementById("contract_info").style.display = 'none';
}

function enable_error() {
    document.getElementById("load").style.display = 'none';
    document.getElementById("error").style.display = 'block';
    document.getElementById("contract_info").style.display = 'none';
}

function enable_contract_info() {
    document.getElementById("load").style.display = 'none';
    document.getElementById("error").style.display = 'none';
    document.getElementById("contract_info").style.display = 'block';
}

$("#find_contract").submit(function (e) {
    enable_load();

    if (!isContractNumberRight) {
        window.alert("Проверьте номер своего договора! Он ограничен 10-ю символами, в нём могут присутствовать латинские буквы, цифры, дефис и слэш.");
        enable_error();
    }
    else {
        e.preventDefault();
        var serializedData = $(this).serialize();

        $.ajax({
            type: 'POST',
            url: "/ajax/get_contract/",
            data: serializedData,
            dataType: 'json',
            success: function (response) {
                enable_contract_info();

                contract_table = "<h3>Данные о договоре</h3>\n" +
                    "<div class=\"table_data\">\n" +
                    "<div>\n" +
                    "<p><b>Номер</b></p>\n" +
                    "<p>" + response['contract']['number'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Фамилия</b></p>\n" +
                    "<p>" + response['contract']['surname'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Имя</b></p>\n" +
                    "<p>" + response['contract']['name'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Отчество</b></p>\n" +
                    "<p>" + response['contract']['patronymic'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Физ./юр. лицо</b></p>\n";

                if (response['contract']['individual']) {
                    contract_table += "<p>Физ. лицо</p>\n";
                }
                else {
                    contract_table += "<p>Юр. лицо</p>\n";
                }

                contract_table += "</div>\n" +
                    "<div>\n" +
                    "<p><b>Статус</b></p>\n" +
                    "<p>" + response['contract']['status'] + "</p>\n" +
                    "</div>\n" +
                    "</div>";

                document.getElementById('contract').innerHTML = contract_table;

                status_table = "<h3>Статус договора</h3>\n" +
                    "<div class=\"table_data\">\n" +
                    "<div>\n" +
                    "<p><b>Название</b></p>\n" +
                    "<p>" + response['status']['name'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Описание</b></p>\n" +
                    "<p>" + response['status']['description'] + "</p>\n" +
                    "</div>\n" +
                    "</div>"

                document.getElementById('status').innerHTML = status_table;

                address_table = "<h3>Адрес</h3>\n" +
                    "<div class=\"table_data\">\n" +
                    "<div>\n" +
                    "<p><b>Город</b></p>\n" +
                    "<p>" + response['address']['city'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Улица</b></p>\n" +
                    "<p>" + response['address']['street'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Дом</b></p>\n" +
                    "<p>" + response['address']['home'] + "</p>\n" +
                    "</div>\n" +
                    "<div>\n" +
                    "<p><b>Квартира</b></p>\n" +
                    "<p>" + response['address']['flat'] + "</p>\n" +
                    "</div>\n" +
                    "</div>"

                document.getElementById('address').innerHTML = address_table;

                rates_table = "<h3>Тарифы</h3>\n" +
                    "<div class=\"table_data\" id=\"rate_data\">\n" +
                    "<div class=\"rate_data_sections\">\n" +
                    "<p><b>Наименование</b></p>\n" +
                    "<p><b>Стоимость, в руб.</b></p>\n" +
                    "<p><b>Дата начала действия</b></p>\n" +
                    "<p><b>Дата конца</b></p>\n" +
                    "</div>"

                var i;
                var rates = response['rates'];
                rate_columns = rates.length;
                for (i = 0; i < rates.length; i++) {
                    rates_table += "<div class=\"rate_data_sections\">\n" +
                        "<p>" + rates[i]['name'] + "</p>\n" +
                        "<p>" + rates[i]['price'] + "</p>\n" +
                        "<p>" + rates[i]['begin_date'] + "</p>\n" +
                        "<p>" + rates[i]['end_date'] + "</p>\n" +
                        "</div>"
                }
                rates_table += "</div>"

                document.getElementById('rates').innerHTML = rates_table;

                document.getElementById("rate_data").style.gridTemplateColumns = "none";
                document.getElementById("rate_data").style.gridTemplateRows = "22px repeat(" + rate_columns + ", 1fr)";

                rate_data_sections = document.getElementsByClassName("rate_data_sections");

                for (var i = 0; i < rate_data_sections.length; i++) {
                    rate_data_sections[i].style.gridTemplateColumns = "repeat(4, 1fr)";
                    rate_data_sections[i].style.gridTemplateRows = "none";
                }

                admissions_table = "<h3>Приходы денежных средств</h3>\n" +
                    "<div class=\"table_data\">\n" +
                    "<div>\n" +
                    "<p><b>Дата</b></p>\n" +
                    "<p><b>Сумма, в руб.</b></p>\n" +
                    "</div>"

                var admissions = response['money_admissions'];
                for (i = 0; i < admissions.length; i++) {
                    admissions_table += "<div>\n" +
                        "<p>" + admissions[i]['sum'] + "</p>\n" +
                        "<p>" + admissions[i]['date'] + "</p>\n" +
                        "</div>"
                }
                admissions_table += "</div>"

                document.getElementById('admissions').innerHTML = admissions_table;

                accruals_table = "<h3>Начисления по тарифам для договора</h3>\n" +
                    "<div class=\"table_data\"  id=\"accruals_data\">\n" +
                    "<div class=\"accruals_data_sections\">\n" +
                    "<p><b>Тариф</b></p>\n" +
                    "<p><b>Сумма</b></p>\n" +
                    "<p><b>Дата</b></p>\n" +
                    "</div>";

                var accruals = response['rate_accruals'];
                accruals_columns = accruals.length;
                for (i = 0; i < accruals.length; i++) {
                    accruals_table += "<div class=\"accruals_data_sections\">\n" +
                        "<p>" + accruals[i]['rate_name'] + "</p>\n" +
                        "<p>" + accruals[i]['sum'] + "</p>\n" +
                        "<p>" + accruals[i]['date'] + "</p>\n" +
                        "</div>"
                }
                accruals_table += "</div>"

                document.getElementById('accruals').innerHTML = accruals_table;

                document.getElementById("accruals_data").style.gridTemplateColumns = "none";
                document.getElementById("accruals_data").style.gridTemplateRows = "22px repeat(" + accruals_columns + ", 1fr)";

                accruals_data_sections = document.getElementsByClassName("accruals_data_sections");

                for (var i = 0; i < accruals_data_sections.length; i++) {
                    accruals_data_sections[i].style.gridTemplateColumns = "repeat(3, 1fr)";
                    accruals_data_sections[i].style.gridTemplateRows = "none";
                }
            },
            error: function (response) {
                enable_error();
            }
        })
    }
})