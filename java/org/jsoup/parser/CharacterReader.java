package org.jsoup.parser;

import android.support.v4.l80;
import android.support.v4.y41;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Locale;
import org.jsoup.UncheckedIOException;
import org.jsoup.helper.Validate;

/* loaded from: classes3.dex */
public final class CharacterReader {
    public static final char EOF = 65535;
    public static final int maxBufferLen = 32768;
    private static final int maxStringCacheLen = 12;
    private static final int minReadAheadLen = 1024;
    public static final int readAheadLimit = 24576;
    private static final int stringCacheSize = 512;
    private int bufLength;
    private int bufMark;
    private int bufPos;
    private int bufSplitPoint;
    private char[] charBuf;
    private int lastIcIndex;

    @y41
    private String lastIcSeq;
    private int lineNumberOffset;

    @y41
    private ArrayList<Integer> newlinePositions;
    private boolean readFully;
    private Reader reader;
    private int readerPos;
    private String[] stringCache;

    public CharacterReader(Reader reader, int i) throws IOException {
        this.bufMark = -1;
        this.stringCache = new String[512];
        this.newlinePositions = null;
        this.lineNumberOffset = 1;
        Validate.notNull(reader);
        Validate.isTrue(reader.markSupported());
        this.reader = reader;
        this.charBuf = new char[Math.min(i, 32768)];
        bufferUp();
    }

    private void bufferUp() throws IOException {
        int i;
        int i2;
        boolean z;
        if (this.readFully || (i = this.bufPos) < this.bufSplitPoint) {
            return;
        }
        int i3 = this.bufMark;
        if (i3 != -1) {
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        try {
            long j = i;
            long jSkip = this.reader.skip(j);
            this.reader.mark(32768);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 > 1024) {
                    break;
                }
                Reader reader = this.reader;
                char[] cArr = this.charBuf;
                int i5 = reader.read(cArr, i4, cArr.length - i4);
                if (i5 == -1) {
                    this.readFully = true;
                }
                if (i5 <= 0) {
                    break;
                } else {
                    i4 += i5;
                }
            }
            this.reader.reset();
            if (i4 > 0) {
                if (jSkip != j) {
                    z = false;
                }
                Validate.isTrue(z);
                this.bufLength = i4;
                this.readerPos += i;
                this.bufPos = i2;
                if (this.bufMark != -1) {
                    this.bufMark = 0;
                }
                this.bufSplitPoint = Math.min(i4, readAheadLimit);
            }
            scanBufferForNewlines();
            this.lastIcSeq = null;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private static String cacheString(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + cArr[i + i4];
        }
        int i5 = i3 & 511;
        String str = strArr[i5];
        if (str != null && rangeEquals(cArr, i, i2, str)) {
            return str;
        }
        String str2 = new String(cArr, i, i2);
        strArr[i5] = str2;
        return str2;
    }

    private boolean isEmptyNoBufferUp() {
        return this.bufPos >= this.bufLength;
    }

    private int lineNumIndex() {
        if (isTrackNewlines()) {
            return Collections.binarySearch(this.newlinePositions, Integer.valueOf(pos()));
        }
        return 0;
    }

    public static boolean rangeEquals(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:496)
        */
    private void scanBufferForNewlines() {
        /*
            r3 = this;
            boolean r0 = r3.isTrackNewlines()
            if (r0 != 0) goto L7
            return
        L7:
            int r0 = r3.lineNumberOffset
            java.util.ArrayList<java.lang.Integer> r1 = r3.newlinePositions
            int r1 = r1.size()
            int r0 = r0 + r1
            r3.lineNumberOffset = r0
            java.util.ArrayList<java.lang.Integer> r0 = r3.newlinePositions
            int r0 = r0.size()
            r1 = -1
            if (r0 <= 0) goto L2e
            java.util.ArrayList<java.lang.Integer> r0 = r3.newlinePositions
            int r2 = r0.size()
            int r2 = r2 + (-1)
            java.lang.Object r0 = r0.get(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            goto L2f
        L2e:
            r0 = -1
        L2f:
            java.util.ArrayList<java.lang.Integer> r2 = r3.newlinePositions
            r2.clear()
            if (r0 == r1) goto L45
            java.util.ArrayList<java.lang.Integer> r1 = r3.newlinePositions
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1.add(r0)
            int r0 = r3.lineNumberOffset
            int r0 = r0 + (-1)
            r3.lineNumberOffset = r0
        L45:
            int r0 = r3.bufPos
        L47:
            int r1 = r3.bufLength
            if (r0 >= r1) goto L64
            char[] r1 = r3.charBuf
            char r1 = r1[r0]
            r2 = 10
            if (r1 != r2) goto L61
            java.util.ArrayList<java.lang.Integer> r1 = r3.newlinePositions
            int r2 = r3.readerPos
            int r2 = r2 + 1
            int r2 = r2 + r0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1.add(r2)
        L61:
            int r0 = r0 + 1
            goto L47
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.scanBufferForNewlines():void");
    }

    public void advance() {
        this.bufPos++;
    }

    public void close() {
        Reader reader = this.reader;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.reader = null;
            this.charBuf = null;
            this.stringCache = null;
            throw th;
        }
        this.reader = null;
        this.charBuf = null;
        this.stringCache = null;
    }

    public int columnNumber() {
        int iLineNumIndex;
        if (!isTrackNewlines() || (iLineNumIndex = lineNumIndex()) == -1) {
            int iPos = pos();
            return iPos + 1;
        }
        if (iLineNumIndex < 0) {
            iLineNumIndex = Math.abs(iLineNumIndex) - 2;
        }
        return (pos() - this.newlinePositions.get(iLineNumIndex).intValue()) + 1;
    }

    public char consume() throws IOException {
        bufferUp();
        char c = isEmptyNoBufferUp() ? (char) 65535 : this.charBuf[this.bufPos];
        this.bufPos++;
        return c;
    }

    public String consumeAttributeQuoted(boolean z) {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0) {
                break;
            }
            if (c != '\"') {
                if (c == '&') {
                    break;
                }
                if (c == '\'') {
                    if (!z) {
                        break;
                        break;
                    }
                    break;
                }
                continue;
                i3++;
            }
            if (!z) {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeData() {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeDigitSequence() throws IOException {
        int i;
        char c;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (c = this.charBuf[i]) < '0' || c > '9') {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public String consumeHexSequence() throws IOException {
        int i;
        char c;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (((c = this.charBuf[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public String consumeLetterSequence() throws IOException {
        char c;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c = this.charBuf[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.bufPos++;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeLetterThenDigitSequence() throws IOException {
        char c;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c = this.charBuf[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.bufPos++;
        }
        while (!isEmptyNoBufferUp()) {
            char[] cArr = this.charBuf;
            int i3 = this.bufPos;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.bufPos = i3 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeRawData() {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '<') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeTagName() throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ' || c == '/' || c == '<' || c == '>') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeTo(char c) throws IOException {
        int iNextIndexOf = nextIndexOf(c);
        if (iNextIndexOf == -1) {
            return consumeToEnd();
        }
        String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
        this.bufPos += iNextIndexOf;
        return strCacheString;
    }

    public String consumeToAny(char... cArr) throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeToAnySorted(char... cArr) throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeToEnd() throws IOException {
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String strCacheString = cacheString(cArr, strArr, i, this.bufLength - i);
        this.bufPos = this.bufLength;
        return strCacheString;
    }

    public boolean containsIgnoreCase(String str) throws IOException {
        if (str.equals(this.lastIcSeq)) {
            int i = this.lastIcIndex;
            if (i == -1) {
                return false;
            }
            if (i >= this.bufPos) {
                return true;
            }
        }
        this.lastIcSeq = str;
        Locale locale = Locale.ENGLISH;
        int iNextIndexOf = nextIndexOf(str.toLowerCase(locale));
        if (iNextIndexOf > -1) {
            this.lastIcIndex = this.bufPos + iNextIndexOf;
            return true;
        }
        int iNextIndexOf2 = nextIndexOf(str.toUpperCase(locale));
        boolean z = iNextIndexOf2 > -1;
        this.lastIcIndex = z ? this.bufPos + iNextIndexOf2 : -1;
        return z;
    }

    public char current() throws IOException {
        bufferUp();
        if (isEmptyNoBufferUp()) {
            return (char) 65535;
        }
        return this.charBuf[this.bufPos];
    }

    public String cursorPos() {
        return lineNumber() + ":" + columnNumber();
    }

    public boolean isEmpty() throws IOException {
        bufferUp();
        return this.bufPos >= this.bufLength;
    }

    public boolean isTrackNewlines() {
        return this.newlinePositions != null;
    }

    public int lineNumber() {
        if (!isTrackNewlines()) {
            return 1;
        }
        int iLineNumIndex = lineNumIndex();
        return iLineNumIndex == -1 ? this.lineNumberOffset : iLineNumIndex < 0 ? (Math.abs(iLineNumIndex) + this.lineNumberOffset) - 1 : iLineNumIndex + this.lineNumberOffset + 1;
    }

    public void mark() throws IOException {
        if (this.bufLength - this.bufPos < 1024) {
            this.bufSplitPoint = 0;
        }
        bufferUp();
        this.bufMark = this.bufPos;
    }

    public boolean matchConsume(String str) throws IOException {
        bufferUp();
        if (!matches(str)) {
            return false;
        }
        this.bufPos += str.length();
        return true;
    }

    public boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.bufPos += str.length();
        return true;
    }

    public boolean matches(char c) {
        return !isEmpty() && this.charBuf[this.bufPos] == c;
    }

    public boolean matchesAny(char... cArr) throws IOException {
        if (isEmpty()) {
            return false;
        }
        bufferUp();
        char c = this.charBuf[this.bufPos];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesAnySorted(char[] cArr) throws IOException {
        bufferUp();
        return !isEmpty() && Arrays.binarySearch(cArr, this.charBuf[this.bufPos]) >= 0;
    }

    public boolean matchesAsciiAlpha() {
        if (isEmpty()) {
            return false;
        }
        char c = this.charBuf[this.bufPos];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    public boolean matchesDigit() {
        char c;
        return !isEmpty() && (c = this.charBuf[this.bufPos]) >= '0' && c <= '9';
    }

    public boolean matchesIgnoreCase(String str) throws IOException {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.charBuf[this.bufPos + i])) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c = this.charBuf[this.bufPos];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    public int nextIndexOf(char c) throws IOException {
        bufferUp();
        for (int i = this.bufPos; i < this.bufLength; i++) {
            if (c == this.charBuf[i]) {
                return i - this.bufPos;
            }
        }
        return -1;
    }

    public int pos() {
        return this.readerPos + this.bufPos;
    }

    public void rewindToMark() {
        int i = this.bufMark;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.bufPos = i;
        unmark();
    }

    public String toString() {
        int i = this.bufLength;
        int i2 = this.bufPos;
        return i - i2 < 0 ? "" : new String(this.charBuf, i2, i - i2);
    }

    public void trackNewlines(boolean z) {
        if (z && this.newlinePositions == null) {
            this.newlinePositions = new ArrayList<>(l80.f3561break);
            scanBufferForNewlines();
        } else {
            if (z) {
                return;
            }
            this.newlinePositions = null;
        }
    }

    public void unconsume() {
        int i = this.bufPos;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
        }
        this.bufPos = i - 1;
    }

    public void unmark() {
        this.bufMark = -1;
    }

    public boolean matches(String str) throws IOException {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.charBuf[this.bufPos + i]) {
                return false;
            }
        }
        return true;
    }

    public boolean rangeEquals(int i, int i2, String str) {
        return rangeEquals(this.charBuf, i, i2, str);
    }

    public String consumeTo(String str) throws IOException {
        int iNextIndexOf = nextIndexOf(str);
        if (iNextIndexOf != -1) {
            String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
            this.bufPos += iNextIndexOf;
            return strCacheString;
        }
        if (this.bufLength - this.bufPos < str.length()) {
            return consumeToEnd();
        }
        int length = (this.bufLength - str.length()) + 1;
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String strCacheString2 = cacheString(cArr, strArr, i, length - i);
        this.bufPos = length;
        return strCacheString2;
    }

    public int nextIndexOf(CharSequence charSequence) throws IOException {
        bufferUp();
        char cCharAt = charSequence.charAt(0);
        int i = this.bufPos;
        while (i < this.bufLength) {
            if (cCharAt != this.charBuf[i]) {
                do {
                    i++;
                    if (i >= this.bufLength) {
                        break;
                    }
                } while (cCharAt != this.charBuf[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.bufLength;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.charBuf[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.bufPos;
                }
            }
            i = i2;
        }
        return -1;
    }

    public CharacterReader(Reader reader) {
        this(reader, 32768);
    }

    public CharacterReader(String str) {
        this(new StringReader(str), str.length());
    }
}
