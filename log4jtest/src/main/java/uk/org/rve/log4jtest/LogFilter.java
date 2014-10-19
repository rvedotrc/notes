package uk.org.rve.log4jtest;

import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class LogFilter extends Filter {

    @Override
    public int decide(LoggingEvent event) {
        return NEUTRAL;
    }

}
