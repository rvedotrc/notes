package uk.org.rve.log4jtest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTest {

    public void run() {

        doClass("a.b.c.d");
        doClass("a.b.c");
        doClass("a.b");
        doClass("a");
        doClass("x.y");
        doClass("x");
        doClass("");

    }

    private void doClass(String className) {
        final Logger logger = LoggerFactory.getLogger(className);
        logger.error("error from " + className);
        logger.warn("warn from " + className);
        logger.info("info from " + className);
        logger.debug("debug from " + className);
        logger.trace("trace from " + className);
    }

}
