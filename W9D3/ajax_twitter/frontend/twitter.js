const FollowToggle = require('./follow_toggle.js')
console.log($("li"));
$("button.follow-toggle").each(function(i, el) {
  let obj = new FollowToggle(el);
})