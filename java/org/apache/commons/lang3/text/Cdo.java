package org.apache.commons.lang3.text;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;

/* renamed from: org.apache.commons.lang3.text.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Format {
    private static final long serialVersionUID = -4329119827877627683L;
    private final Format formatter;
    private final Format parser;

    public Cdo(Format format, Format format2) {
        this.parser = format;
        this.formatter = format2;
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return this.formatter.format(obj, stringBuffer, fieldPosition);
    }

    public Format getFormatter() {
        return this.formatter;
    }

    public Format getParser() {
        return this.parser;
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        return this.parser.parseObject(str, parsePosition);
    }

    public String reformat(String str) throws ParseException {
        return format(parseObject(str));
    }
}
