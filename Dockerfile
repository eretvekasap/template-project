FROM ursa/odoo:10.0-20170623

MAINTAINER "Ursa Information Systems"

# Copy files
COPY ./odoo.conf /etc/odoo/
COPY ./requirements.txt /tmp/
COPY ./custom-addons /opt/odoo/
COPY ./enterprise /opt/odoo/

RUN chown -R odoo /etc/odoo/odoo.conf /opt/odoo

# Install Odoo
RUN set -x; \
        pip install --upgrade pip \
        && pip install -r /tmp/requirements.txt
