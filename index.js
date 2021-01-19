const express = require("express");
const cors = require("cors");
const db = require("./models/");
const { Op } = require("sequelize");

const app = express();
app.use(cors());

const userIdFromToken = (req, res, next) => {
  req.userId = 1;
  next();
};

app.get("/events", userIdFromToken, (req, res) => {
  const { fromDate, toDate, fromTime, toTime } = req.query;

  const [sy, sm, sd] = fromDate.split("-");
  const [ey, em, ed] = toDate.split("-");

  let startDate = new Date(sy, sm - 1, sd);
  let endDate = new Date(ey, em - 1, ed);

  let userId = req.userId;
  db.events
    .findAll({
      where: {
        user_id: userId,
        event_date: {
          [Op.between]: [startDate, endDate],
        },
        start_time: {
          [Op.between]: [fromTime, toTime],
        },
      },
      order: [
        ["event_date", "ASC"],
        ["start_time", "ASC"],
      ],
    })
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      console.log(err);
      res.status(500).send({
        message: "Somethng went wrong..",
      });
    });
});

app.listen("3232", () => {
  console.log(`Server Stared on port 3232`);
});
