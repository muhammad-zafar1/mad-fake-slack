const WS_OPEN_STATE = 1;
const MAIN_PAGE = process.env.MAIN_PAGE;
const MESSAGES_MAX_COUNT = process.env.MESSAGES_MAX_COUNT;
const HIDE_HEADER_TIME_INTERVAL_IN_SECONDS = process.env.DEFAULT_HEADER_HIDE_TIME_INTERVAL_IN_MIN * 60;

module.exports = {
  OPEN: WS_OPEN_STATE,
  MAIN_PAGE,
  MESSAGES_MAX_COUNT,
  HIDE_HEADER_TIME_INTERVAL_IN_SECONDS
};
