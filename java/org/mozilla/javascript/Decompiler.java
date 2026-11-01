package org.mozilla.javascript;

import android.support.v4.ca2;
import android.support.v4.hy1;
import freemarker.core.b2;
import net.minidev.json.parser.Cif;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class Decompiler {
    public static final int CASE_GAP_PROP = 3;
    private static final int FUNCTION_END = 167;
    public static final int INDENT_GAP_PROP = 2;
    public static final int INITIAL_INDENT_PROP = 1;
    public static final int ONLY_BODY_FLAG = 1;
    public static final int TO_SOURCE_FLAG = 2;
    private static final boolean printSource = false;
    private char[] sourceBuffer = new char[128];
    private int sourceTop;

    private void append(char c) throws RuntimeException {
        int i = this.sourceTop;
        if (i == this.sourceBuffer.length) {
            increaseSourceCapacity(i + 1);
        }
        char[] cArr = this.sourceBuffer;
        int i2 = this.sourceTop;
        cArr[i2] = c;
        this.sourceTop = i2 + 1;
    }

    private void appendString(String str) throws RuntimeException {
        int length = str.length();
        int i = this.sourceTop + (length >= 32768 ? 2 : 1) + length;
        if (i > this.sourceBuffer.length) {
            increaseSourceCapacity(i);
        }
        if (length >= 32768) {
            char[] cArr = this.sourceBuffer;
            int i2 = this.sourceTop;
            cArr[i2] = (char) (32768 | (length >>> 16));
            this.sourceTop = i2 + 1;
        }
        char[] cArr2 = this.sourceBuffer;
        int i3 = this.sourceTop;
        cArr2[i3] = (char) length;
        int i4 = i3 + 1;
        this.sourceTop = i4;
        str.getChars(0, length, cArr2, i4);
        this.sourceTop = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String decompile(String str, int i, UintMap uintMap) throws RuntimeException {
        char cCharAt;
        int iPrintSourceString;
        boolean z;
        int length = str.length();
        if (length == 0) {
            return "";
        }
        int i2 = uintMap.getInt(1, 0);
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        char c = 4;
        int i3 = uintMap.getInt(2, 4);
        if (i3 < 0) {
            throw new IllegalArgumentException();
        }
        int i4 = uintMap.getInt(3, 2);
        if (i4 < 0) {
            throw new IllegalArgumentException();
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = (i & 1) != 0;
        boolean z3 = (i & 2) != 0;
        if (str.charAt(0) == 137) {
            cCharAt = 65535;
            iPrintSourceString = 1;
        } else {
            cCharAt = str.charAt(1);
            iPrintSourceString = 0;
        }
        if (!z3) {
            sb.append('\n');
            for (int i5 = 0; i5 < i2; i5++) {
                sb.append(' ');
            }
        } else if (cCharAt == 2) {
            sb.append('(');
        }
        int i6 = 0;
        boolean z4 = false;
        while (iPrintSourceString < length) {
            char cCharAt2 = str.charAt(iPrintSourceString);
            if (cCharAt2 != 1) {
                if (cCharAt2 == c) {
                    sb.append("return");
                    if (83 != getNext(str, length, iPrintSourceString)) {
                        sb.append(' ');
                    }
                } else if (cCharAt2 == '2') {
                    sb.append("throw ");
                } else if (cCharAt2 == 'C') {
                    sb.append(": ");
                } else if (cCharAt2 == 'I') {
                    sb.append("yield ");
                } else if (cCharAt2 != 161) {
                    if (cCharAt2 != 167) {
                        if (cCharAt2 == '4') {
                            sb.append(" in ");
                        } else if (cCharAt2 == '5') {
                            sb.append(" instanceof ");
                        } else if (cCharAt2 == 144) {
                            sb.append("..");
                        } else if (cCharAt2 == 145) {
                            sb.append("::");
                        } else if (cCharAt2 == 147) {
                            sb.append(".(");
                        } else if (cCharAt2 == 148) {
                            sb.append('@');
                        } else if (cCharAt2 == 164) {
                            if (str.charAt(iPrintSourceString) == 152) {
                                sb.append("get ");
                            } else if (str.charAt(iPrintSourceString) == 153) {
                                sb.append("set ");
                            }
                            iPrintSourceString = printSourceString(str, iPrintSourceString + 1 + 1, false, sb) + 1;
                        } else if (cCharAt2 != 165) {
                            switch (cCharAt2) {
                                case '\t':
                                    sb.append(" | ");
                                    break;
                                case '\n':
                                    sb.append(" ^ ");
                                    break;
                                case 11:
                                    sb.append(" & ");
                                    break;
                                case '\f':
                                    sb.append(" == ");
                                    break;
                                case '\r':
                                    sb.append(" != ");
                                    break;
                                case 14:
                                    sb.append(" < ");
                                    break;
                                case 15:
                                    sb.append(" <= ");
                                    break;
                                case 16:
                                    sb.append(" > ");
                                    break;
                                case 17:
                                    sb.append(" >= ");
                                    break;
                                case 18:
                                    sb.append(" << ");
                                    break;
                                case 19:
                                    sb.append(" >> ");
                                    break;
                                case 20:
                                    sb.append(" >>> ");
                                    break;
                                case 21:
                                    sb.append(" + ");
                                    break;
                                case 22:
                                    sb.append(" - ");
                                    break;
                                case 23:
                                    sb.append(" * ");
                                    break;
                                case 24:
                                    sb.append(" / ");
                                    break;
                                case 25:
                                    sb.append(" % ");
                                    break;
                                case 26:
                                    sb.append('!');
                                    break;
                                case 27:
                                    sb.append(Cif.f28242public);
                                    break;
                                case 28:
                                    sb.append(hy1.f2562if);
                                    break;
                                case 29:
                                    sb.append(hy1.f2561for);
                                    break;
                                case 30:
                                    sb.append("new ");
                                    break;
                                case 31:
                                    sb.append("delete ");
                                    break;
                                case ' ':
                                    sb.append("typeof ");
                                    break;
                                default:
                                    switch (cCharAt2) {
                                        case '\'':
                                        case '0':
                                            iPrintSourceString = printSourceString(str, iPrintSourceString + 1, false, sb);
                                            break;
                                        case '(':
                                            iPrintSourceString = printSourceNumber(str, iPrintSourceString + 1, sb);
                                            break;
                                        case ')':
                                            iPrintSourceString = printSourceString(str, iPrintSourceString + 1, true, sb);
                                            break;
                                        case '*':
                                            sb.append("null");
                                            break;
                                        case '+':
                                            sb.append("this");
                                            break;
                                        case ',':
                                            sb.append(b2.f23510do);
                                            break;
                                        case '-':
                                            sb.append(b2.f23511if);
                                            break;
                                        case '.':
                                            sb.append(" === ");
                                            break;
                                        case '/':
                                            sb.append(" !== ");
                                            break;
                                        default:
                                            switch (cCharAt2) {
                                                case 'R':
                                                    sb.append("try ");
                                                    break;
                                                case 'S':
                                                    sb.append(';');
                                                    if (1 != getNext(str, length, iPrintSourceString)) {
                                                        sb.append(' ');
                                                        break;
                                                    }
                                                    break;
                                                case 'T':
                                                    sb.append('[');
                                                    break;
                                                case 'U':
                                                    sb.append(']');
                                                    break;
                                                case 'V':
                                                    i6++;
                                                    if (1 == getNext(str, length, iPrintSourceString)) {
                                                        i2 += i3;
                                                    }
                                                    sb.append(MessageFormatter.DELIM_START);
                                                    break;
                                                case 'W':
                                                    i6--;
                                                    if (!z2 || i6 != 0) {
                                                        sb.append(MessageFormatter.DELIM_STOP);
                                                        int next = getNext(str, length, iPrintSourceString);
                                                        if (next == 1) {
                                                            i2 -= i3;
                                                            break;
                                                        } else if (next == 114 || next == 118) {
                                                            i2 -= i3;
                                                            sb.append(' ');
                                                            break;
                                                        } else if (next == 167) {
                                                        }
                                                    }
                                                    break;
                                                case 'X':
                                                    sb.append('(');
                                                    break;
                                                case 'Y':
                                                    sb.append(')');
                                                    if (86 == getNext(str, length, iPrintSourceString)) {
                                                        sb.append(' ');
                                                    }
                                                    break;
                                                case 'Z':
                                                    sb.append(", ");
                                                    break;
                                                case '[':
                                                    sb.append(" = ");
                                                    break;
                                                case '\\':
                                                    sb.append(" |= ");
                                                    break;
                                                case ']':
                                                    sb.append(" ^= ");
                                                    break;
                                                case '^':
                                                    sb.append(" &= ");
                                                    break;
                                                case '_':
                                                    sb.append(" <<= ");
                                                    break;
                                                case '`':
                                                    sb.append(" >>= ");
                                                    break;
                                                case 'a':
                                                    sb.append(" >>>= ");
                                                    break;
                                                case 'b':
                                                    sb.append(" += ");
                                                    break;
                                                case 'c':
                                                    sb.append(" -= ");
                                                    break;
                                                case 'd':
                                                    sb.append(" *= ");
                                                    break;
                                                case 'e':
                                                    sb.append(" /= ");
                                                    break;
                                                case 'f':
                                                    sb.append(" %= ");
                                                    break;
                                                case 'g':
                                                    sb.append(" ? ");
                                                    break;
                                                case 'h':
                                                    if (1 == getNext(str, length, iPrintSourceString)) {
                                                        sb.append(':');
                                                    } else {
                                                        sb.append(" : ");
                                                    }
                                                    break;
                                                case 'i':
                                                    sb.append(" || ");
                                                    break;
                                                case 'j':
                                                    sb.append(" && ");
                                                    break;
                                                case 'k':
                                                    sb.append("++");
                                                    break;
                                                case 'l':
                                                    sb.append("--");
                                                    break;
                                                case 'm':
                                                    sb.append(Ctry.f28883do);
                                                    break;
                                                case 'n':
                                                    iPrintSourceString++;
                                                    sb.append("function ");
                                                    break;
                                                default:
                                                    switch (cCharAt2) {
                                                        case 'q':
                                                            sb.append("if ");
                                                            break;
                                                        case 'r':
                                                            sb.append("else ");
                                                            break;
                                                        case 's':
                                                            sb.append("switch ");
                                                            break;
                                                        case 't':
                                                            sb.append("case ");
                                                            break;
                                                        case 'u':
                                                            sb.append("default");
                                                            break;
                                                        case 'v':
                                                            sb.append("while ");
                                                            break;
                                                        case 'w':
                                                            sb.append("do ");
                                                            break;
                                                        case 'x':
                                                            sb.append("for ");
                                                            break;
                                                        case 'y':
                                                            sb.append("break");
                                                            if (39 == getNext(str, length, iPrintSourceString)) {
                                                                sb.append(' ');
                                                            }
                                                            break;
                                                        case 'z':
                                                            sb.append("continue");
                                                            if (39 == getNext(str, length, iPrintSourceString)) {
                                                                sb.append(' ');
                                                            }
                                                            break;
                                                        case '{':
                                                            sb.append("var ");
                                                            break;
                                                        case '|':
                                                            sb.append("with ");
                                                            break;
                                                        case '}':
                                                            sb.append("catch ");
                                                            break;
                                                        case '~':
                                                            sb.append("finally ");
                                                            break;
                                                        case 127:
                                                            sb.append("void ");
                                                            break;
                                                        default:
                                                            switch (cCharAt2) {
                                                                case 152:
                                                                case 153:
                                                                    break;
                                                                case 154:
                                                                    sb.append("let ");
                                                                    break;
                                                                case 155:
                                                                    sb.append("const ");
                                                                    break;
                                                                default:
                                                                    throw new RuntimeException("Token: " + Token.name(str.charAt(iPrintSourceString)));
                                                            }
                                                    }
                                            }
                                    }
                            }
                        } else {
                            sb.append(" => ");
                        }
                    }
                    c = 4;
                } else {
                    sb.append("debugger;\n");
                }
            } else if (!z3) {
                if (z4) {
                    z = true;
                } else {
                    if (z2) {
                        sb.setLength(0);
                        i2 -= i3;
                        z = false;
                    } else {
                        z = true;
                    }
                    z4 = true;
                }
                if (z) {
                    sb.append('\n');
                }
                int i7 = iPrintSourceString + 1;
                if (i7 < length) {
                    char cCharAt3 = str.charAt(i7);
                    for (int i8 = (cCharAt3 == 't' || cCharAt3 == 'u') ? i3 - i4 : (cCharAt3 == 'W' || (cCharAt3 == '\'' && str.charAt(getSourceStringEnd(str, iPrintSourceString + 2)) == 'h')) ? i3 : 0; i8 < i2; i8++) {
                        sb.append(' ');
                    }
                }
            }
            iPrintSourceString++;
            c = 4;
        }
        if (z3) {
            if (cCharAt == 2) {
                sb.append(')');
            }
        } else if (!z2) {
            sb.append('\n');
        }
        return sb.toString();
    }

    private static int getNext(String str, int i, int i2) {
        int i3 = i2 + 1;
        if (i3 < i) {
            return str.charAt(i3);
        }
        return 0;
    }

    private static int getSourceStringEnd(String str, int i) {
        return printSourceString(str, i, false, null);
    }

    private void increaseSourceCapacity(int i) throws RuntimeException {
        if (i <= this.sourceBuffer.length) {
            Kit.codeBug();
        }
        char[] cArr = this.sourceBuffer;
        int length = cArr.length * 2;
        if (length >= i) {
            i = length;
        }
        char[] cArr2 = new char[i];
        System.arraycopy(cArr, 0, cArr2, 0, this.sourceTop);
        this.sourceBuffer = cArr2;
    }

    private static int printSourceNumber(String str, int i, StringBuilder sb) {
        int i2;
        char cCharAt = str.charAt(i);
        int i3 = i + 1;
        if (cCharAt == 'S') {
            dCharAt = sb != null ? str.charAt(i3) : 0.0d;
            i2 = i3 + 1;
        } else {
            if (cCharAt != 'J' && cCharAt != 'D') {
                throw new RuntimeException();
            }
            if (sb != null) {
                long jCharAt = (str.charAt(i3) << 48) | (str.charAt(i3 + 1) << 32) | (str.charAt(i3 + 2) << 16) | str.charAt(i3 + 3);
                dCharAt = cCharAt == 'J' ? jCharAt : Double.longBitsToDouble(jCharAt);
            }
            i2 = i3 + 4;
        }
        if (sb != null) {
            sb.append(ScriptRuntime.numberToString(dCharAt, 10));
        }
        return i2;
    }

    private static int printSourceString(String str, int i, boolean z, StringBuilder sb) {
        int iCharAt = str.charAt(i);
        int i2 = i + 1;
        if ((32768 & iCharAt) != 0) {
            iCharAt = ((iCharAt & 32767) << 16) | str.charAt(i2);
            i2++;
        }
        if (sb != null) {
            String strSubstring = str.substring(i2, i2 + iCharAt);
            if (z) {
                sb.append(ca2.f674do);
                sb.append(ScriptRuntime.escapeString(strSubstring));
                sb.append(ca2.f674do);
            } else {
                sb.append(strSubstring);
            }
        }
        return i2 + iCharAt;
    }

    private String sourceToString(int i) throws RuntimeException {
        if (i < 0 || this.sourceTop < i) {
            Kit.codeBug();
        }
        return new String(this.sourceBuffer, i, this.sourceTop - i);
    }

    public void addEOL(int i) throws RuntimeException {
        if (i < 0 || i > 166) {
            throw new IllegalArgumentException();
        }
        append((char) i);
        append((char) 1);
    }

    public void addName(String str) throws RuntimeException {
        addToken(39);
        appendString(str);
    }

    public void addNumber(double d) throws RuntimeException {
        addToken(40);
        long j = (long) d;
        if (j != d) {
            long jDoubleToLongBits = Double.doubleToLongBits(d);
            append('D');
            append((char) (jDoubleToLongBits >> 48));
            append((char) (jDoubleToLongBits >> 32));
            append((char) (jDoubleToLongBits >> 16));
            append((char) jDoubleToLongBits);
            return;
        }
        if (j < 0) {
            Kit.codeBug();
        }
        if (j <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            append('S');
            append((char) j);
            return;
        }
        append('J');
        append((char) (j >> 48));
        append((char) (j >> 32));
        append((char) (j >> 16));
        append((char) j);
    }

    public void addRegexp(String str, String str2) throws RuntimeException {
        addToken(48);
        appendString(Attributes.InternalPrefix + str + Attributes.InternalPrefix + str2);
    }

    public void addString(String str) throws RuntimeException {
        addToken(41);
        appendString(str);
    }

    public void addToken(int i) throws RuntimeException {
        if (i < 0 || i > 166) {
            throw new IllegalArgumentException();
        }
        append((char) i);
    }

    public int getCurrentOffset() {
        return this.sourceTop;
    }

    public String getEncodedSource() {
        return sourceToString(0);
    }

    public int markFunctionEnd(int i) throws RuntimeException {
        int currentOffset = getCurrentOffset();
        append(ca2.f667break);
        return currentOffset;
    }

    public int markFunctionStart(int i) throws RuntimeException {
        int currentOffset = getCurrentOffset();
        if (i != 4) {
            addToken(110);
            append((char) i);
        }
        return currentOffset;
    }
}
