function getUser(){

fetch("https://randomuser.me/api/")
.then(response => response.json())

.then(data => {

let user = data.results[0];

let name = user.name.first + " " + user.name.last;
let email = user.email;
let image = user.picture.large;

document.getElementById("userData").innerHTML = `
<h2>${name}</h2>
<p>${email}</p>
<img src="${image}">
`;

})

.catch(error => console.log(error));

}