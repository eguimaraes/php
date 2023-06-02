async function logJSONData() {
  const response = await fetch("url");
  const jsonData = await response.json();
  console.log(jsonData);
}
