package org.apache.commons.lang3.text;

import android.support.v4.v32;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cgoto;
import org.apache.commons.lang3.builder.Builder;

/* renamed from: org.apache.commons.lang3.text.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements CharSequence, Appendable, Serializable, Builder<String> {
    public static final int CAPACITY = 32;
    private static final long serialVersionUID = 7628716375283629643L;
    public char[] buffer;
    private String newLine;
    private String nullText;
    public int size;

    /* renamed from: org.apache.commons.lang3.text.if$for, reason: invalid class name */
    public class Cfor extends Writer {
        public Cfor() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) {
            Cif.this.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            Cif.this.append(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            Cif.this.append(cArr, i, i2);
        }

        @Override // java.io.Writer
        public void write(String str) {
            Cif.this.append(str);
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
            Cif.this.append(str, i, i2);
        }
    }

    /* renamed from: org.apache.commons.lang3.text.if$if, reason: invalid class name and collision with other inner class name */
    public class C0391if extends Ctry {
        public C0391if() {
        }

        @Override // org.apache.commons.lang3.text.Ctry
        public List<String> e(char[] cArr, int i, int i2) {
            if (cArr != null) {
                return super.e(cArr, i, i2);
            }
            Cif cif = Cif.this;
            return super.e(cif.buffer, 0, cif.size());
        }

        @Override // org.apache.commons.lang3.text.Ctry
        /* renamed from: this, reason: not valid java name */
        public String mo32554this() {
            String strMo32554this = super.mo32554this();
            return strMo32554this == null ? Cif.this.toString() : strMo32554this;
        }
    }

    public Cif() {
        this(32);
    }

    /* renamed from: do, reason: not valid java name */
    private void m32551do(int i, int i2, int i3) {
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i2, cArr, i, this.size - i2);
        this.size -= i3;
    }

    /* renamed from: for, reason: not valid java name */
    private void m32552for(int i, int i2, int i3, String str, int i4) {
        int i5 = (this.size - i3) + i4;
        if (i4 != i3) {
            ensureCapacity(i5);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i2, cArr, i + i4, this.size - i2);
            this.size = i5;
        }
        if (i4 > 0) {
            str.getChars(0, i4, this.buffer, i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Cif m32553if(Cnew cnew, String str, int i, int i2, int i3) {
        if (cnew != null && this.size != 0) {
            int length = str == null ? 0 : str.length();
            char[] cArr = this.buffer;
            int i4 = i;
            while (i4 < i2 && i3 != 0) {
                int iMo32569else = cnew.mo32569else(cArr, i4, i, i2);
                if (iMo32569else > 0) {
                    m32552for(i4, i4 + iMo32569else, iMo32569else, str, length);
                    i2 = (i2 - iMo32569else) + length;
                    i4 = (i4 + length) - 1;
                    if (i3 > 0) {
                        i3--;
                    }
                }
                i4++;
            }
        }
        return this;
    }

    public <T> Cif appendAll(T... tArr) {
        if (tArr != null && tArr.length > 0) {
            for (T t : tArr) {
                append(t);
            }
        }
        return this;
    }

    public Cif appendFixedWidthPadLeft(Object obj, int i, char c) {
        if (i > 0) {
            ensureCapacity(this.size + i);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i) {
                nullText.getChars(length - i, length, this.buffer, this.size);
            } else {
                int i2 = i - length;
                for (int i3 = 0; i3 < i2; i3++) {
                    this.buffer[this.size + i3] = c;
                }
                nullText.getChars(0, length, this.buffer, this.size + i2);
            }
            this.size += i;
        }
        return this;
    }

    public Cif appendFixedWidthPadRight(Object obj, int i, char c) {
        if (i > 0) {
            ensureCapacity(this.size + i);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i) {
                nullText.getChars(0, i, this.buffer, this.size);
            } else {
                int i2 = i - length;
                nullText.getChars(0, length, this.buffer, this.size);
                for (int i3 = 0; i3 < i2; i3++) {
                    this.buffer[this.size + length + i3] = c;
                }
            }
            this.size += i;
        }
        return this;
    }

    public Cif appendNewLine() {
        String str = this.newLine;
        if (str != null) {
            return append(str);
        }
        append(v32.f7063instanceof);
        return this;
    }

    public Cif appendNull() {
        String str = this.nullText;
        return str == null ? this : append(str);
    }

    public Cif appendPadding(int i, char c) {
        if (i >= 0) {
            ensureCapacity(this.size + i);
            for (int i2 = 0; i2 < i; i2++) {
                char[] cArr = this.buffer;
                int i3 = this.size;
                this.size = i3 + 1;
                cArr[i3] = c;
            }
        }
        return this;
    }

    public Cif appendSeparator(String str) {
        return appendSeparator(str, (String) null);
    }

    public Cif appendWithSeparators(Object[] objArr, String str) {
        if (objArr != null && objArr.length > 0) {
            String strM32396strictfp = Cgoto.m32396strictfp(str);
            append(objArr[0]);
            for (int i = 1; i < objArr.length; i++) {
                append(strM32396strictfp);
                append(objArr[i]);
            }
        }
        return this;
    }

    public Cif appendln(Object obj) {
        return append(obj).appendNewLine();
    }

    public Reader asReader() {
        return new Cdo();
    }

    public Ctry asTokenizer() {
        return new C0391if();
    }

    public Writer asWriter() {
        return new Cfor();
    }

    public int capacity() {
        return this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        if (i < 0 || i >= length()) {
            throw new StringIndexOutOfBoundsException(i);
        }
        return this.buffer[i];
    }

    public Cif clear() {
        this.size = 0;
        return this;
    }

    public boolean contains(char c) {
        char[] cArr = this.buffer;
        for (int i = 0; i < this.size; i++) {
            if (cArr[i] == c) {
                return true;
            }
        }
        return false;
    }

    public Cif delete(int i, int i2) {
        int iValidateRange = validateRange(i, i2);
        int i3 = iValidateRange - i;
        if (i3 > 0) {
            m32551do(i, iValidateRange, i3);
        }
        return this;
    }

    public Cif deleteAll(char c) {
        int i = 0;
        while (i < this.size) {
            if (this.buffer[i] == c) {
                int i2 = i;
                do {
                    i2++;
                    if (i2 >= this.size) {
                        break;
                    }
                } while (this.buffer[i2] == c);
                int i3 = i2 - i;
                m32551do(i, i2, i3);
                i = i2 - i3;
            }
            i++;
        }
        return this;
    }

    public Cif deleteCharAt(int i) {
        if (i < 0 || i >= this.size) {
            throw new StringIndexOutOfBoundsException(i);
        }
        m32551do(i, i + 1, 1);
        return this;
    }

    public Cif deleteFirst(char c) {
        int i = 0;
        while (true) {
            if (i >= this.size) {
                break;
            }
            if (this.buffer[i] == c) {
                m32551do(i, i + 1, 1);
                break;
            }
            i++;
        }
        return this;
    }

    public boolean endsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        int i = this.size;
        if (length > i) {
            return false;
        }
        int i2 = i - length;
        int i3 = 0;
        while (i3 < length) {
            if (this.buffer[i2] != str.charAt(i3)) {
                return false;
            }
            i3++;
            i2++;
        }
        return true;
    }

    public Cif ensureCapacity(int i) {
        char[] cArr = this.buffer;
        if (i > cArr.length) {
            char[] cArr2 = new char[i * 2];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public boolean equals(Cif cif) {
        if (this == cif) {
            return true;
        }
        int i = this.size;
        if (i != cif.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = cif.buffer;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (cArr[i2] != cArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public boolean equalsIgnoreCase(Cif cif) {
        if (this == cif) {
            return true;
        }
        int i = this.size;
        if (i != cif.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = cif.buffer;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            char c = cArr[i2];
            char c2 = cArr2[i2];
            if (c != c2 && Character.toUpperCase(c) != Character.toUpperCase(c2)) {
                return false;
            }
        }
        return true;
    }

    public char[] getChars(char[] cArr) {
        int length = length();
        if (cArr == null || cArr.length < length) {
            cArr = new char[length];
        }
        System.arraycopy(this.buffer, 0, cArr, 0, length);
        return cArr;
    }

    public String getNewLineText() {
        return this.newLine;
    }

    public String getNullText() {
        return this.nullText;
    }

    public int hashCode() {
        char[] cArr = this.buffer;
        int i = 0;
        for (int i2 = this.size - 1; i2 >= 0; i2--) {
            i = (i * 31) + cArr[i2];
        }
        return i;
    }

    public int indexOf(char c) {
        return indexOf(c, 0);
    }

    public Cif insert(int i, Object obj) {
        return obj == null ? insert(i, this.nullText) : insert(i, obj.toString());
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int lastIndexOf(char c) {
        return lastIndexOf(c, this.size - 1);
    }

    public String leftString(int i) {
        if (i <= 0) {
            return "";
        }
        int i2 = this.size;
        return i >= i2 ? new String(this.buffer, 0, i2) : new String(this.buffer, 0, i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.size;
    }

    public String midString(int i, int i2) {
        int i3;
        if (i < 0) {
            i = 0;
        }
        return (i2 <= 0 || i >= (i3 = this.size)) ? "" : i3 <= i + i2 ? new String(this.buffer, i, i3 - i) : new String(this.buffer, i, i2);
    }

    public Cif minimizeCapacity() {
        if (this.buffer.length > length()) {
            char[] cArr = this.buffer;
            char[] cArr2 = new char[length()];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public Cif replace(int i, int i2, String str) {
        int iValidateRange = validateRange(i, i2);
        m32552for(i, iValidateRange, iValidateRange - i, str, str == null ? 0 : str.length());
        return this;
    }

    public Cif replaceAll(char c, char c2) {
        if (c != c2) {
            for (int i = 0; i < this.size; i++) {
                char[] cArr = this.buffer;
                if (cArr[i] == c) {
                    cArr[i] = c2;
                }
            }
        }
        return this;
    }

    public Cif replaceFirst(char c, char c2) {
        if (c != c2) {
            int i = 0;
            while (true) {
                if (i >= this.size) {
                    break;
                }
                char[] cArr = this.buffer;
                if (cArr[i] == c) {
                    cArr[i] = c2;
                    break;
                }
                i++;
            }
        }
        return this;
    }

    public Cif reverse() {
        int i = this.size;
        if (i == 0) {
            return this;
        }
        int i2 = i / 2;
        char[] cArr = this.buffer;
        int i3 = 0;
        int i4 = i - 1;
        while (i3 < i2) {
            char c = cArr[i3];
            cArr[i3] = cArr[i4];
            cArr[i4] = c;
            i3++;
            i4--;
        }
        return this;
    }

    public String rightString(int i) {
        if (i <= 0) {
            return "";
        }
        int i2 = this.size;
        return i >= i2 ? new String(this.buffer, 0, i2) : new String(this.buffer, i2 - i, i);
    }

    public Cif setCharAt(int i, char c) {
        if (i < 0 || i >= length()) {
            throw new StringIndexOutOfBoundsException(i);
        }
        this.buffer[i] = c;
        return this;
    }

    public Cif setLength(int i) {
        if (i < 0) {
            throw new StringIndexOutOfBoundsException(i);
        }
        int i2 = this.size;
        if (i < i2) {
            this.size = i;
        } else if (i > i2) {
            ensureCapacity(i);
            this.size = i;
            for (int i3 = this.size; i3 < i; i3++) {
                this.buffer[i3] = 0;
            }
        }
        return this;
    }

    public Cif setNewLineText(String str) {
        this.newLine = str;
        return this;
    }

    public Cif setNullText(String str) {
        if (str != null && str.isEmpty()) {
            str = null;
        }
        this.nullText = str;
        return this;
    }

    public int size() {
        return this.size;
    }

    public boolean startsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        if (length > this.size) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (this.buffer[i] != str.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        if (i < 0) {
            throw new StringIndexOutOfBoundsException(i);
        }
        if (i2 > this.size) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        if (i <= i2) {
            return substring(i, i2);
        }
        throw new StringIndexOutOfBoundsException(i2 - i);
    }

    public String substring(int i) {
        return substring(i, this.size);
    }

    public char[] toCharArray() {
        int i = this.size;
        if (i == 0) {
            return org.apache.commons.lang3.Cif.f28727import;
        }
        char[] cArr = new char[i];
        System.arraycopy(this.buffer, 0, cArr, 0, i);
        return cArr;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.buffer, 0, this.size);
    }

    public StringBuffer toStringBuffer() {
        StringBuffer stringBuffer = new StringBuffer(this.size);
        stringBuffer.append(this.buffer, 0, this.size);
        return stringBuffer;
    }

    public StringBuilder toStringBuilder() {
        StringBuilder sb = new StringBuilder(this.size);
        sb.append(this.buffer, 0, this.size);
        return sb;
    }

    public Cif trim() {
        int i = this.size;
        if (i == 0) {
            return this;
        }
        char[] cArr = this.buffer;
        int i2 = 0;
        while (i2 < i && cArr[i2] <= ' ') {
            i2++;
        }
        while (i2 < i && cArr[i - 1] <= ' ') {
            i--;
        }
        int i3 = this.size;
        if (i < i3) {
            delete(i, i3);
        }
        if (i2 > 0) {
            delete(0, i2);
        }
        return this;
    }

    public void validateIndex(int i) {
        if (i < 0 || i > this.size) {
            throw new StringIndexOutOfBoundsException(i);
        }
    }

    public int validateRange(int i, int i2) {
        if (i < 0) {
            throw new StringIndexOutOfBoundsException(i);
        }
        int i3 = this.size;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i <= i2) {
            return i2;
        }
        throw new StringIndexOutOfBoundsException("end < start");
    }

    /* renamed from: org.apache.commons.lang3.text.if$do, reason: invalid class name */
    public class Cdo extends Reader {

        /* renamed from: do, reason: not valid java name */
        private int f28752do;

        /* renamed from: if, reason: not valid java name */
        private int f28754if;

        public Cdo() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Reader
        public void mark(int i) {
            this.f28754if = this.f28752do;
        }

        @Override // java.io.Reader
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.Reader
        public int read() {
            if (!ready()) {
                return -1;
            }
            Cif cif = Cif.this;
            int i = this.f28752do;
            this.f28752do = i + 1;
            return cif.charAt(i);
        }

        @Override // java.io.Reader
        public boolean ready() {
            return this.f28752do < Cif.this.size();
        }

        @Override // java.io.Reader
        public void reset() {
            this.f28752do = this.f28754if;
        }

        @Override // java.io.Reader
        public long skip(long j) {
            if (this.f28752do + j > Cif.this.size()) {
                j = Cif.this.size() - this.f28752do;
            }
            if (j < 0) {
                return 0L;
            }
            this.f28752do = (int) (this.f28752do + j);
            return j;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            int i3;
            if (i < 0 || i2 < 0 || i > cArr.length || (i3 = i + i2) > cArr.length || i3 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            if (this.f28752do >= Cif.this.size()) {
                return -1;
            }
            if (this.f28752do + i2 > Cif.this.size()) {
                i2 = Cif.this.size() - this.f28752do;
            }
            Cif cif = Cif.this;
            int i4 = this.f28752do;
            cif.getChars(i4, i4 + i2, cArr, i);
            this.f28752do += i2;
            return i2;
        }
    }

    public Cif(int i) {
        this.buffer = new char[i <= 0 ? 32 : i];
    }

    public Cif appendSeparator(String str, String str2) {
        if (isEmpty()) {
            str = str2;
        }
        if (str != null) {
            append(str);
        }
        return this;
    }

    public Cif appendln(String str) {
        return append(str).appendNewLine();
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public String build() {
        return toString();
    }

    public int indexOf(char c, int i) {
        if (i < 0) {
            i = 0;
        }
        if (i >= this.size) {
            return -1;
        }
        char[] cArr = this.buffer;
        while (i < this.size) {
            if (cArr[i] == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int lastIndexOf(char c, int i) {
        int i2 = this.size;
        if (i >= i2) {
            i = i2 - 1;
        }
        if (i < 0) {
            return -1;
        }
        while (i >= 0) {
            if (this.buffer[i] == c) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public String substring(int i, int i2) {
        return new String(this.buffer, i, validateRange(i, i2) - i);
    }

    public Cif appendln(String str, int i, int i2) {
        return append(str, i, i2).appendNewLine();
    }

    public Cif insert(int i, String str) {
        int length;
        validateIndex(i);
        if (str == null) {
            str = this.nullText;
        }
        if (str != null && (length = str.length()) > 0) {
            int i2 = this.size + length;
            ensureCapacity(i2);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i, cArr, i + length, this.size - i);
            this.size = i2;
            str.getChars(0, length, this.buffer, i);
        }
        return this;
    }

    public Cif(String str) {
        if (str == null) {
            this.buffer = new char[32];
        } else {
            this.buffer = new char[str.length() + 32];
            append(str);
        }
    }

    public Cif append(Object obj) {
        if (obj == null) {
            return appendNull();
        }
        return append(obj.toString());
    }

    public Cif appendAll(Iterable<?> iterable) {
        if (iterable != null) {
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public Cif appendSeparator(char c) {
        if (size() > 0) {
            append(c);
        }
        return this;
    }

    public Cif appendln(String str, Object... objArr) {
        return append(str, objArr).appendNewLine();
    }

    public boolean contains(String str) {
        return indexOf(str, 0) >= 0;
    }

    public Cif deleteFirst(String str) {
        int iIndexOf;
        int length = str == null ? 0 : str.length();
        if (length > 0 && (iIndexOf = indexOf(str, 0)) >= 0) {
            m32551do(iIndexOf, iIndexOf + length, length);
        }
        return this;
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.size - 1);
    }

    public Cif replace(Cnew cnew, String str, int i, int i2, int i3) {
        return m32553if(cnew, str, i, validateRange(i, i2), i3);
    }

    public Cif replaceAll(String str, String str2) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int length2 = str2 == null ? 0 : str2.length();
            int iIndexOf = indexOf(str, 0);
            while (iIndexOf >= 0) {
                m32552for(iIndexOf, iIndexOf + length, length, str2, length2);
                iIndexOf = indexOf(str, iIndexOf + length2);
            }
        }
        return this;
    }

    public Cif replaceFirst(String str, String str2) {
        int iIndexOf;
        int length = str == null ? 0 : str.length();
        if (length > 0 && (iIndexOf = indexOf(str, 0)) >= 0) {
            m32552for(iIndexOf, iIndexOf + length, length, str2, str2 == null ? 0 : str2.length());
        }
        return this;
    }

    public Cif appendln(StringBuffer stringBuffer) {
        return append(stringBuffer).appendNewLine();
    }

    public boolean contains(Cnew cnew) {
        return indexOf(cnew, 0) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cif) {
            return equals((Cif) obj);
        }
        return false;
    }

    public void getChars(int i, int i2, char[] cArr, int i3) {
        if (i >= 0) {
            if (i2 < 0 || i2 > length()) {
                throw new StringIndexOutOfBoundsException(i2);
            }
            if (i <= i2) {
                System.arraycopy(this.buffer, i, cArr, i3, i2 - i);
                return;
            }
            throw new StringIndexOutOfBoundsException("end < start");
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
    
        r9 = r9 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int lastIndexOf(String str, int i) {
        int i2 = this.size;
        if (i >= i2) {
            i = i2 - 1;
        }
        if (str != null && i >= 0) {
            int length = str.length();
            if (length > 0 && length <= this.size) {
                if (length == 1) {
                    return lastIndexOf(str.charAt(0), i);
                }
                int i3 = (i - length) + 1;
                while (i3 >= 0) {
                    for (int i4 = 0; i4 < length; i4++) {
                        if (str.charAt(i4) != this.buffer[i3 + i4]) {
                            break;
                        }
                    }
                    return i3;
                }
            }
            if (length == 0) {
                return i;
            }
        }
        return -1;
    }

    public char[] toCharArray(int i, int i2) {
        int iValidateRange = validateRange(i, i2) - i;
        if (iValidateRange == 0) {
            return org.apache.commons.lang3.Cif.f28727import;
        }
        char[] cArr = new char[iValidateRange];
        System.arraycopy(this.buffer, i, cArr, 0, iValidateRange);
        return cArr;
    }

    @Override // java.lang.Appendable
    public Cif append(CharSequence charSequence) {
        if (charSequence == null) {
            return appendNull();
        }
        return append(charSequence.toString());
    }

    public Cif appendAll(Iterator<?> it) {
        if (it != null) {
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public Cif appendSeparator(char c, char c2) {
        if (size() > 0) {
            append(c);
        } else {
            append(c2);
        }
        return this;
    }

    public Cif appendln(StringBuilder sb) {
        return append(sb).appendNewLine();
    }

    public Cif deleteAll(String str) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int iIndexOf = indexOf(str, 0);
            while (iIndexOf >= 0) {
                m32551do(iIndexOf, iIndexOf + length, length);
                iIndexOf = indexOf(str, iIndexOf);
            }
        }
        return this;
    }

    public int indexOf(String str) {
        return indexOf(str, 0);
    }

    public Cif appendWithSeparators(Iterable<?> iterable, String str) {
        if (iterable != null) {
            String strM32396strictfp = Cgoto.m32396strictfp(str);
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(strM32396strictfp);
                }
            }
        }
        return this;
    }

    public Cif appendln(StringBuilder sb, int i, int i2) {
        return append(sb, i, i2).appendNewLine();
    }

    public Cif deleteFirst(Cnew cnew) {
        return replace(cnew, null, 0, this.size, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0037, code lost:
    
        r10 = r10 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int indexOf(String str, int i) {
        if (i < 0) {
            i = 0;
        }
        if (str != null && i < this.size) {
            int length = str.length();
            if (length == 1) {
                return indexOf(str.charAt(0), i);
            }
            if (length == 0) {
                return i;
            }
            int i2 = this.size;
            if (length > i2) {
                return -1;
            }
            char[] cArr = this.buffer;
            int i3 = (i2 - length) + 1;
            while (i < i3) {
                for (int i4 = 0; i4 < length; i4++) {
                    if (str.charAt(i4) != cArr[i + i4]) {
                        break;
                    }
                }
                return i;
            }
        }
        return -1;
    }

    @Override // java.lang.Appendable
    public Cif append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            return appendNull();
        }
        return append(charSequence.toString(), i, i2);
    }

    public Cif appendFixedWidthPadLeft(int i, int i2, char c) {
        return appendFixedWidthPadLeft(String.valueOf(i), i2, c);
    }

    public Cif appendFixedWidthPadRight(int i, int i2, char c) {
        return appendFixedWidthPadRight(String.valueOf(i), i2, c);
    }

    public Cif appendln(StringBuffer stringBuffer, int i, int i2) {
        return append(stringBuffer, i, i2).appendNewLine();
    }

    public Cif replaceFirst(Cnew cnew, String str) {
        return replace(cnew, str, 0, this.size, 1);
    }

    public Cif appendSeparator(String str, int i) {
        if (str != null && i > 0) {
            append(str);
        }
        return this;
    }

    public Cif appendln(Cif cif) {
        return append(cif).appendNewLine();
    }

    public Cif replaceAll(Cnew cnew, String str) {
        return replace(cnew, str, 0, this.size, -1);
    }

    public Cif append(String str) {
        if (str == null) {
            return appendNull();
        }
        int length = str.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            str.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public Cif appendSeparator(char c, int i) {
        if (i > 0) {
            append(c);
        }
        return this;
    }

    public Cif appendln(Cif cif, int i, int i2) {
        return append(cif, i, i2).appendNewLine();
    }

    public Cif deleteAll(Cnew cnew) {
        return replace(cnew, null, 0, this.size, -1);
    }

    public int lastIndexOf(Cnew cnew) {
        return lastIndexOf(cnew, this.size);
    }

    public Cif appendln(char[] cArr) {
        return append(cArr).appendNewLine();
    }

    public Cif insert(int i, char[] cArr) {
        validateIndex(i);
        if (cArr == null) {
            return insert(i, this.nullText);
        }
        int length = cArr.length;
        if (length > 0) {
            ensureCapacity(this.size + length);
            char[] cArr2 = this.buffer;
            System.arraycopy(cArr2, i, cArr2, i + length, this.size - i);
            System.arraycopy(cArr, 0, this.buffer, i, length);
            this.size += length;
        }
        return this;
    }

    public int lastIndexOf(Cnew cnew, int i) {
        int i2 = this.size;
        if (i >= i2) {
            i = i2 - 1;
        }
        if (cnew != null && i >= 0) {
            char[] cArr = this.buffer;
            int i3 = i + 1;
            while (i >= 0) {
                if (cnew.mo32569else(cArr, i, 0, i3) > 0) {
                    return i;
                }
                i--;
            }
        }
        return -1;
    }

    public Cif appendln(char[] cArr, int i, int i2) {
        return append(cArr, i, i2).appendNewLine();
    }

    public Cif appendWithSeparators(Iterator<?> it, String str) {
        if (it != null) {
            String strM32396strictfp = Cgoto.m32396strictfp(str);
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(strM32396strictfp);
                }
            }
        }
        return this;
    }

    public Cif appendln(boolean z) {
        return append(z).appendNewLine();
    }

    public int indexOf(Cnew cnew) {
        return indexOf(cnew, 0);
    }

    public Cif appendln(char c) {
        return append(c).appendNewLine();
    }

    public int indexOf(Cnew cnew, int i) {
        int i2;
        if (i < 0) {
            i = 0;
        }
        if (cnew != null && i < (i2 = this.size)) {
            char[] cArr = this.buffer;
            for (int i3 = i; i3 < i2; i3++) {
                if (cnew.mo32569else(cArr, i3, i, i2) > 0) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public Cif appendln(int i) {
        return append(i).appendNewLine();
    }

    public Cif append(String str, int i, int i2) {
        int i3;
        if (str == null) {
            return appendNull();
        }
        if (i >= 0 && i <= str.length()) {
            if (i2 < 0 || (i3 = i + i2) > str.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i2 > 0) {
                int length = length();
                ensureCapacity(length + i2);
                str.getChars(i, i3, this.buffer, length);
                this.size += i2;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public Cif appendln(long j) {
        return append(j).appendNewLine();
    }

    public Cif appendln(float f) {
        return append(f).appendNewLine();
    }

    public Cif appendln(double d) {
        return append(d).appendNewLine();
    }

    public Cif insert(int i, char[] cArr, int i2, int i3) {
        validateIndex(i);
        if (cArr == null) {
            return insert(i, this.nullText);
        }
        if (i2 >= 0 && i2 <= cArr.length) {
            if (i3 < 0 || i2 + i3 > cArr.length) {
                throw new StringIndexOutOfBoundsException("Invalid length: " + i3);
            }
            if (i3 > 0) {
                ensureCapacity(this.size + i3);
                char[] cArr2 = this.buffer;
                System.arraycopy(cArr2, i, cArr2, i + i3, this.size - i);
                System.arraycopy(cArr, i2, this.buffer, i, i3);
                this.size += i3;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("Invalid offset: " + i2);
    }

    public Cif append(String str, Object... objArr) {
        return append(String.format(str, objArr));
    }

    public Cif append(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return appendNull();
        }
        int length = stringBuffer.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            stringBuffer.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public Cif insert(int i, boolean z) {
        validateIndex(i);
        if (z) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i, cArr, i + 4, this.size - i);
            char[] cArr2 = this.buffer;
            int i2 = i + 1;
            cArr2[i] = 't';
            int i3 = i2 + 1;
            cArr2[i2] = 'r';
            cArr2[i3] = 'u';
            cArr2[i3 + 1] = 'e';
            this.size += 4;
        } else {
            ensureCapacity(this.size + 5);
            char[] cArr3 = this.buffer;
            System.arraycopy(cArr3, i, cArr3, i + 5, this.size - i);
            char[] cArr4 = this.buffer;
            int i4 = i + 1;
            cArr4[i] = 'f';
            int i5 = i4 + 1;
            cArr4[i4] = 'a';
            int i6 = i5 + 1;
            cArr4[i5] = 'l';
            cArr4[i6] = 's';
            cArr4[i6 + 1] = 'e';
            this.size += 5;
        }
        return this;
    }

    public Cif append(StringBuffer stringBuffer, int i, int i2) {
        int i3;
        if (stringBuffer == null) {
            return appendNull();
        }
        if (i >= 0 && i <= stringBuffer.length()) {
            if (i2 < 0 || (i3 = i + i2) > stringBuffer.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i2 > 0) {
                int length = length();
                ensureCapacity(length + i2);
                stringBuffer.getChars(i, i3, this.buffer, length);
                this.size += i2;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public Cif append(StringBuilder sb) {
        if (sb == null) {
            return appendNull();
        }
        int length = sb.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            sb.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public Cif insert(int i, char c) {
        validateIndex(i);
        ensureCapacity(this.size + 1);
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i, cArr, i + 1, this.size - i);
        this.buffer[i] = c;
        this.size++;
        return this;
    }

    public Cif append(StringBuilder sb, int i, int i2) {
        int i3;
        if (sb == null) {
            return appendNull();
        }
        if (i >= 0 && i <= sb.length()) {
            if (i2 < 0 || (i3 = i + i2) > sb.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i2 > 0) {
                int length = length();
                ensureCapacity(length + i2);
                sb.getChars(i, i3, this.buffer, length);
                this.size += i2;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public Cif insert(int i, int i2) {
        return insert(i, String.valueOf(i2));
    }

    public Cif insert(int i, long j) {
        return insert(i, String.valueOf(j));
    }

    public Cif insert(int i, float f) {
        return insert(i, String.valueOf(f));
    }

    public Cif insert(int i, double d) {
        return insert(i, String.valueOf(d));
    }

    public Cif append(Cif cif) {
        if (cif == null) {
            return appendNull();
        }
        int length = cif.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(cif.buffer, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public Cif append(Cif cif, int i, int i2) {
        int i3;
        if (cif == null) {
            return appendNull();
        }
        if (i >= 0 && i <= cif.length()) {
            if (i2 < 0 || (i3 = i + i2) > cif.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i2 > 0) {
                int length = length();
                ensureCapacity(length + i2);
                cif.getChars(i, i3, this.buffer, length);
                this.size += i2;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public Cif append(char[] cArr) {
        if (cArr == null) {
            return appendNull();
        }
        int length = cArr.length;
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(cArr, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public Cif append(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return appendNull();
        }
        if (i >= 0 && i <= cArr.length) {
            if (i2 < 0 || i + i2 > cArr.length) {
                throw new StringIndexOutOfBoundsException("Invalid length: " + i2);
            }
            if (i2 > 0) {
                int length = length();
                ensureCapacity(length + i2);
                System.arraycopy(cArr, i, this.buffer, length, i2);
                this.size += i2;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("Invalid startIndex: " + i2);
    }

    public Cif append(boolean z) {
        if (z) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            int i = this.size;
            int i2 = i + 1;
            this.size = i2;
            cArr[i] = 't';
            int i3 = i2 + 1;
            this.size = i3;
            cArr[i2] = 'r';
            int i4 = i3 + 1;
            this.size = i4;
            cArr[i3] = 'u';
            this.size = i4 + 1;
            cArr[i4] = 'e';
        } else {
            ensureCapacity(this.size + 5);
            char[] cArr2 = this.buffer;
            int i5 = this.size;
            int i6 = i5 + 1;
            this.size = i6;
            cArr2[i5] = 'f';
            int i7 = i6 + 1;
            this.size = i7;
            cArr2[i6] = 'a';
            int i8 = i7 + 1;
            this.size = i8;
            cArr2[i7] = 'l';
            int i9 = i8 + 1;
            this.size = i9;
            cArr2[i8] = 's';
            this.size = i9 + 1;
            cArr2[i9] = 'e';
        }
        return this;
    }

    @Override // java.lang.Appendable
    public Cif append(char c) {
        ensureCapacity(length() + 1);
        char[] cArr = this.buffer;
        int i = this.size;
        this.size = i + 1;
        cArr[i] = c;
        return this;
    }

    public Cif append(int i) {
        return append(String.valueOf(i));
    }

    public Cif append(long j) {
        return append(String.valueOf(j));
    }

    public Cif append(float f) {
        return append(String.valueOf(f));
    }

    public Cif append(double d) {
        return append(String.valueOf(d));
    }
}
