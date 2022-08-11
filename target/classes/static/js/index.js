const milan = ["Design", "Business", "Advertising"];
const spain = ["Research and development", "Business"];
const newYork = ["Business", "Advertising"];

function setJobPosition(city) {
  const jobPositionList = document.getElementById("jobPosition");

  switch (city.value) {
    case "milan":
      jobPositionList.innerHTML = setListJobPosition(milan);
      break;

    case "spain":
      jobPositionList.innerHTML = setListJobPosition(spain);

      break;

    case "newyork":
      jobPositionList.innerHTML = setListJobPosition(newYork);
      break;

    default:
      break;
  }
}

function setListJobPosition(city) {
  let html = `<option selected disabled value="">Choose your option</option>`;
  for (i = 0; city.length > i; i++) {
    html += `<option value="` + city[i] + `">` + city[i] + `</option>`;
    console.log(i);
  }
  return html;
}

function getEmail() {
  if (checkValidators()== true) {
    let name = cleanAndSplit(document.getElementById("name").value);
    let nameInitials = getNameInitials(name);
    let surname = cleanAndSplit(document.getElementById("surname").value);
    let firstSurname = surname[0];
    let jobPosition = document.getElementById("jobPosition").value;

    let cityOffice = document.getElementById("cityOffice").value;

    const email =
      nameInitials +
      firstSurname +
      "." +
      jobPosition.trim().toLowerCase().replace(/ /g, "") +
      "@" +
      cityOffice +
      ".goldeneye.com";
    const out = document.getElementById("out");
    out.innerHTML =
      "<p>Your email is:<h6 class='light-blue-text text-darken-4 card-panel teal lighten-5'>" +
      email +
      "</h6></p>";
  }
}

function cleanAndSplit(value) {
  let result = value
    .trim()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .split(" ");
  return result;
}

function getNameInitials(name) {
  let nameInitials = "";
  for (i = 0; name.length > i; i++) {
    nameInitials += name[i].charAt(0).toUpperCase();
  }
  return nameInitials;
}

function checkValidators() {
  if (document.getElementById("name").value == "") {
    document.getElementById("name").checkValidity();
    return false;
  }
  if (document.getElementById("surname").value == "") {
    document.getElementById("surname").checkValidity();
    return false;
  }
  if (document.getElementById("cityOffice").value == "") {
    document.getElementById("cityOffice").checkValidity();
    return false;
  }
  if (document.getElementById("jobPosition").value == "") {
    document.getElementById("jobPosition").checkValidity();
    return false;
  }
  return true;
}
