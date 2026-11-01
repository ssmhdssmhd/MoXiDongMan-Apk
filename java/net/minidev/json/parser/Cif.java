package net.minidev.json.parser;

import android.support.v4.ca2;
import android.support.v4.ic1;
import android.support.v4.wk;
import com.uc.crashsdk.export.LogType;
import freemarker.core.b2;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: net.minidev.json.parser.if, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cif {

    /* renamed from: default, reason: not valid java name */
    public static boolean[] f28240default = null;

    /* renamed from: native, reason: not valid java name */
    public static final byte f28241native = 26;

    /* renamed from: public, reason: not valid java name */
    public static final char f28242public = '~';

    /* renamed from: return, reason: not valid java name */
    public static boolean[] f28243return;

    /* renamed from: static, reason: not valid java name */
    public static boolean[] f28244static;

    /* renamed from: switch, reason: not valid java name */
    public static boolean[] f28245switch;

    /* renamed from: throws, reason: not valid java name */
    public static boolean[] f28246throws;

    /* renamed from: break, reason: not valid java name */
    public final boolean f28247break;

    /* renamed from: case, reason: not valid java name */
    public String f28248case;

    /* renamed from: catch, reason: not valid java name */
    public final boolean f28249catch;

    /* renamed from: class, reason: not valid java name */
    public final boolean f28250class;

    /* renamed from: const, reason: not valid java name */
    public final boolean f28251const;

    /* renamed from: do, reason: not valid java name */
    public char f28252do;

    /* renamed from: else, reason: not valid java name */
    public int f28253else;

    /* renamed from: final, reason: not valid java name */
    public final boolean f28254final;

    /* renamed from: for, reason: not valid java name */
    private String f28255for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f28256goto;

    /* renamed from: if, reason: not valid java name */
    public Ctry f28257if;

    /* renamed from: import, reason: not valid java name */
    public final boolean f28258import;

    /* renamed from: new, reason: not valid java name */
    public final Cdo f28259new = new Cdo(15);

    /* renamed from: super, reason: not valid java name */
    public final boolean f28260super;

    /* renamed from: this, reason: not valid java name */
    public final boolean f28261this;

    /* renamed from: throw, reason: not valid java name */
    public final boolean f28262throw;

    /* renamed from: try, reason: not valid java name */
    public Object f28263try;

    /* renamed from: while, reason: not valid java name */
    public final boolean f28264while;

    /* renamed from: net.minidev.json.parser.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public char[] f28265do;

        /* renamed from: if, reason: not valid java name */
        public int f28266if = -1;

        public Cdo(int i) {
            this.f28265do = new char[i];
        }

        /* renamed from: do, reason: not valid java name */
        public void m31678do(char c) {
            int i = this.f28266if + 1;
            this.f28266if = i;
            char[] cArr = this.f28265do;
            if (cArr.length <= i) {
                char[] cArr2 = new char[(cArr.length * 2) + 1];
                System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                this.f28265do = cArr2;
            }
            this.f28265do[this.f28266if] = c;
        }

        /* renamed from: for, reason: not valid java name */
        public void m31679for() {
            this.f28266if = -1;
        }

        /* renamed from: if, reason: not valid java name */
        public void m31680if(int i) {
            int i2 = this.f28266if + 1;
            this.f28266if = i2;
            char[] cArr = this.f28265do;
            if (cArr.length <= i2) {
                char[] cArr2 = new char[(cArr.length * 2) + 1];
                System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                this.f28265do = cArr2;
            }
            this.f28265do[this.f28266if] = (char) i;
        }

        public String toString() {
            return new String(this.f28265do, 0, this.f28266if + 1);
        }
    }

    static {
        boolean[] zArr = new boolean[126];
        f28243return = zArr;
        boolean[] zArr2 = new boolean[126];
        f28244static = zArr2;
        boolean[] zArr3 = new boolean[126];
        f28245switch = zArr3;
        boolean[] zArr4 = new boolean[126];
        f28246throws = zArr4;
        boolean[] zArr5 = new boolean[126];
        f28240default = zArr5;
        zArr3[26] = true;
        zArr3[58] = true;
        zArr4[26] = true;
        zArr4[125] = true;
        zArr4[44] = true;
        zArr2[26] = true;
        zArr2[93] = true;
        zArr2[44] = true;
        zArr5[26] = true;
        zArr[58] = true;
        zArr[44] = true;
        zArr[26] = true;
        zArr[125] = true;
        zArr[93] = true;
    }

    public Cif(int i) {
        this.f28261this = (i & 4) > 0;
        this.f28247break = (i & 2) > 0;
        this.f28249catch = (i & 1) > 0;
        this.f28260super = (i & 8) > 0;
        this.f28264while = (i & 16) > 0;
        this.f28256goto = (i & 32) > 0;
        this.f28250class = (i & 64) > 0;
        this.f28262throw = (i & 128) > 0;
        this.f28251const = (i & LogType.UNEXP_OTHER) != 768;
        this.f28254final = (i & 512) == 0;
        this.f28258import = (i & 1024) > 0;
    }

    /* renamed from: break */
    public abstract void mo31654break(boolean[] zArr) throws IOException;

    /* renamed from: case */
    public abstract void mo31633case() throws IOException;

    /* renamed from: catch */
    public abstract void mo31634catch() throws ic1, IOException;

    /* renamed from: class */
    public abstract Object mo31655class(boolean[] zArr) throws ic1, IOException;

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e5, code lost:
    
        throw new android.support.v4.ic1(r12.f28253else, 0, java.lang.Character.valueOf(r12.f28252do));
     */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T m31664const(Ccase<T> ccase) throws ic1, IOException {
        if (this.f28252do != '{') {
            throw new RuntimeException("Internal Error");
        }
        Object objCreateObject = ccase.createObject();
        boolean z = false;
        while (true) {
            mo31633case();
            char c = this.f28252do;
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c != ',') {
                    if (c == ':' || c == '[' || c == ']' || c == '{') {
                        break;
                    }
                    if (c == '}') {
                        if (z && !this.f28250class) {
                            throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
                        }
                        mo31633case();
                        return ccase.convert(objCreateObject);
                    }
                    if (c == '\"' || c == '\'') {
                        mo31656super();
                    } else {
                        mo31654break(f28245switch);
                        if (!this.f28247break) {
                            throw new ic1(this.f28253else, 1, this.f28248case);
                        }
                    }
                    String str = this.f28248case;
                    m31673public();
                    char c2 = this.f28252do;
                    if (c2 != ':') {
                        if (c2 == 26) {
                            throw new ic1(this.f28253else - 1, 3, null);
                        }
                        throw new ic1(this.f28253else - 1, 0, Character.valueOf(this.f28252do));
                    }
                    mo31634catch();
                    this.f28255for = str;
                    ccase.setValue(objCreateObject, str, m31674this(ccase, f28246throws));
                    this.f28255for = null;
                    m31673public();
                    char c3 = this.f28252do;
                    if (c3 == '}') {
                        mo31633case();
                        return ccase.convert(objCreateObject);
                    }
                    if (c3 == 26) {
                        throw new ic1(this.f28253else - 1, 3, null);
                    }
                    if (c3 != ',') {
                        throw new ic1(this.f28253else - 1, 1, Character.valueOf(this.f28252do));
                    }
                } else if (z && !this.f28250class) {
                    throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
                }
                z = true;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m31665do() throws ic1 {
        if (this.f28260super) {
            return;
        }
        int length = this.f28248case.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = this.f28248case.charAt(i);
            if (cCharAt >= 0) {
                if (cCharAt <= 31) {
                    throw new ic1(this.f28253else + i, 0, Character.valueOf(cCharAt));
                }
                if (cCharAt == 127 && this.f28258import) {
                    throw new ic1(this.f28253else + i, 0, Character.valueOf(cCharAt));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0043, code lost:
    
        if (r5 == ':') goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
    
        if (r5 == ']') goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004b, code lost:
    
        if (r5 == '}') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0057, code lost:
    
        if (r4 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        if (r7.f28250class == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006b, code lost:
    
        throw new android.support.v4.ic1(r7.f28253else, 0, java.lang.Character.valueOf(r7.f28252do));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006c, code lost:
    
        mo31633case();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
    
        return r8.convert(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        throw new android.support.v4.ic1(r7.f28253else, 0, java.lang.Character.valueOf(r7.f28252do));
     */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T m31666else(Ccase<T> ccase) throws ic1, IOException {
        Object objCreateArray = ccase.createArray();
        if (this.f28252do != '[') {
            throw new RuntimeException("Internal Error");
        }
        mo31633case();
        if (this.f28252do == ',' && !this.f28250class) {
            throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
        }
        while (true) {
            boolean z = false;
            while (true) {
                char c = this.f28252do;
                if (c != '\t' && c != '\n' && c != '\r') {
                    if (c == 26) {
                        throw new ic1(this.f28253else - 1, 3, "EOF");
                    }
                    if (c != ' ') {
                        if (c != ',') {
                            break;
                        }
                        if (z && !this.f28250class) {
                            throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
                        }
                        mo31633case();
                        z = true;
                    }
                }
                mo31633case();
            }
            ccase.addValue(objCreateArray, m31674this(ccase, f28244static));
        }
    }

    /* renamed from: final */
    public abstract void mo31635final() throws IOException;

    /* renamed from: for, reason: not valid java name */
    public Number m31667for() throws ic1 {
        if (!this.f28256goto) {
            m31669if();
        }
        return !this.f28262throw ? Float.valueOf(Float.parseFloat(this.f28248case)) : this.f28248case.length() > 18 ? new BigDecimal(this.f28248case) : Double.valueOf(Double.parseDouble(this.f28248case));
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ba, code lost:
    
        throw new android.support.v4.ic1(r3.f28253else, 0, java.lang.Character.valueOf(r3.f28252do));
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00fd, code lost:
    
        r0 = mo31655class(net.minidev.json.parser.Cif.f28240default);
        r3.f28263try = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0109, code lost:
    
        return r4.convert(r0);
     */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T m31668goto(Ccase<T> ccase) throws ic1, IOException {
        while (true) {
            char c = this.f28252do;
            if (c != '\t' && c != '\n') {
                switch (c) {
                    case '\r':
                    case ' ':
                        break;
                    case '\"':
                    case '\'':
                        mo31656super();
                        return ccase.convert(this.f28248case);
                    case '-':
                        break;
                    case 'N':
                        mo31654break(f28240default);
                        if (!this.f28261this) {
                            throw new ic1(this.f28253else, 1, this.f28248case);
                        }
                        if ("NaN".equals(this.f28248case)) {
                            return ccase.convert(Float.valueOf(Float.NaN));
                        }
                        if (this.f28247break) {
                            return ccase.convert(this.f28248case);
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case '[':
                        return (T) m31666else(ccase);
                    case ']':
                    case '}':
                        break;
                    case 'f':
                        mo31654break(f28240default);
                        if (b2.f23510do.equals(this.f28248case)) {
                            return ccase.convert(Boolean.FALSE);
                        }
                        if (this.f28247break) {
                            return ccase.convert(this.f28248case);
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case 'n':
                        mo31654break(f28240default);
                        if ("null".equals(this.f28248case)) {
                            return null;
                        }
                        if (this.f28247break) {
                            return ccase.convert(this.f28248case);
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case 't':
                        mo31654break(f28240default);
                        if (b2.f23511if.equals(this.f28248case)) {
                            return ccase.convert(Boolean.TRUE);
                        }
                        if (this.f28247break) {
                            return ccase.convert(this.f28248case);
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case '{':
                        return (T) m31664const(ccase);
                    default:
                        switch (c) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                break;
                            case ':':
                                break;
                            default:
                                mo31654break(f28240default);
                                if (this.f28247break) {
                                    return ccase.convert(this.f28248case);
                                }
                                throw new ic1(this.f28253else, 1, this.f28248case);
                        }
                }
            }
            mo31633case();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m31669if() throws ic1 {
        int length = this.f28248case.length();
        if (length == 1) {
            return;
        }
        if (length == 2) {
            if (this.f28248case.equals("00")) {
                throw new ic1(this.f28253else, 6, this.f28248case);
            }
            return;
        }
        char cCharAt = this.f28248case.charAt(0);
        char cCharAt2 = this.f28248case.charAt(1);
        if (cCharAt != '-') {
            if (cCharAt == '0' && cCharAt2 >= '0' && cCharAt2 <= '9') {
                throw new ic1(this.f28253else, 6, this.f28248case);
            }
            return;
        }
        char cCharAt3 = this.f28248case.charAt(2);
        if (cCharAt2 == '0' && cCharAt3 >= '0' && cCharAt3 <= '9') {
            throw new ic1(this.f28253else, 6, this.f28248case);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m31670import() throws IOException {
        while (true) {
            char c = this.f28252do;
            if (c < '0' || c > '9') {
                return;
            } else {
                mo31635final();
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m31671native(boolean[] zArr) throws IOException {
        while (true) {
            char c = this.f28252do;
            if (c == 26) {
                return;
            }
            if (c >= 0 && c < '~' && zArr[c]) {
                return;
            } else {
                mo31635final();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public <T> T m31672new(Ccase<T> ccase) throws ic1 {
        this.f28253else = -1;
        try {
            mo31633case();
            T t = (T) m31668goto(ccase);
            if (this.f28251const) {
                if (!this.f28254final) {
                    m31673public();
                }
                if (this.f28252do != 26) {
                    throw new ic1(this.f28253else - 1, 1, Character.valueOf(this.f28252do));
                }
            }
            this.f28248case = null;
            this.f28263try = null;
            return t;
        } catch (IOException e) {
            throw new ic1(this.f28253else, e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m31673public() throws IOException {
        while (true) {
            char c = this.f28252do;
            if (c > ' ' || c == 26) {
                return;
            } else {
                mo31635final();
            }
        }
    }

    /* renamed from: super */
    public abstract void mo31656super() throws ic1, IOException;

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a0, code lost:
    
        throw new android.support.v4.ic1(r2.f28253else, 0, java.lang.Character.valueOf(r2.f28252do));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e3, code lost:
    
        return mo31655class(r4);
     */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object m31674this(Ccase<?> ccase, boolean[] zArr) throws ic1, IOException {
        while (true) {
            char c = this.f28252do;
            if (c != '\t' && c != '\n') {
                switch (c) {
                    case '\r':
                    case ' ':
                        break;
                    case '\"':
                    case '\'':
                        mo31656super();
                        return this.f28248case;
                    case '-':
                        break;
                    case 'N':
                        mo31654break(zArr);
                        if (!this.f28261this) {
                            throw new ic1(this.f28253else, 1, this.f28248case);
                        }
                        if ("NaN".equals(this.f28248case)) {
                            return Float.valueOf(Float.NaN);
                        }
                        if (this.f28247break) {
                            return this.f28248case;
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case '[':
                        return m31666else(ccase.startArray(this.f28255for));
                    case ']':
                    case '}':
                        break;
                    case 'f':
                        mo31654break(zArr);
                        if (b2.f23510do.equals(this.f28248case)) {
                            return Boolean.FALSE;
                        }
                        if (this.f28247break) {
                            return this.f28248case;
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case 'n':
                        mo31654break(zArr);
                        if ("null".equals(this.f28248case)) {
                            return null;
                        }
                        if (this.f28247break) {
                            return this.f28248case;
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case 't':
                        mo31654break(zArr);
                        if (b2.f23511if.equals(this.f28248case)) {
                            return Boolean.TRUE;
                        }
                        if (this.f28247break) {
                            return this.f28248case;
                        }
                        throw new ic1(this.f28253else, 1, this.f28248case);
                    case '{':
                        return m31664const(ccase.startObject(this.f28255for));
                    default:
                        switch (c) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                break;
                            case ':':
                                break;
                            default:
                                mo31654break(zArr);
                                if (this.f28247break) {
                                    return this.f28248case;
                                }
                                throw new ic1(this.f28253else, 1, this.f28248case);
                        }
                }
            }
            mo31633case();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m31675throw() throws ic1, IOException {
        char c = this.f28252do;
        while (true) {
            mo31633case();
            char c2 = this.f28252do;
            if (c2 == '\"' || c2 == '\'') {
                if (c == c2) {
                    mo31633case();
                    this.f28248case = this.f28259new.toString();
                    return;
                }
                this.f28259new.m31678do(c2);
            } else if (c2 == '\\') {
                mo31633case();
                char c3 = this.f28252do;
                if (c3 == '\"') {
                    this.f28259new.m31678do(ca2.f674do);
                } else if (c3 == '\'') {
                    this.f28259new.m31678do('\'');
                } else if (c3 == '/') {
                    this.f28259new.m31678do(Attributes.InternalPrefix);
                } else if (c3 == '\\') {
                    this.f28259new.m31678do('\\');
                } else if (c3 == 'b') {
                    this.f28259new.m31678do('\b');
                } else if (c3 == 'f') {
                    this.f28259new.m31678do('\f');
                } else if (c3 == 'n') {
                    this.f28259new.m31678do('\n');
                } else if (c3 == 'r') {
                    this.f28259new.m31678do(wk.f7547for);
                } else if (c3 == 'x') {
                    this.f28259new.m31678do(m31677while(2));
                } else if (c3 == 't') {
                    this.f28259new.m31678do('\t');
                } else if (c3 == 'u') {
                    this.f28259new.m31678do(m31677while(4));
                }
            } else if (c2 != 127) {
                switch (c2) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case '\b':
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                        if (!this.f28260super) {
                            throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
                        }
                        continue;
                    case 26:
                        throw new ic1(this.f28253else - 1, 3, null);
                }
                this.f28259new.m31678do(c2);
            } else if (this.f28260super) {
                continue;
            } else {
                if (this.f28258import) {
                    throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
                }
                this.f28259new.m31678do(c2);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Number m31676try(String str) throws ic1 {
        int i;
        int i2;
        boolean z;
        boolean z2;
        int length = str.length();
        boolean z3 = false;
        if (str.charAt(0) == '-') {
            i = 20;
            if (!this.f28256goto && length >= 3 && str.charAt(1) == '0') {
                throw new ic1(this.f28253else, 6, str);
            }
            i2 = 1;
            z = true;
        } else {
            if (!this.f28256goto && length >= 2 && str.charAt(0) == '0') {
                throw new ic1(this.f28253else, 6, str);
            }
            i = 19;
            i2 = 0;
            z = false;
        }
        if (length < i) {
            z2 = false;
        } else {
            if (length > i) {
                return new BigInteger(str, 10);
            }
            length--;
            z2 = true;
        }
        long jCharAt = 0;
        while (i2 < length) {
            jCharAt = (jCharAt * 10) + ('0' - str.charAt(i2));
            i2++;
        }
        if (z2) {
            if (jCharAt <= -922337203685477580L) {
                if (jCharAt >= -922337203685477580L) {
                    z3 = z ? true : true;
                }
            }
            if (z3) {
                return new BigInteger(str, 10);
            }
            jCharAt = (jCharAt * 10) + ('0' - str.charAt(i2));
        }
        if (z) {
            return (!this.f28264while || jCharAt < -2147483648L) ? Long.valueOf(jCharAt) : Integer.valueOf((int) jCharAt);
        }
        long j = -jCharAt;
        return (!this.f28264while || j > 2147483647L) ? Long.valueOf(j) : Integer.valueOf((int) j);
    }

    /* renamed from: while, reason: not valid java name */
    public char m31677while(int i) throws ic1, IOException {
        int i2;
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 * 16;
            mo31633case();
            char c = this.f28252do;
            if (c > '9' || c < '0') {
                if (c <= 'F' && c >= 'A') {
                    i2 = c - 'A';
                } else {
                    if (c < 'a' || c > 'f') {
                        if (c == 26) {
                            throw new ic1(this.f28253else, 3, "EOF");
                        }
                        throw new ic1(this.f28253else, 4, Character.valueOf(this.f28252do));
                    }
                    i2 = c - 'a';
                }
                i3 = i2 + 10;
            } else {
                i3 = c - '0';
            }
            i4 = i6 + i3;
        }
        return (char) i4;
    }
}
