[Maciel Calebe Vidal, Dr](https://www.linkedin.com/in/macielvidal/). Análise de
Textos de Fontes Desestruturadas e Web.
[Insper](https://www.insper.edu.br), 2023.

# Web Text Analysis

> Much of the data generated by companies is unstructured. In this course we
> will introduce techniques and tools for extracting tabular and textual data
> from unstructured sources such as PDF files and WEB pages. In addition,
> students will learn how to generate value from identifying relevant
> information in documents by using natural language processing techniques,
> vector representation of words, in addition to using machine learning
> techniques to build classification models. We will use Python as the main
> language.

<p align="right">
    VIDAL, Maciel (2023)
</p>

## **⚠️ This project is a work in progress and is not yet complete.**

---

## objectives

- Extract data from unstructured files like PDFs, images and web pages;
- Identify relevant information in textual corpus;
- Use machine learning techniques to analyze the extracted data.

## Requirements

Before you can use run the files in this project, you'll need to have the
following installed on your system:

- [Docker Desktop](https://www.docker.com/);
- [Visual Studio Code](https://code.visualstudio.com/);
- [Jupyter extension for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter).

## Usage

1. Clone this repository to your local machine.
2. Open a terminal or command prompt and navigate to the cloned repository.
3. Create a `.env` file in the root of the project by running:
```sh
echo "JUPYTER_TOKEN=YOUR_SECRET_TOKEN" > .env
```
Replace `YOUR_SECRET_TOKEN` with a **secret** token that you choose to access the Jupyter server for running code.
4. Run the following command to start the Jupyter Notebook server in a Docker container:
```sh
docker-compose up --detach --wait
```
5. Open a container shell and install the Python dependencies:
```sh
docker-compose exec jupyter sh
pip install -r requirements.txt
```
6. Open Visual Studio Code and install the Jupyter extension if it's not already installed.
7. Open the Command Palette (press `Ctrl+Shift+P` on Windows/Linux or
   `Cmd+Shift+P` on Mac) and type ">notebook: Select Notebook Kernel".
8. Choose "Select Another Kernel..."
9. Choose "Existing Jupyter Server..."
10. Select "Enter the URL of the running Jupyter server" from the list of options and enter
   `http://localhost:8888?token=YOUR_SECRET_TOKEN` as the URL, using the same secret token that you set in step 3..
11. Open a notebook file in Visual Studio Code.
12. Start running cells by clicking the "Run Cell" button or pressing Shift+Enter.


## Project

[Read the documentation](notebooks/project).

## Bibliography

Ricardo Baeza-Yates, Berthier Ribeiro-Neto, **Recuperação de Informação:
Conceitos e Tecnologia das Máquinas de Busca**, 2ª ed., Bookman, 2013, ISBN
978858260048 Livro Impresso

Steven Bird, Ewan Klein, and Edward Loper, **Natural language processing with
Python: analyzing text with the natural language toolkit**, 2ª ed., O'Reilly,
2014, ISBN 978149191342 Livro Impresso

RUSSEL, Matthew A., **Minning the social web**, 2ª ed., O'Reilly, 2014, ISBN
978144938834 Livro Impresso

## License

This code is MIT Licensed! [See the LICENSE file](LICENSE) for details.
