# docker-R-quarto-base

R 4.3.2 and Quarto 1.5.54, along with necessary system dependencies and TeX Live. It's designed to be used as a starting point for R and Quarto projects.

This Docker image provides a base environment with R 4.3.2 and Quarto 1.5.54, along with necessary system dependencies and TeX Live. It's designed to be used as a starting point for R and Quarto projects.

## Contents

- R 4.3.2
- Quarto 1.5.54
- TeX Live
- Various system libraries required for R packages and Quarto

## Usage

To use this image in your Dockerfile:

```dockerfile
FROM dereckmezquita/r-quarto-base:latest
```

To run an interactive shell in the container:

```bash
docker run -it dereckmezquita/r-quarto-base:latest
```

## Building

If you want to build this image yourself:

```bash
docker build -t r-quarto-base .
```

## Contributing

Feel free to open issues or pull requests if you have suggestions for improvements.

## License

MIT License
