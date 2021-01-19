const Sequelize = require("sequelize");
module.exports = (sequelize, datatype) => {
  let model = sequelize.define("users", {
    id: {
      type: Sequelize.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    userName: {
      type: Sequelize.STRING,
      allowNull: false,
      unique: true,
    },
    fullname: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    password: {
      type: Sequelize.STRING,
      allowNull: false,
    },
  });
  model.associate = (models) => {
    model.hasMany(models.events, {
      foreignKey: "user_id",
      sourceKey: "id",
      onDelete: "CASCADE",
      as: "Events",
    });
  };
  return model;
};
