package com.jayway.jsonpath.internal;

/* loaded from: classes2.dex */
public class JsonFormatter {
    private static final String INDENT = "   ";
    private static final int MODE_BETWEEN = 104;
    private static final int MODE_DOUBLE = 101;
    private static final int MODE_ESCAPE_DOUBLE = 103;
    private static final int MODE_ESCAPE_SINGLE = 102;
    private static final int MODE_SINGLE = 100;
    private static final String NEW_LINE = System.getProperty("line.separator");

    private static void appendIndent(StringBuilder sb, int i) {
        while (i > 0) {
            sb.append(INDENT);
            i--;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String prettyPrint(String str) {
        String strReplaceAll = str.replaceAll("[\\r\\n]", "");
        StringBuilder sb = new StringBuilder(strReplaceAll.length() * 2);
        int i = 0;
        char c = 'h';
        for (int i2 = 0; i2 < strReplaceAll.length(); i2++) {
            char cCharAt = strReplaceAll.charAt(i2);
            switch (c) {
                case 'd':
                    sb.append(cCharAt);
                    if (cCharAt != '\'') {
                        if (cCharAt != '\\') {
                            break;
                        } else {
                            c = 'f';
                            break;
                        }
                    } else {
                        c = 'h';
                        break;
                    }
                case 'e':
                    sb.append(cCharAt);
                    if (cCharAt != '\"') {
                        if (cCharAt != '\\') {
                            break;
                        } else {
                            c = 'g';
                            break;
                        }
                    }
                    break;
                case 'f':
                    sb.append(cCharAt);
                    c = 'd';
                    break;
                case 'g':
                    sb.append(cCharAt);
                    c = 'e';
                    break;
                case 'h':
                    if (cCharAt == ' ') {
                        break;
                    } else if (cCharAt == '\"') {
                        sb.append(cCharAt);
                        c = 'e';
                        break;
                    } else if (cCharAt == '\'') {
                        sb.append(cCharAt);
                        c = 'd';
                        break;
                    } else if (cCharAt == ',') {
                        sb.append(cCharAt);
                        sb.append(NEW_LINE);
                        appendIndent(sb, i);
                        break;
                    } else if (cCharAt == ':') {
                        sb.append(" : ");
                        break;
                    } else if (cCharAt == '[') {
                        sb.append(cCharAt);
                        sb.append(NEW_LINE);
                        i++;
                        appendIndent(sb, i);
                        break;
                    } else if (cCharAt == ']') {
                        sb.append(NEW_LINE);
                        i--;
                        appendIndent(sb, i);
                        sb.append(cCharAt);
                        break;
                    } else if (cCharAt != '{') {
                        if (cCharAt != '}') {
                            sb.append(cCharAt);
                            break;
                        }
                    }
            }
        }
        return sb.toString();
    }
}
