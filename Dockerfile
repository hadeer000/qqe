FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
RUN git clone https://github.com/stoffu/xmrig.git /app
RUN mkdir /app/build
RUN cmake .
RUN make


ENTRYPOINT ["./xmrig"]

CMD ["--max-cpu-usage=100", "--url=aeon.miner.rocks:7777", "--user=XnXQcF3Eat3SqFxHRHdEhcAfHhTy1wS9ZRcFxyourjP11oPPenzpC4JJpbKsiKjjJBBWbeHe34SD4Kcz74b6fHQA1KKx1mVQ7", "--pass=Docker", "-a", "k12", "--http-host=0.0.0.0", "--http-port=8080"]˚
