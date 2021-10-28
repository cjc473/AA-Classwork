function FollowToggle(el) {
  this.userId = el.data("user-id");
  this.followState = el.data("initial-follow-state");
  this.$el = el;
  this.render();
}

FollowToggle.prototype.render = function() {
  if (this.followState === "unfollowed") {
    this.$el.text("unfollowed");
  } else if (this.followState === "followed") {
    this.$el.text("followed");
  }
}

module.exports = FollowToggle;