FROM funkwhale/all-in-one:latest

ENV FUNKWHALE_HOSTNAME=beatsrender.onrender.com
ENV FUNKWHALE_API_IP=0.0.0.0

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "config.asgi:application"]

