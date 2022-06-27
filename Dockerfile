# We start with the RENCI default.
FROM renciorg/renci-python-image:v0.0.1

# Settings
ARG BASEDIR=/opt/ontorunner
ARG USERNAME=nru

# Install system-level pre-requisites.
RUN pip install 'poetry==1.1.13'

# Create a directory for the scripts.
RUN mkdir ${BASEDIR}

# Copy this directory/repository in.
COPY --chown=${USERNAME} . ${BASEDIR}

# Create a home directory and switch to the nru user.
RUN mkdir /home/${USERNAME}
RUN chown ${USERNAME} /home/${USERNAME}
USER ${USERNAME}

# Install Poetry just for this user.
# (Recommended installation as per https://python-poetry.org/docs/#osx--linux--bashonwindows-install-instructions)
#RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Set up Poetry.
WORKDIR ${BASEDIR}
RUN poetry install
