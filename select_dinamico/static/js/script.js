/**
 * Función que recibe el id del departamente seleccionado y filtra los municipios de acuerdo a ese id (departamento),
 * ademas retorna la lista de municipios para dicho departamento.
 */
const filtrarMunicipios = async (idDepartamento) => {
  const csrfTokenValue = document.querySelector(
    "[name=csrfmiddlewaretoken]"
  ).value;
  const headers = {
    "X-CSRFToken": csrfTokenValue,
  };

  let url = "/filtrar-municipios/";
  try {
    const response = await axios.post(url, { idDepartamento }, { headers });

    const { data, status } = response;
    console.log(data.data);

    if (status == 200) {
      let selectMunicipio = document.querySelector("#Municipios");
      selectMunicipio.innerHTML = "";

      // Itera sobre la data para agregar los municipios al select
      data.data.forEach((item) => {
        const option = document.createElement("option");
        option.value = item.id;
        option.text = item.municipio;
        selectMunicipio.appendChild(option);
      });
    } else {
      console.log("No hay Municipios disponibles");
    }
  } catch (error) {
    console.log("Error en la petición", error);
  }
};

/**
 * Función que recibe el id del municipio seleccionado y filtra las zonas de acuerdo a ese id (municipio),
 * ademas retorna la lista de zonas para dicho municipio.
 */
const filtrarZonas = async (idMunicipio) => {
  const csrfTokenValue = document.querySelector(
    "[name=csrfmiddlewaretoken]"
  ).value;
  const headers = {
    "X-CSRFToken": csrfTokenValue,
  };

  let url = "/filtrar-zonas/";
  try {
    const response = await axios.post(url, { idMunicipio }, { headers });

    console.log(response);
    const { data, status } = response;
    console.log(data.data);

    if (status == 200) {
      let selectZona = document.querySelector("#zonas");
      selectZona.innerHTML = "";

      // Itera sobre la data para agregar las zonas al select
      data.data.forEach((item) => {
        const option = document.createElement("option");
        option.value = item.id_zona;
        option.text = item.zona;
        selectZona.appendChild(option);
      });
    } else {
      console.log("No hay Zonas disponibles");
    }
  } catch (error) {
    console.log("Error en la petición", error);
  }
};
