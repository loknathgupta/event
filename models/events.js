const Sequelize = require("sequelize");
module.exports = (sequelize, datatype) => {
  let model = sequelize.define("events", {
    id: {
      type: Sequelize.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    user_id: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
    title: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    description: {
      type: Sequelize.STRING,
    },
    event_date: {
      type: Sequelize.DATE,
      allowNull: false,
    },
    start_time: {
      type: Sequelize.TIME,
      allowNull: false,
    },
    end_time: {
      type: Sequelize.TIME,
      allowNull: false,
    },
    event_duration: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
  });
  model.associate = (models) => {
    model.belongsTo(models.users, {
      foreignKey: "user_id",
      targetKey: "id",
      onDelete: "CASCADE",
      as: "User",
    });
  };
  return model;
};
