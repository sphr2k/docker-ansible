FROM registry.suse.com/bci/python:latest
WORKDIR /tmp
RUN pip3 install --upgrade setuptools ansible-core \
 && ansible-galaxy collection install ansible.posix
CMD ["ansible-playbook"]
