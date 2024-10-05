# Use the official Jupyter Docker image as the base image
FROM jupyter/base-notebook:latest

# Install mamba
RUN conda install mamba -n base -c conda-forge

# Copy the environment.yml to the container
COPY environment.yml /tmp/environment.yml

# Create a new environment using the environment.yml
RUN mamba env create -f /tmp/environment.yml && \
    conda clean --all -f -y

# Activate the environment and ensure Jupyter uses it
RUN echo "source activate myenv" > ~/.bashrc
ENV PATH /opt/conda/envs/myenv/bin:$PATH

# Install ipykernel and link the environment
RUN /opt/conda/envs/myenv/bin/python -m ipykernel install --user --name myenv --display-name "Python (myenv)"

# Expose the port for JupyterLab
EXPOSE 8888

# Start JupyterLab by default
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
