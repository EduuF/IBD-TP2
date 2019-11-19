import React, { useState, useEffect } from "react";

function App(): JSX.Element {
  // Estado
  const [name, setName] = useState<string>("");

  // Função para obter os dados da API
  async function fetchData() {
    try {
      const r = await fetch("/api/hello");
      const name = await r.json();
      setName(name);
    } catch (error) {
      console.log(error);
    }
  }

  // useEffect = componentDidMount -> Executa uma única vez quando o componente é inicializado
  useEffect(() => {
    fetchData();
  }, []);

  return (
    <main className="container my-5">
      <h1 className="text-primary text-center">Hello {name}!</h1>
    </main>
  );
}

export default App;
