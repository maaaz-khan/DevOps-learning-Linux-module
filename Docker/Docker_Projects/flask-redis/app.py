from flask import Flask, jsonify, render_template
import redis

app = Flask(__name__)

r = redis.Redis(
    host="redis",
    port=6379,
    decode_responses=True
)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/about")
def about():
    return render_template("about.html")


@app.route("/health")
def health():
    try:
        r.ping()
        return render_template(
            "health.html",
            status="Healthy",
            redis_status="Connected",
            status_code=200
        ), 200

    except Exception:
        return render_template(
            "health.html",
            status="Unhealthy",
            redis_status="Disconnected",
            status_code=500
        ), 500


@app.route("/stats")
def stats():
    visits = r.get("visits")

    if visits is None:
        visits = 0

    return render_template(
        "stats.html",
        visits=visits
    )

@app.route("/reset")
def reset():
    r.set("visits", 0)
    return render_template("reset.html")


@app.route("/count")
def count():
    visits = r.incr("visits")
    return render_template("counter.html", visits=visits)

 

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

