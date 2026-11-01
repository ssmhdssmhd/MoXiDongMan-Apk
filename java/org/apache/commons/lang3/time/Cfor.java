package org.apache.commons.lang3.time;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* renamed from: org.apache.commons.lang3.time.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Format implements DateParser, DatePrinter {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;

    /* renamed from: do, reason: not valid java name */
    private static final Ctry<Cfor> f28834do = new Cdo();
    private static final long serialVersionUID = 2;
    private final Cnew parser;
    private final FastDatePrinter printer;

    /* renamed from: org.apache.commons.lang3.time.for$do, reason: invalid class name */
    public static class Cdo extends Ctry<Cfor> {
        @Override // org.apache.commons.lang3.time.Ctry
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor mo32667do(String str, TimeZone timeZone, Locale locale) {
            return new Cfor(str, timeZone, locale);
        }
    }

    public Cfor(String str, TimeZone timeZone, Locale locale) {
        this(str, timeZone, locale, null);
    }

    public static Cfor getDateInstance(int i) {
        return (Cfor) f28834do.m32700if(i, null, null);
    }

    public static Cfor getDateTimeInstance(int i, int i2) {
        return (Cfor) f28834do.m32698for(i, i2, null, null);
    }

    public static Cfor getInstance() {
        return (Cfor) f28834do.m32701try();
    }

    public static Cfor getTimeInstance(int i) {
        return (Cfor) f28834do.m32699goto(i, null, null);
    }

    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        return this.printer.applyRules(calendar, stringBuffer);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cfor) {
            return this.printer.equals(((Cfor) obj).printer);
        }
        return false;
    }

    @Override // java.text.Format, org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return this.printer.format(obj, stringBuffer, fieldPosition);
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.printer.getLocale();
    }

    public int getMaxLengthEstimate() {
        return this.printer.getMaxLengthEstimate();
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.printer.getPattern();
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.printer.getTimeZone();
    }

    public int hashCode() {
        return this.printer.hashCode();
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str) throws ParseException {
        return this.parser.parse(str);
    }

    @Override // java.text.Format, org.apache.commons.lang3.time.DateParser
    public Object parseObject(String str, ParsePosition parsePosition) {
        return this.parser.parseObject(str, parsePosition);
    }

    public String toString() {
        return "FastDateFormat[" + this.printer.getPattern() + "," + this.printer.getLocale() + "," + this.printer.getTimeZone().getID() + "]";
    }

    public Cfor(String str, TimeZone timeZone, Locale locale, Date date) {
        this.printer = new FastDatePrinter(str, timeZone, locale);
        this.parser = new Cnew(str, timeZone, locale, date);
    }

    public static Cfor getDateInstance(int i, Locale locale) {
        return (Cfor) f28834do.m32700if(i, null, locale);
    }

    public static Cfor getDateTimeInstance(int i, int i2, Locale locale) {
        return (Cfor) f28834do.m32698for(i, i2, null, locale);
    }

    public static Cfor getInstance(String str) {
        return (Cfor) f28834do.m32697case(str, null, null);
    }

    public static Cfor getTimeInstance(int i, Locale locale) {
        return (Cfor) f28834do.m32699goto(i, null, locale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(long j) {
        return this.printer.format(j);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str, ParsePosition parsePosition) {
        return this.parser.parse(str, parsePosition);
    }

    public static Cfor getDateInstance(int i, TimeZone timeZone) {
        return (Cfor) f28834do.m32700if(i, timeZone, null);
    }

    public static Cfor getDateTimeInstance(int i, int i2, TimeZone timeZone) {
        return getDateTimeInstance(i, i2, timeZone, null);
    }

    public static Cfor getInstance(String str, TimeZone timeZone) {
        return (Cfor) f28834do.m32697case(str, timeZone, null);
    }

    public static Cfor getTimeInstance(int i, TimeZone timeZone) {
        return (Cfor) f28834do.m32699goto(i, timeZone, null);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Date date) {
        return this.printer.format(date);
    }

    public static Cfor getDateInstance(int i, TimeZone timeZone, Locale locale) {
        return (Cfor) f28834do.m32700if(i, timeZone, locale);
    }

    public static Cfor getDateTimeInstance(int i, int i2, TimeZone timeZone, Locale locale) {
        return (Cfor) f28834do.m32698for(i, i2, timeZone, locale);
    }

    public static Cfor getInstance(String str, Locale locale) {
        return (Cfor) f28834do.m32697case(str, null, locale);
    }

    public static Cfor getTimeInstance(int i, TimeZone timeZone, Locale locale) {
        return (Cfor) f28834do.m32699goto(i, timeZone, locale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Calendar calendar) {
        return this.printer.format(calendar);
    }

    public static Cfor getInstance(String str, TimeZone timeZone, Locale locale) {
        return (Cfor) f28834do.m32697case(str, timeZone, locale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return this.printer.format(j, stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        return this.printer.format(date, stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return this.printer.format(calendar, stringBuffer);
    }
}
