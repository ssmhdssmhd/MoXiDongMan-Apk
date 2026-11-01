package android.support.v4;

import freemarker.template.Cstatic;

/* loaded from: classes.dex */
public class w72 extends Error {
    public static final int INVALID_LEXICAL_STATE = 2;
    public static final int LEXICAL_ERROR = 0;
    public static final int LOOP_DETECTED = 3;
    public static final int STATIC_LEXER_ERROR = 1;
    private Integer columnNumber;
    private String detail;
    private Integer endColumnNumber;
    private Integer endLineNumber;
    public int errorCode;
    private Integer lineNumber;

    public w72() {
    }

    public static String LexicalError(boolean z, int i, int i2, int i3, String str, char c) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Lexical error: encountered ");
        if (z) {
            str2 = "<EOF> ";
        } else {
            str2 = "\"" + addEscapes(String.valueOf(c)) + "\" (" + ((int) c) + "), ";
        }
        sb.append(str2);
        sb.append("after \"");
        sb.append(addEscapes(str));
        sb.append("\".");
        return sb.toString();
    }

    public static final String addEscapes(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != 0) {
                if (cCharAt == '\"') {
                    sb.append("\\\"");
                } else if (cCharAt == '\'') {
                    sb.append("\\'");
                } else if (cCharAt == '\\') {
                    sb.append("\\\\");
                } else if (cCharAt == '\f') {
                    sb.append("\\f");
                } else if (cCharAt != '\r') {
                    switch (cCharAt) {
                        case '\b':
                            sb.append("\\b");
                            break;
                        case '\t':
                            sb.append("\\t");
                            break;
                        case '\n':
                            sb.append("\\n");
                            break;
                        default:
                            char cCharAt2 = str.charAt(i);
                            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                                String str2 = "0000" + Integer.toString(cCharAt2, 16);
                                sb.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                                break;
                            } else {
                                sb.append(cCharAt2);
                                break;
                            }
                            break;
                    }
                } else {
                    sb.append("\\r");
                }
            }
        }
        return sb.toString();
    }

    public Integer getColumnNumber() {
        return this.columnNumber;
    }

    public String getDetail() {
        return this.detail;
    }

    public Integer getEndColumnNumber() {
        return this.endColumnNumber;
    }

    public Integer getEndLineNumber() {
        return this.endLineNumber;
    }

    public Integer getLineNumber() {
        return this.lineNumber;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    public freemarker.core.h3 toParseException(Cstatic cstatic) {
        return new freemarker.core.h3(getDetail(), cstatic, getLineNumber() != null ? getLineNumber().intValue() : 0, getColumnNumber() != null ? getColumnNumber().intValue() : 0, getEndLineNumber() != null ? getEndLineNumber().intValue() : 0, getEndColumnNumber() != null ? getEndColumnNumber().intValue() : 0);
    }

    public w72(String str, int i) {
        super(str);
        this.detail = str;
        this.errorCode = i;
    }

    @Deprecated
    public w72(String str, int i, int i2, int i3) {
        this(str, i, i2, i3, 0, 0);
        this.endLineNumber = null;
        this.endColumnNumber = null;
    }

    public w72(String str, int i, int i2, int i3, int i4, int i5) {
        super(str);
        this.detail = str;
        this.errorCode = i;
        this.lineNumber = Integer.valueOf(i2);
        this.columnNumber = Integer.valueOf(i3);
        this.endLineNumber = Integer.valueOf(i4);
        this.endColumnNumber = Integer.valueOf(i5);
    }

    public w72(boolean z, int i, int i2, int i3, String str, int i4, int i5) {
        this(z, i, i2, i3, str, (char) i4, i5);
    }

    public w72(boolean z, int i, int i2, int i3, String str, char c, int i4) {
        this(LexicalError(z, i, i2, i3, str, c), i4);
        this.lineNumber = Integer.valueOf(i2);
        Integer numValueOf = Integer.valueOf(i3);
        this.columnNumber = numValueOf;
        this.endLineNumber = this.lineNumber;
        this.endColumnNumber = numValueOf;
    }
}
