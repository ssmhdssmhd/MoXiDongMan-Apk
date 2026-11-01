package org.mozilla.javascript;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.b2;
import java.io.IOException;
import java.io.Reader;
import org.mozilla.javascript.Token;
import sun.security.util.SecurityConstants;

/* loaded from: classes3.dex */
class TokenStream {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final char BYTE_ORDER_MARK = 65279;
    private static final int EOF_CHAR = -1;
    public Token.CommentType commentType;
    public int cursor;
    private boolean dirtyLine;
    private boolean isBinary;
    private boolean isHex;
    private boolean isOctal;
    private boolean isOldOctal;
    public int lineno;
    private double number;
    private Parser parser;
    private int quoteChar;
    public String regExpFlags;
    private char[] sourceBuffer;
    public int sourceCursor;
    private int sourceEnd;
    private Reader sourceReader;
    private String sourceString;
    private int stringBufferTop;
    public int tokenBeg;
    public int tokenEnd;
    private int ungetCursor;
    private boolean xmlIsAttribute;
    private boolean xmlIsTagContent;
    private int xmlOpenTagsCount;
    private String string = "";
    private char[] stringBuffer = new char[128];
    private ObjToIntMap allStrings = new ObjToIntMap(50);
    private final int[] ungetBuffer = new int[3];
    private boolean hitEOF = false;
    private int lineStart = 0;
    private int lineEndChar = -1;
    private String commentPrefix = "";
    private int commentCursor = -1;

    public TokenStream(Parser parser, Reader reader, String str, int i) throws RuntimeException {
        this.parser = parser;
        this.lineno = i;
        if (reader != null) {
            if (str != null) {
                Kit.codeBug();
            }
            this.sourceReader = reader;
            this.sourceBuffer = new char[512];
            this.sourceEnd = 0;
        } else {
            if (str == null) {
                Kit.codeBug();
            }
            this.sourceString = str;
            this.sourceEnd = str.length();
        }
        this.cursor = 0;
        this.sourceCursor = 0;
    }

    private void addToString(int i) {
        int i2 = this.stringBufferTop;
        char[] cArr = this.stringBuffer;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.stringBuffer = cArr2;
        }
        this.stringBuffer[i2] = (char) i;
        this.stringBufferTop = i2 + 1;
    }

    private boolean canUngetChar() {
        int i = this.ungetCursor;
        return i == 0 || this.ungetBuffer[i - 1] != 10;
    }

    private final int charAt(int i) {
        if (i < 0) {
            return -1;
        }
        String str = this.sourceString;
        if (str != null) {
            if (i >= this.sourceEnd) {
                return -1;
            }
            return str.charAt(i);
        }
        if (i >= this.sourceEnd) {
            int i2 = this.sourceCursor;
            try {
                if (!fillSourceBuffer()) {
                    return -1;
                }
                i -= i2 - this.sourceCursor;
            } catch (IOException unused) {
                return -1;
            }
        }
        return this.sourceBuffer[i];
    }

    private String convertLastCharToHex(String str) {
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(str.substring(0, length));
        sb.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i = 0; i < 4 - hexString.length(); i++) {
            sb.append('0');
        }
        sb.append(hexString);
        return sb.toString();
    }

    private boolean fillSourceBuffer() throws IOException, RuntimeException {
        if (this.sourceString != null) {
            Kit.codeBug();
        }
        if (this.sourceEnd == this.sourceBuffer.length) {
            if (this.lineStart == 0 || isMarkingComment()) {
                char[] cArr = this.sourceBuffer;
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, this.sourceEnd);
                this.sourceBuffer = cArr2;
            } else {
                char[] cArr3 = this.sourceBuffer;
                int i = this.lineStart;
                System.arraycopy(cArr3, i, cArr3, 0, this.sourceEnd - i);
                int i2 = this.sourceEnd;
                int i3 = this.lineStart;
                this.sourceEnd = i2 - i3;
                this.sourceCursor -= i3;
                this.lineStart = 0;
            }
        }
        Reader reader = this.sourceReader;
        char[] cArr4 = this.sourceBuffer;
        int i4 = this.sourceEnd;
        int i5 = reader.read(cArr4, i4, cArr4.length - i4);
        if (i5 < 0) {
            return false;
        }
        this.sourceEnd += i5;
        return true;
    }

    private int getChar() throws IOException {
        return getChar(true);
    }

    private int getCharIgnoreLineEnd() throws IOException {
        char cCharAt;
        int i = this.ungetCursor;
        if (i != 0) {
            this.cursor++;
            int[] iArr = this.ungetBuffer;
            int i2 = i - 1;
            this.ungetCursor = i2;
            return iArr[i2];
        }
        while (true) {
            String str = this.sourceString;
            if (str != null) {
                int i3 = this.sourceCursor;
                if (i3 == this.sourceEnd) {
                    this.hitEOF = true;
                    return -1;
                }
                this.cursor++;
                this.sourceCursor = i3 + 1;
                cCharAt = str.charAt(i3);
            } else {
                if (this.sourceCursor == this.sourceEnd && !fillSourceBuffer()) {
                    this.hitEOF = true;
                    return -1;
                }
                this.cursor++;
                char[] cArr = this.sourceBuffer;
                int i4 = this.sourceCursor;
                this.sourceCursor = i4 + 1;
                cCharAt = cArr[i4];
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.lineEndChar = cCharAt;
            } else {
                if (cCharAt == 65279) {
                    return cCharAt;
                }
                if (!isJSFormatChar(cCharAt)) {
                    if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
                        return cCharAt;
                    }
                    this.lineEndChar = cCharAt;
                }
            }
        }
        return 10;
    }

    private String getStringFromBuffer() {
        this.tokenEnd = this.cursor;
        return new String(this.stringBuffer, 0, this.stringBufferTop);
    }

    private static boolean isAlpha(int i) {
        return i <= 90 ? 65 <= i : 97 <= i && i <= 122;
    }

    public static boolean isDigit(int i) {
        return 48 <= i && i <= 57;
    }

    private static boolean isJSFormatChar(int i) {
        return i > 127 && Character.getType((char) i) == 16;
    }

    public static boolean isJSSpace(int i) {
        return i <= 127 ? i == 32 || i == 9 || i == 12 || i == 11 : i == 160 || i == 65279 || Character.getType((char) i) == 12;
    }

    public static boolean isKeyword(String str, int i, boolean z) {
        return stringToKeyword(str, i, z) != 0;
    }

    private boolean isMarkingComment() {
        return this.commentCursor != -1;
    }

    private void markCommentStart() {
        markCommentStart("");
    }

    private boolean matchChar(int i) throws IOException {
        int charIgnoreLineEnd = getCharIgnoreLineEnd();
        if (charIgnoreLineEnd == i) {
            this.tokenEnd = this.cursor;
            return true;
        }
        ungetCharIgnoreLineEnd(charIgnoreLineEnd);
        return false;
    }

    private int peekChar() throws IOException, RuntimeException {
        int i = getChar();
        ungetChar(i);
        return i;
    }

    private boolean readCDATA() throws IOException {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 93 && peekChar() == 93) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private boolean readEntity() throws IOException {
        int i = getChar();
        int i2 = 1;
        while (i != -1) {
            addToString(i);
            if (i == 60) {
                i2++;
            } else if (i == 62 && i2 - 1 == 0) {
                return true;
            }
            i = getChar();
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private boolean readPI() throws IOException {
        while (true) {
            int i = getChar();
            if (i == -1) {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
            addToString(i);
            if (i == 63 && peekChar() == 62) {
                addToString(getChar());
                return true;
            }
        }
    }

    private boolean readQuotedString(int i) throws IOException {
        int i2;
        do {
            i2 = getChar();
            if (i2 == -1) {
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return false;
            }
            addToString(i2);
        } while (i2 != i);
        return true;
    }

    private boolean readXmlComment() throws IOException {
        int i = getChar();
        while (i != -1) {
            addToString(i);
            if (i == 45 && peekChar() == 45) {
                i = getChar();
                addToString(i);
                if (peekChar() == 62) {
                    addToString(getChar());
                    return true;
                }
            } else {
                i = getChar();
            }
        }
        this.stringBufferTop = 0;
        this.string = null;
        this.parser.addError("msg.XML.bad.form");
        return false;
    }

    private void skipLine() throws IOException, RuntimeException {
        int i;
        do {
            i = getChar();
            if (i == -1) {
                break;
            }
        } while (i != 10);
        ungetChar(i);
        this.tokenEnd = this.cursor;
    }

    private static int stringToKeyword(String str, int i, boolean z) {
        return i < 200 ? stringToKeywordForJS(str) : stringToKeywordForES(str, z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01aa, code lost:
    
        if (r17.charAt(1) == 'l') goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
    
        if (r1 != 'x') goto L186;
     */
    /* JADX WARN: Removed duplicated region for block: B:186:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0273 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int stringToKeywordForES(String str, boolean z) {
        String str2;
        int i;
        int i2 = 114;
        switch (str.length()) {
            case 2:
                char cCharAt = str.charAt(1);
                if (cCharAt == 'f') {
                    if (str.charAt(0) == 'i') {
                        i2 = 113;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt == 'n') {
                    if (str.charAt(0) == 'i') {
                        i2 = 52;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else {
                    if (cCharAt == 'o' && str.charAt(0) == 'd') {
                        i2 = 119;
                        break;
                    }
                    str2 = null;
                    i = 0;
                }
                if (str2 != null && str2 != str && !str2.equals(str)) {
                    i2 = 0;
                    break;
                } else {
                    i2 = i;
                    break;
                }
                break;
            case 3:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 == 'f') {
                    if (str.charAt(2) == 'r' && str.charAt(1) == 'o') {
                        i2 = 120;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt2 == 'l') {
                    if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                        i2 = 154;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt2 == 'n') {
                    if (str.charAt(2) == 'w' && str.charAt(1) == 'e') {
                        i2 = 30;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt2 != 't') {
                    if (cCharAt2 == 'v' && str.charAt(2) == 'r' && str.charAt(1) == 'a') {
                        i2 = 123;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else {
                    if (str.charAt(2) == 'y' && str.charAt(1) == 'r') {
                        i2 = 82;
                        break;
                    }
                    str2 = null;
                    i = 0;
                }
                if (str2 != null) {
                    i2 = i;
                    break;
                }
                break;
            case 4:
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'c') {
                    if (str.charAt(3) == 'e' && str.charAt(2) == 's' && str.charAt(1) == 'a') {
                        i2 = 116;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt3 == 'e') {
                    char cCharAt4 = str.charAt(3);
                    if (cCharAt4 == 'e') {
                        if (str.charAt(2) == 's') {
                            break;
                        }
                        str2 = null;
                        i = 0;
                    } else {
                        if (cCharAt4 == 'm' && str.charAt(2) == 'u' && str.charAt(1) == 'n') {
                            i2 = 128;
                            break;
                        }
                        str2 = null;
                        i = 0;
                    }
                } else if (cCharAt3 != 'n') {
                    if (cCharAt3 == 't') {
                        char cCharAt5 = str.charAt(3);
                        if (cCharAt5 != 'e') {
                            if (cCharAt5 == 's' && str.charAt(2) == 'i' && str.charAt(1) == 'h') {
                                i2 = 43;
                                break;
                            }
                        } else if (str.charAt(2) == 'u' && str.charAt(1) == 'r') {
                            i2 = 45;
                            break;
                        }
                    } else if (cCharAt3 == 'v') {
                        i = 127;
                        str2 = "void";
                    } else if (cCharAt3 == 'w') {
                        i = 124;
                        str2 = "with";
                    }
                    str2 = null;
                    i = 0;
                } else {
                    i = 42;
                    str2 = "null";
                }
                if (str2 != null) {
                }
                break;
            case 5:
                char cCharAt6 = str.charAt(2);
                if (cCharAt6 == 'a') {
                    char cCharAt7 = str.charAt(0);
                    if (cCharAt7 == 'c') {
                        str2 = "class";
                    } else {
                        if (cCharAt7 == 'a') {
                            str2 = "await";
                        }
                        str2 = null;
                        i = 0;
                    }
                    i = 128;
                } else if (cCharAt6 == 'e') {
                    char cCharAt8 = str.charAt(0);
                    if (cCharAt8 == 'b') {
                        str2 = "break";
                        i = 121;
                    } else if (cCharAt8 == 'y') {
                        i = 73;
                        str2 = "yield";
                    }
                } else if (cCharAt6 == 'i') {
                    str2 = "while";
                    i = 118;
                } else if (cCharAt6 == 'l') {
                    i = 44;
                    str2 = b2.f23510do;
                } else if (cCharAt6 == 'n') {
                    i = 155;
                    str2 = "const";
                } else if (cCharAt6 == 'p') {
                    str2 = "super";
                    i = 128;
                } else if (cCharAt6 == 'r') {
                    i = 50;
                    str2 = "throw";
                } else if (cCharAt6 != 't') {
                    str2 = null;
                    i = 0;
                } else {
                    i = 125;
                    str2 = "catch";
                }
                if (str2 != null) {
                }
                break;
            case 6:
                char cCharAt9 = str.charAt(1);
                if (cCharAt9 != 'e') {
                    if (cCharAt9 == 'm') {
                        str2 = "import";
                    } else if (cCharAt9 != 't') {
                        if (cCharAt9 != 'u') {
                            switch (cCharAt9) {
                                case 'w':
                                    str2 = "switch";
                                    i = 115;
                                    break;
                                case 'x':
                                    str2 = "export";
                                    break;
                                case 'y':
                                    i = 32;
                                    str2 = "typeof";
                                    break;
                            }
                        } else {
                            if (z) {
                                str2 = "public";
                            }
                            str2 = "switch";
                            i = 115;
                        }
                        if (str2 != null) {
                        }
                    } else if (z) {
                        str2 = "static";
                    }
                    i = 128;
                    if (str2 != null) {
                    }
                } else {
                    char cCharAt10 = str.charAt(0);
                    if (cCharAt10 == 'd') {
                        i = 31;
                        str2 = SecurityConstants.FILE_DELETE_ACTION;
                    } else if (cCharAt10 == 'r') {
                        i = 4;
                        str2 = "return";
                    }
                    if (str2 != null) {
                    }
                }
                break;
            case 7:
                char cCharAt11 = str.charAt(1);
                if (cCharAt11 == 'a') {
                    if (z) {
                        str2 = "package";
                        i = 128;
                    }
                    str2 = "default";
                    i = 117;
                } else if (cCharAt11 == 'e') {
                    str2 = "default";
                    i = 117;
                } else if (cCharAt11 != 'i') {
                    if (cCharAt11 != 'r') {
                        break;
                    } else {
                        if (z) {
                            str2 = "private";
                        }
                        i = 128;
                    }
                    str2 = "extends";
                    i = 128;
                } else {
                    i = 126;
                    str2 = "finally";
                }
                if (str2 != null) {
                }
                break;
            case 8:
                char cCharAt12 = str.charAt(0);
                if (cCharAt12 == 'c') {
                    i = 122;
                    str2 = "continue";
                } else if (cCharAt12 == 'd') {
                    i = 161;
                    str2 = "debugger";
                } else if (cCharAt12 == 'f') {
                    str2 = "function";
                    i = 110;
                }
                if (str2 != null) {
                }
                break;
            case 9:
                char cCharAt13 = str.charAt(0);
                if (cCharAt13 == 'i' && z) {
                    str2 = "interface";
                } else {
                    if (cCharAt13 == 'p' && z) {
                        str2 = "protected";
                    }
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                    }
                }
                i = 128;
                if (str2 != null) {
                }
                break;
            case 10:
                char cCharAt14 = str.charAt(1);
                if (cCharAt14 == 'm' && z) {
                    str2 = "implements";
                    i = 128;
                    if (str2 != null) {
                    }
                } else {
                    if (cCharAt14 == 'n') {
                        i = 53;
                        str2 = "instanceof";
                    }
                    if (str2 != null) {
                    }
                }
                break;
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 & 255;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0207, code lost:
    
        if (r17.charAt(1) == 'n') goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0233, code lost:
    
        if (r17.charAt(1) == 'h') goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x02a1, code lost:
    
        if (r17.charAt(1) == 'n') goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x02a3, code lost:
    
        r6 = 128;
     */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x02e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x02eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int stringToKeywordForJS(String str) {
        String str2;
        int i;
        int i2;
        switch (str.length()) {
            case 2:
                char cCharAt = str.charAt(1);
                if (cCharAt == 'f') {
                    if (str.charAt(0) == 'i') {
                        i2 = 113;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else if (cCharAt == 'n') {
                    if (str.charAt(0) == 'i') {
                        i2 = 52;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else {
                    if (cCharAt == 'o' && str.charAt(0) == 'd') {
                        i2 = 119;
                        break;
                    }
                    str2 = null;
                    i = 0;
                }
                if (str2 == null && str2 != str && !str2.equals(str)) {
                    i2 = 0;
                    break;
                } else {
                    i2 = i;
                    break;
                }
            case 3:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 != 'f') {
                    if (cCharAt2 == 'i') {
                        if (str.charAt(2) == 't') {
                            break;
                        }
                    } else if (cCharAt2 == 'l') {
                        if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                            i2 = 154;
                            break;
                        }
                    } else if (cCharAt2 == 'n') {
                        if (str.charAt(2) == 'w' && str.charAt(1) == 'e') {
                            i2 = 30;
                            break;
                        }
                    } else if (cCharAt2 == 't') {
                        if (str.charAt(2) == 'y' && str.charAt(1) == 'r') {
                            i2 = 82;
                            break;
                        }
                    } else if (cCharAt2 == 'v' && str.charAt(2) == 'r' && str.charAt(1) == 'a') {
                        i2 = 123;
                        break;
                    }
                    str2 = null;
                    i = 0;
                } else {
                    if (str.charAt(2) == 'r' && str.charAt(1) == 'o') {
                        i2 = 120;
                        break;
                    }
                    str2 = null;
                    i = 0;
                }
                if (str2 == null) {
                    i2 = i;
                    break;
                }
                break;
            case 4:
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'b') {
                    str2 = "byte";
                } else if (cCharAt3 != 'c') {
                    if (cCharAt3 == 'e') {
                        char cCharAt4 = str.charAt(3);
                        if (cCharAt4 != 'e') {
                            if (cCharAt4 == 'm') {
                                if (str.charAt(2) == 'u') {
                                    break;
                                }
                            }
                        } else if (str.charAt(2) == 's' && str.charAt(1) == 'l') {
                            i2 = 114;
                            break;
                        }
                        str2 = null;
                        i = 0;
                    } else if (cCharAt3 == 'g') {
                        str2 = "goto";
                    } else if (cCharAt3 == 'l') {
                        str2 = "long";
                    } else if (cCharAt3 != 'n') {
                        if (cCharAt3 == 't') {
                            char cCharAt5 = str.charAt(3);
                            if (cCharAt5 != 'e') {
                                if (cCharAt5 == 's' && str.charAt(2) == 'i' && str.charAt(1) == 'h') {
                                    i2 = 43;
                                    break;
                                }
                            } else if (str.charAt(2) == 'u' && str.charAt(1) == 'r') {
                                i2 = 45;
                                break;
                            }
                        } else if (cCharAt3 == 'v') {
                            i = 127;
                            str2 = "void";
                        } else if (cCharAt3 == 'w') {
                            i = 124;
                            str2 = "with";
                        }
                        str2 = null;
                        i = 0;
                    } else {
                        i = 42;
                        str2 = "null";
                    }
                    if (str2 == null) {
                    }
                } else {
                    char cCharAt6 = str.charAt(3);
                    if (cCharAt6 != 'e') {
                        if (cCharAt6 == 'r') {
                            if (str.charAt(2) == 'a') {
                                break;
                            }
                        }
                    } else if (str.charAt(2) == 's' && str.charAt(1) == 'a') {
                        i2 = 116;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    if (str2 == null) {
                    }
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 5:
                char cCharAt7 = str.charAt(2);
                if (cCharAt7 == 'a') {
                    str2 = "class";
                } else if (cCharAt7 != 'e') {
                    if (cCharAt7 == 'i') {
                        str2 = "while";
                        i = 118;
                    } else if (cCharAt7 == 'l') {
                        i = 44;
                        str2 = b2.f23510do;
                    } else if (cCharAt7 == 'r') {
                        i = 50;
                        str2 = "throw";
                    } else if (cCharAt7 != 't') {
                        switch (cCharAt7) {
                            case 'n':
                                char cCharAt8 = str.charAt(0);
                                if (cCharAt8 != 'c') {
                                    if (cCharAt8 == 'f') {
                                        str2 = "final";
                                        break;
                                    }
                                    str2 = null;
                                    i = 0;
                                    break;
                                } else {
                                    i = 155;
                                    str2 = "const";
                                    break;
                                }
                            case 'o':
                                char cCharAt9 = str.charAt(0);
                                if (cCharAt9 != 'f') {
                                    if (cCharAt9 == 's') {
                                        str2 = "short";
                                        break;
                                    }
                                    str2 = null;
                                    i = 0;
                                    break;
                                } else {
                                    str2 = TypedValues.Custom.S_FLOAT;
                                    break;
                                }
                            case 'p':
                                str2 = "super";
                                break;
                            default:
                                str2 = null;
                                i = 0;
                                break;
                        }
                    } else {
                        i = 125;
                        str2 = "catch";
                    }
                    if (str2 == null) {
                    }
                } else {
                    char cCharAt10 = str.charAt(0);
                    if (cCharAt10 == 'b') {
                        str2 = "break";
                        i = 121;
                    } else if (cCharAt10 == 'y') {
                        i = 73;
                        str2 = "yield";
                    }
                    if (str2 == null) {
                    }
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 6:
                char cCharAt11 = str.charAt(1);
                if (cCharAt11 == 'a') {
                    str2 = "native";
                } else if (cCharAt11 == 'e') {
                    char cCharAt12 = str.charAt(0);
                    if (cCharAt12 == 'd') {
                        i = 31;
                        str2 = SecurityConstants.FILE_DELETE_ACTION;
                    } else if (cCharAt12 == 'r') {
                        i = 4;
                        str2 = "return";
                    }
                    if (str2 == null) {
                    }
                } else if (cCharAt11 == 'h') {
                    str2 = "throws";
                } else if (cCharAt11 == 'm') {
                    str2 = "import";
                } else if (cCharAt11 == 'o') {
                    str2 = "double";
                } else if (cCharAt11 == 't') {
                    str2 = "static";
                } else if (cCharAt11 != 'u') {
                    switch (cCharAt11) {
                        case 'w':
                            str2 = "switch";
                            i = 115;
                            break;
                        case 'x':
                            str2 = "export";
                            break;
                        case 'y':
                            i = 32;
                            str2 = "typeof";
                            break;
                    }
                    if (str2 == null) {
                    }
                } else {
                    str2 = "public";
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 7:
                char cCharAt13 = str.charAt(1);
                if (cCharAt13 != 'a') {
                    if (cCharAt13 == 'e') {
                        str2 = "default";
                        i = 117;
                    } else if (cCharAt13 == 'i') {
                        i = 126;
                        str2 = "finally";
                    } else if (cCharAt13 == 'o') {
                        str2 = TypedValues.Custom.S_BOOLEAN;
                    } else if (cCharAt13 != 'r') {
                        if (cCharAt13 == 'x') {
                            str2 = "extends";
                        }
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "private";
                    }
                    if (str2 == null) {
                    }
                } else {
                    str2 = "package";
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 8:
                char cCharAt14 = str.charAt(0);
                if (cCharAt14 != 'a') {
                    if (cCharAt14 == 'f') {
                        str2 = "function";
                        i = 110;
                    } else if (cCharAt14 == 'v') {
                        str2 = "volatile";
                    } else if (cCharAt14 == 'c') {
                        i = 122;
                        str2 = "continue";
                    } else if (cCharAt14 == 'd') {
                        i = 161;
                        str2 = "debugger";
                    }
                    if (str2 == null) {
                    }
                } else {
                    str2 = "abstract";
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 9:
                char cCharAt15 = str.charAt(0);
                if (cCharAt15 == 'i') {
                    str2 = "interface";
                } else if (cCharAt15 == 'p') {
                    str2 = "protected";
                } else {
                    if (cCharAt15 == 't') {
                        str2 = "transient";
                    }
                    str2 = null;
                    i = 0;
                    if (str2 == null) {
                    }
                }
                i = 128;
                if (str2 == null) {
                }
                break;
            case 10:
                char cCharAt16 = str.charAt(1);
                if (cCharAt16 == 'm') {
                    str2 = "implements";
                    i = 128;
                    if (str2 == null) {
                    }
                } else {
                    if (cCharAt16 == 'n') {
                        i = 53;
                        str2 = "instanceof";
                    }
                    if (str2 == null) {
                    }
                }
                break;
            case 12:
                str2 = "synchronized";
                i = 128;
                if (str2 == null) {
                }
                break;
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 & 255;
    }

    private final String substring(int i, int i2) {
        String str = this.sourceString;
        if (str != null) {
            return str.substring(i, i2);
        }
        return new String(this.sourceBuffer, i, i2 - i);
    }

    private void ungetChar(int i) throws RuntimeException {
        int i2 = this.ungetCursor;
        if (i2 != 0 && this.ungetBuffer[i2 - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.ungetBuffer;
        int i3 = this.ungetCursor;
        this.ungetCursor = i3 + 1;
        iArr[i3] = i;
        this.cursor--;
    }

    private void ungetCharIgnoreLineEnd(int i) {
        int[] iArr = this.ungetBuffer;
        int i2 = this.ungetCursor;
        this.ungetCursor = i2 + 1;
        iArr[i2] = i;
        this.cursor--;
    }

    public final boolean eof() {
        return this.hitEOF;
    }

    public final String getAndResetCurrentComment() {
        if (this.sourceString != null) {
            if (isMarkingComment()) {
                Kit.codeBug();
            }
            return this.sourceString.substring(this.tokenBeg, this.tokenEnd);
        }
        if (!isMarkingComment()) {
            Kit.codeBug();
        }
        StringBuilder sb = new StringBuilder(this.commentPrefix);
        sb.append(this.sourceBuffer, this.commentCursor, getTokenLength() - this.commentPrefix.length());
        this.commentCursor = -1;
        return sb.toString();
    }

    public Token.CommentType getCommentType() {
        return this.commentType;
    }

    public int getCursor() {
        return this.cursor;
    }

    public int getFirstXMLToken() throws IOException {
        this.xmlOpenTagsCount = 0;
        this.xmlIsAttribute = false;
        this.xmlIsTagContent = false;
        if (!canUngetChar()) {
            return -1;
        }
        ungetChar(60);
        return getNextXMLToken();
    }

    public final String getLine() {
        int i;
        int i2 = this.sourceCursor;
        int i3 = this.lineEndChar;
        if (i3 >= 0) {
            i = i2 - 1;
            if (i3 == 10 && charAt(i - 1) == 13) {
                i--;
            }
        } else {
            int i4 = i2 - this.lineStart;
            while (true) {
                int iCharAt = charAt(this.lineStart + i4);
                if (iCharAt == -1 || ScriptRuntime.isJSLineTerminator(iCharAt)) {
                    break;
                }
                i4++;
            }
            i = i4 + this.lineStart;
        }
        return substring(this.lineStart, i);
    }

    public final int getLineno() {
        return this.lineno;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0154, code lost:
    
        r10.stringBufferTop = 0;
        r10.string = null;
        r10.parser.addError("msg.XML.bad.form");
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x015d, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getNextXMLToken() throws IOException {
        this.tokenBeg = this.cursor;
        this.stringBufferTop = 0;
        while (true) {
            int i = getChar();
            if (i == -1) {
                this.tokenEnd = this.cursor;
                this.stringBufferTop = 0;
                this.string = null;
                this.parser.addError("msg.XML.bad.form");
                return -1;
            }
            if (this.xmlIsTagContent) {
                if (i == 9 || i == 10 || i == 13 || i == 32) {
                    addToString(i);
                } else if (i == 34 || i == 39) {
                    addToString(i);
                    if (!readQuotedString(i)) {
                        return -1;
                    }
                } else if (i == 47) {
                    addToString(i);
                    if (peekChar() == 62) {
                        addToString(getChar());
                        this.xmlIsTagContent = false;
                        this.xmlOpenTagsCount--;
                    }
                } else {
                    if (i == 123) {
                        ungetChar(i);
                        this.string = getStringFromBuffer();
                        return 146;
                    }
                    if (i == 61) {
                        addToString(i);
                        this.xmlIsAttribute = true;
                    } else if (i != 62) {
                        addToString(i);
                        this.xmlIsAttribute = false;
                    } else {
                        addToString(i);
                        this.xmlIsTagContent = false;
                        this.xmlIsAttribute = false;
                    }
                }
                if (!this.xmlIsTagContent && this.xmlOpenTagsCount == 0) {
                    this.string = getStringFromBuffer();
                    return 149;
                }
            } else if (i == 60) {
                addToString(i);
                int iPeekChar = peekChar();
                if (iPeekChar == 33) {
                    addToString(getChar());
                    int iPeekChar2 = peekChar();
                    if (iPeekChar2 == 45) {
                        addToString(getChar());
                        int i2 = getChar();
                        if (i2 != 45) {
                            this.stringBufferTop = 0;
                            this.string = null;
                            this.parser.addError("msg.XML.bad.form");
                            return -1;
                        }
                        addToString(i2);
                        if (!readXmlComment()) {
                            return -1;
                        }
                    } else if (iPeekChar2 == 91) {
                        addToString(getChar());
                        if (getChar() != 67 || getChar() != 68 || getChar() != 65 || getChar() != 84 || getChar() != 65 || getChar() != 91) {
                            break;
                        }
                        addToString(67);
                        addToString(68);
                        addToString(65);
                        addToString(84);
                        addToString(65);
                        addToString(91);
                        if (!readCDATA()) {
                            return -1;
                        }
                    } else if (!readEntity()) {
                        return -1;
                    }
                } else if (iPeekChar == 47) {
                    addToString(getChar());
                    int i3 = this.xmlOpenTagsCount;
                    if (i3 == 0) {
                        this.stringBufferTop = 0;
                        this.string = null;
                        this.parser.addError("msg.XML.bad.form");
                        return -1;
                    }
                    this.xmlIsTagContent = true;
                    this.xmlOpenTagsCount = i3 - 1;
                } else if (iPeekChar != 63) {
                    this.xmlIsTagContent = true;
                    this.xmlOpenTagsCount++;
                } else {
                    addToString(getChar());
                    if (!readPI()) {
                        return -1;
                    }
                }
            } else {
                if (i == 123) {
                    ungetChar(i);
                    this.string = getStringFromBuffer();
                    return 146;
                }
                addToString(i);
            }
        }
    }

    public final double getNumber() {
        return this.number;
    }

    public final int getOffset() {
        int i = this.sourceCursor - this.lineStart;
        return this.lineEndChar >= 0 ? i - 1 : i;
    }

    public final char getQuoteChar() {
        return (char) this.quoteChar;
    }

    public final String getSourceString() {
        return this.sourceString;
    }

    public final String getString() {
        return this.string;
    }

    /* JADX WARN: Removed duplicated region for block: B:216:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0295 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:217:0x02a4 -> B:209:0x0288). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int getToken() throws IOException {
        int i;
        boolean z;
        boolean zIsJavaIdentifierStart;
        boolean z2;
        int i2;
        boolean z3;
        double dStringPrefixToNumber;
        int iXDigitToInt;
        int i3;
        boolean z4;
        int i4;
        int i5;
        do {
            i = getChar();
            if (i == -1) {
                int i6 = this.cursor;
                this.tokenBeg = i6 - 1;
                this.tokenEnd = i6;
                return 0;
            }
            z = true;
            if (i == 10) {
                this.dirtyLine = false;
                int i7 = this.cursor;
                this.tokenBeg = i7 - 1;
                this.tokenEnd = i7;
                return 1;
            }
        } while (isJSSpace(i));
        if (i != 45) {
            this.dirtyLine = true;
        }
        int i8 = this.cursor;
        this.tokenBeg = i8 - 1;
        this.tokenEnd = i8;
        if (i == 64) {
            return 148;
        }
        if (i == 92) {
            i = getChar();
            if (i == 117) {
                this.stringBufferTop = 0;
                zIsJavaIdentifierStart = true;
                z2 = true;
                if (!zIsJavaIdentifierStart) {
                    boolean z5 = z2;
                    while (true) {
                        if (z2) {
                            int iXDigitToInt2 = 0;
                            for (int i9 = 0; i9 != 4; i9++) {
                                iXDigitToInt2 = Kit.xDigitToInt(getChar(), iXDigitToInt2);
                                if (iXDigitToInt2 < 0) {
                                    break;
                                }
                            }
                            if (iXDigitToInt2 < 0) {
                                this.parser.addError("msg.invalid.escape");
                                return -1;
                            }
                            addToString(iXDigitToInt2);
                            z2 = false;
                        } else {
                            i5 = getChar();
                            if (i5 == 92) {
                                int i10 = getChar();
                                if (i10 != 117) {
                                    this.parser.addError("msg.illegal.character", i10);
                                    return -1;
                                }
                                z5 = true;
                                z2 = true;
                            } else {
                                if (i5 == -1 || i5 == 65279 || !Character.isJavaIdentifierPart((char) i5)) {
                                    break;
                                }
                                addToString(i5);
                            }
                        }
                    }
                    ungetChar(i5);
                    String stringFromBuffer = getStringFromBuffer();
                    if (!z5) {
                        int iStringToKeyword = stringToKeyword(stringFromBuffer, this.parser.compilerEnv.getLanguageVersion(), this.parser.inUseStrictDirective());
                        if (iStringToKeyword != 0) {
                            if ((iStringToKeyword == 154 || iStringToKeyword == 73) && this.parser.compilerEnv.getLanguageVersion() < 170) {
                                this.string = iStringToKeyword == 154 ? "let" : "yield";
                                iStringToKeyword = 39;
                            }
                            this.string = (String) this.allStrings.intern(stringFromBuffer);
                            if (iStringToKeyword != 128 || this.parser.compilerEnv.getLanguageVersion() >= 200 || !this.parser.compilerEnv.isReservedKeywordAsIdentifier()) {
                                return iStringToKeyword;
                            }
                        }
                    } else if (isKeyword(stringFromBuffer, this.parser.compilerEnv.getLanguageVersion(), this.parser.inUseStrictDirective())) {
                        stringFromBuffer = convertLastCharToHex(stringFromBuffer);
                    }
                    this.string = (String) this.allStrings.intern(stringFromBuffer);
                    return 39;
                }
                if (isDigit(i) || (i == 46 && isDigit(peekChar()))) {
                    this.stringBufferTop = 0;
                    this.isBinary = false;
                    this.isOctal = false;
                    this.isOldOctal = false;
                    this.isHex = false;
                    boolean z6 = this.parser.compilerEnv.getLanguageVersion() >= 200;
                    if (i != 48) {
                        i2 = 10;
                    } else {
                        i = getChar();
                        if (i == 120 || i == 88) {
                            this.isHex = true;
                            i = getChar();
                            i2 = 16;
                        } else {
                            if (z6 && (i == 111 || i == 79)) {
                                this.isOctal = true;
                                i = getChar();
                            } else if (z6 && (i == 98 || i == 66)) {
                                this.isBinary = true;
                                i = getChar();
                                i2 = 2;
                            } else if (isDigit(i)) {
                                this.isOldOctal = true;
                            } else {
                                addToString(48);
                                i2 = 10;
                            }
                            i2 = 8;
                        }
                    }
                    if (i2 == 16) {
                        z3 = true;
                        while (Kit.xDigitToInt(i, 0) >= 0) {
                            addToString(i);
                            i = getChar();
                            z3 = false;
                        }
                    } else {
                        z3 = true;
                        while (48 <= i && i <= 57) {
                            if (i2 != 8 || i < 56) {
                                if (i2 == 2 && i >= 50) {
                                    this.parser.addError("msg.caught.nfe");
                                    return -1;
                                }
                            } else {
                                if (!this.isOldOctal) {
                                    this.parser.addError("msg.caught.nfe");
                                    return -1;
                                }
                                this.parser.addWarning("msg.bad.octal.literal", i == 56 ? "8" : "9");
                                i2 = 10;
                            }
                            addToString(i);
                            i = getChar();
                            z3 = false;
                        }
                    }
                    if (z3 && (this.isBinary || this.isOctal || this.isHex)) {
                        this.parser.addError("msg.caught.nfe");
                        return -1;
                    }
                    if (i2 == 10 && (i == 46 || i == 101 || i == 69)) {
                        if (i == 46) {
                            do {
                                addToString(i);
                                i = getChar();
                            } while (isDigit(i));
                        }
                        if (i == 101 || i == 69) {
                            addToString(i);
                            i = getChar();
                            if (i == 43 || i == 45) {
                                addToString(i);
                                i = getChar();
                            }
                            if (!isDigit(i)) {
                                this.parser.addError("msg.missing.exponent");
                                return -1;
                            }
                            do {
                                addToString(i);
                                i = getChar();
                            } while (isDigit(i));
                        }
                        z = false;
                    }
                    ungetChar(i);
                    String stringFromBuffer2 = getStringFromBuffer();
                    this.string = stringFromBuffer2;
                    if (i2 != 10 || z) {
                        dStringPrefixToNumber = ScriptRuntime.stringPrefixToNumber(stringFromBuffer2, 0, i2);
                    } else {
                        try {
                            dStringPrefixToNumber = Double.parseDouble(stringFromBuffer2);
                        } catch (NumberFormatException unused) {
                            this.parser.addError("msg.caught.nfe");
                            return -1;
                        }
                    }
                    this.number = dStringPrefixToNumber;
                    return 40;
                }
                if (i == 34 || i == 39 || i == 96) {
                    this.quoteChar = i;
                    this.stringBufferTop = 0;
                    int i11 = getChar(false);
                    while (i11 != this.quoteChar) {
                        if (i11 == 10 || i11 == -1) {
                            ungetChar(i11);
                            this.tokenEnd = this.cursor;
                            this.parser.addError("msg.unterminated.string.lit");
                            return -1;
                        }
                        if (i11 == 92) {
                            i11 = getChar();
                            if (i11 != 10) {
                                if (i11 == 98) {
                                    i11 = 8;
                                } else if (i11 == 102) {
                                    i11 = 12;
                                } else if (i11 == 110) {
                                    i11 = 10;
                                } else if (i11 == 114) {
                                    i11 = 13;
                                } else if (i11 != 120) {
                                    switch (i11) {
                                        case 116:
                                            i11 = 9;
                                            break;
                                        case 117:
                                            int i12 = this.stringBufferTop;
                                            addToString(117);
                                            iXDigitToInt = 0;
                                            for (int i13 = 0; i13 != 4; i13++) {
                                                int i14 = getChar();
                                                iXDigitToInt = Kit.xDigitToInt(i14, iXDigitToInt);
                                                if (iXDigitToInt < 0) {
                                                    i11 = i14;
                                                    break;
                                                } else {
                                                    addToString(i14);
                                                }
                                            }
                                            this.stringBufferTop = i12;
                                            i11 = iXDigitToInt;
                                            break;
                                        case 118:
                                            i11 = 11;
                                            break;
                                        default:
                                            if (48 <= i11 && i11 < 56) {
                                                i11 -= 48;
                                                int i15 = getChar();
                                                if (48 <= i15 && i15 < 56) {
                                                    i11 = ((i11 * 8) + i15) - 48;
                                                    i15 = getChar();
                                                    if (48 <= i15 && i15 < 56 && i11 <= 31) {
                                                        i11 = ((i11 * 8) + i15) - 48;
                                                        i15 = getChar();
                                                    }
                                                }
                                                ungetChar(i15);
                                                break;
                                            }
                                            break;
                                    }
                                } else {
                                    i11 = getChar();
                                    int iXDigitToInt3 = Kit.xDigitToInt(i11, 0);
                                    if (iXDigitToInt3 < 0) {
                                        addToString(120);
                                    } else {
                                        int i16 = getChar();
                                        iXDigitToInt = Kit.xDigitToInt(i16, iXDigitToInt3);
                                        if (iXDigitToInt < 0) {
                                            addToString(120);
                                            addToString(i11);
                                            i11 = i16;
                                        } else {
                                            i11 = iXDigitToInt;
                                        }
                                    }
                                }
                                addToString(i11);
                                i11 = getChar(false);
                            } else {
                                i11 = getChar();
                            }
                        }
                        addToString(i11);
                        i11 = getChar(false);
                    }
                    this.string = (String) this.allStrings.intern(getStringFromBuffer());
                    return 41;
                }
                if (i == 33) {
                    if (matchChar(61)) {
                        return matchChar(61) ? 47 : 13;
                    }
                    return 26;
                }
                if (i == 91) {
                    return 84;
                }
                if (i == 37) {
                    return matchChar(61) ? 102 : 25;
                }
                if (i == 38) {
                    if (matchChar(38)) {
                        return 106;
                    }
                    return matchChar(61) ? 94 : 11;
                }
                if (i == 93) {
                    return 85;
                }
                if (i == 94) {
                    return matchChar(61) ? 93 : 10;
                }
                switch (i) {
                    case 40:
                        return 88;
                    case 41:
                        return 89;
                    case 42:
                        return matchChar(61) ? 100 : 23;
                    case 43:
                        if (matchChar(61)) {
                            return 98;
                        }
                        return matchChar(43) ? 107 : 21;
                    case 44:
                        return 90;
                    case 45:
                        if (matchChar(61)) {
                            i3 = 99;
                        } else if (!matchChar(45)) {
                            i3 = 22;
                        } else {
                            if (!this.dirtyLine && matchChar(62)) {
                                markCommentStart("--");
                                skipLine();
                                this.commentType = Token.CommentType.HTML;
                                return 162;
                            }
                            i3 = 108;
                        }
                        this.dirtyLine = true;
                        return i3;
                    case 46:
                        if (matchChar(46)) {
                            return 144;
                        }
                        return matchChar(40) ? 147 : 109;
                    case 47:
                        markCommentStart();
                        if (matchChar(47)) {
                            this.tokenBeg = this.cursor - 2;
                            skipLine();
                            this.commentType = Token.CommentType.LINE;
                            return 162;
                        }
                        if (!matchChar(42)) {
                            return matchChar(61) ? 101 : 24;
                        }
                        this.tokenBeg = this.cursor - 2;
                        if (matchChar(42)) {
                            this.commentType = Token.CommentType.JSDOC;
                            z4 = true;
                            while (true) {
                                i4 = getChar();
                                if (i4 == -1) {
                                    this.tokenEnd = this.cursor - 1;
                                    this.parser.addError("msg.unterminated.comment");
                                    return 162;
                                }
                                if (i4 != 42) {
                                    if (i4 != 47) {
                                        this.tokenEnd = this.cursor;
                                        z4 = false;
                                    } else if (z4) {
                                        this.tokenEnd = this.cursor;
                                        return 162;
                                    }
                                }
                            }
                        } else {
                            this.commentType = Token.CommentType.BLOCK_COMMENT;
                            z4 = false;
                            while (true) {
                                i4 = getChar();
                                if (i4 == -1) {
                                }
                            }
                        }
                    default:
                        switch (i) {
                            case 58:
                                return matchChar(58) ? 145 : 104;
                            case 59:
                                return 83;
                            case 60:
                                if (matchChar(33)) {
                                    if (matchChar(45)) {
                                        if (matchChar(45)) {
                                            this.tokenBeg = this.cursor - 4;
                                            skipLine();
                                            this.commentType = Token.CommentType.HTML;
                                            return 162;
                                        }
                                        ungetCharIgnoreLineEnd(45);
                                    }
                                    ungetCharIgnoreLineEnd(33);
                                }
                                return matchChar(60) ? matchChar(61) ? 95 : 18 : matchChar(61) ? 15 : 14;
                            case 61:
                                return matchChar(61) ? matchChar(61) ? 46 : 12 : matchChar(62) ? 165 : 91;
                            case 62:
                                return matchChar(62) ? matchChar(62) ? matchChar(61) ? 97 : 20 : matchChar(61) ? 96 : 19 : matchChar(61) ? 17 : 16;
                            case 63:
                                return 103;
                            default:
                                switch (i) {
                                    case 123:
                                        return 86;
                                    case 124:
                                        if (matchChar(124)) {
                                            return 105;
                                        }
                                        return matchChar(61) ? 92 : 9;
                                    case 125:
                                        return 87;
                                    case 126:
                                        return 27;
                                    default:
                                        this.parser.addError("msg.illegal.character", i);
                                        return -1;
                                }
                        }
                }
            } else {
                ungetChar(i);
                i = 92;
                zIsJavaIdentifierStart = false;
            }
        } else {
            zIsJavaIdentifierStart = Character.isJavaIdentifierStart((char) i);
            if (zIsJavaIdentifierStart) {
                this.stringBufferTop = 0;
                addToString(i);
            }
        }
        z2 = false;
        if (!zIsJavaIdentifierStart) {
        }
    }

    public int getTokenBeg() {
        return this.tokenBeg;
    }

    public int getTokenEnd() {
        return this.tokenEnd;
    }

    public int getTokenLength() {
        return this.tokenEnd - this.tokenBeg;
    }

    public final boolean isNumberBinary() {
        return this.isBinary;
    }

    public final boolean isNumberHex() {
        return this.isHex;
    }

    public final boolean isNumberOctal() {
        return this.isOctal;
    }

    public final boolean isNumberOldOctal() {
        return this.isOldOctal;
    }

    public boolean isXMLAttribute() {
        return this.xmlIsAttribute;
    }

    public String readAndClearRegExpFlags() {
        String str = this.regExpFlags;
        this.regExpFlags = null;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a7, code lost:
    
        ungetChar(r2);
        r5.tokenEnd = r5.cursor - 1;
        r5.string = new java.lang.String(r5.stringBuffer, 0, r5.stringBufferTop);
        r5.parser.reportError("msg.unterminated.re.lit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c1, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void readRegExp(int i) throws IOException {
        int i2 = this.tokenBeg;
        this.stringBufferTop = 0;
        if (i == 101) {
            addToString(61);
        } else if (i != 24) {
            Kit.codeBug();
        }
        boolean z = false;
        while (true) {
            int i3 = getChar();
            if (i3 == 47 && !z) {
                int i4 = this.stringBufferTop;
                while (true) {
                    if (!matchChar(103)) {
                        if (!matchChar(105)) {
                            if (!matchChar(109)) {
                                if (!matchChar(121)) {
                                    break;
                                } else {
                                    addToString(121);
                                }
                            } else {
                                addToString(109);
                            }
                        } else {
                            addToString(105);
                        }
                    } else {
                        addToString(103);
                    }
                }
                this.tokenEnd = i2 + this.stringBufferTop + 2;
                if (isAlpha(peekChar())) {
                    this.parser.reportError("msg.invalid.re.flag");
                }
                this.string = new String(this.stringBuffer, 0, i4);
                this.regExpFlags = new String(this.stringBuffer, i4, this.stringBufferTop - i4);
                return;
            }
            if (i3 == 10 || i3 == -1) {
                break;
            }
            if (i3 == 92) {
                addToString(i3);
                i3 = getChar();
            } else if (i3 == 91) {
                z = true;
            } else if (i3 == 93) {
                z = false;
            }
            addToString(i3);
        }
    }

    public String tokenToString(int i) {
        return "";
    }

    private int getChar(boolean z) throws IOException {
        char cCharAt;
        int i = this.ungetCursor;
        if (i != 0) {
            this.cursor++;
            int[] iArr = this.ungetBuffer;
            int i2 = i - 1;
            this.ungetCursor = i2;
            return iArr[i2];
        }
        while (true) {
            String str = this.sourceString;
            if (str != null) {
                int i3 = this.sourceCursor;
                if (i3 == this.sourceEnd) {
                    this.hitEOF = true;
                    return -1;
                }
                this.cursor++;
                this.sourceCursor = i3 + 1;
                cCharAt = str.charAt(i3);
            } else {
                if (this.sourceCursor == this.sourceEnd && !fillSourceBuffer()) {
                    this.hitEOF = true;
                    return -1;
                }
                this.cursor++;
                char[] cArr = this.sourceBuffer;
                int i4 = this.sourceCursor;
                this.sourceCursor = i4 + 1;
                cCharAt = cArr[i4];
            }
            int i5 = this.lineEndChar;
            if (i5 >= 0) {
                if (i5 == 13 && cCharAt == '\n') {
                    this.lineEndChar = 10;
                } else {
                    this.lineEndChar = -1;
                    this.lineStart = this.sourceCursor - 1;
                    this.lineno++;
                }
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.lineEndChar = cCharAt;
            } else {
                if (cCharAt == 65279) {
                    return cCharAt;
                }
                if (!z || !isJSFormatChar(cCharAt)) {
                    break;
                }
            }
        }
        if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
            return cCharAt;
        }
        this.lineEndChar = cCharAt;
        return 10;
    }

    private void markCommentStart(String str) {
        if (!this.parser.compilerEnv.isRecordingComments() || this.sourceReader == null) {
            return;
        }
        this.commentPrefix = str;
        this.commentCursor = this.sourceCursor - 1;
    }

    public final String getLine(int i, int[] iArr) {
        int i2 = (this.cursor + this.ungetCursor) - i;
        int i3 = this.sourceCursor;
        if (i2 > i3) {
            return null;
        }
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            int iCharAt = charAt(i3 - 1);
            if (ScriptRuntime.isJSLineTerminator(iCharAt)) {
                if (iCharAt == 10 && charAt(i3 - 2) == 13) {
                    i2--;
                    i3--;
                }
                i4++;
                i5 = i3 - 1;
            }
            i2--;
            i3--;
        }
        int i6 = 0;
        while (true) {
            if (i3 <= 0) {
                i3 = 0;
                break;
            }
            if (ScriptRuntime.isJSLineTerminator(charAt(i3 - 1))) {
                break;
            }
            i3--;
            i6++;
        }
        iArr[0] = (this.lineno - i4) + (this.lineEndChar >= 0 ? 1 : 0);
        iArr[1] = i6;
        if (i4 == 0) {
            return getLine();
        }
        return substring(i3, i5);
    }
}
