FROM python:3.10

# Install Jupyter Notebook and dependencies
RUN pip install jupyter

# Set up a non-root user with a home directory
ARG USERNAME=jupyter
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID --create-home $USERNAME

# Set the working directory and copy over the notebooks
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY notebooks/ /app/notebooks/

# Change ownership of the working directory to the non-root user
RUN chown -R $USERNAME:$USERNAME /app

# Switch to the non-root user
USER $USERNAME

# Start the Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]
