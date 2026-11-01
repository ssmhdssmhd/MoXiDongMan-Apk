package org.mozilla.classfile;

import android.support.v4.ab2;
import org.mozilla.classfile.Cfor;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.UintMap;

/* renamed from: org.mozilla.classfile.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry {

    /* renamed from: const, reason: not valid java name */
    private static final int f33905const = 256;

    /* renamed from: default, reason: not valid java name */
    public static final byte f33906default = 16;

    /* renamed from: extends, reason: not valid java name */
    public static final byte f33907extends = 15;

    /* renamed from: final, reason: not valid java name */
    public static final byte f33908final = 7;

    /* renamed from: finally, reason: not valid java name */
    public static final byte f33909finally = 18;

    /* renamed from: import, reason: not valid java name */
    public static final byte f33910import = 8;

    /* renamed from: native, reason: not valid java name */
    public static final byte f33911native = 3;

    /* renamed from: package, reason: not valid java name */
    private static final int f33912package = 65535;

    /* renamed from: public, reason: not valid java name */
    public static final byte f33913public = 4;

    /* renamed from: return, reason: not valid java name */
    public static final byte f33914return = 5;

    /* renamed from: static, reason: not valid java name */
    public static final byte f33915static = 6;

    /* renamed from: super, reason: not valid java name */
    public static final byte f33916super = 9;

    /* renamed from: switch, reason: not valid java name */
    public static final byte f33917switch = 12;

    /* renamed from: throw, reason: not valid java name */
    public static final byte f33918throw = 10;

    /* renamed from: throws, reason: not valid java name */
    public static final byte f33919throws = 1;

    /* renamed from: while, reason: not valid java name */
    public static final byte f33920while = 11;

    /* renamed from: do, reason: not valid java name */
    private Cfor f33925do;

    /* renamed from: if, reason: not valid java name */
    private UintMap f33929if = new UintMap();

    /* renamed from: for, reason: not valid java name */
    private ObjToIntMap f33927for = new ObjToIntMap();

    /* renamed from: new, reason: not valid java name */
    private ObjToIntMap f33930new = new ObjToIntMap();

    /* renamed from: try, reason: not valid java name */
    private ObjToIntMap f33932try = new ObjToIntMap();

    /* renamed from: case, reason: not valid java name */
    private ObjToIntMap f33922case = new ObjToIntMap();

    /* renamed from: else, reason: not valid java name */
    private ObjToIntMap f33926else = new ObjToIntMap();

    /* renamed from: break, reason: not valid java name */
    private UintMap f33921break = new UintMap();

    /* renamed from: catch, reason: not valid java name */
    private UintMap f33923catch = new UintMap();

    /* renamed from: this, reason: not valid java name */
    private int f33931this = 1;

    /* renamed from: class, reason: not valid java name */
    private byte[] f33924class = new byte[256];

    /* renamed from: goto, reason: not valid java name */
    private int f33928goto = 0;

    public Ctry(Cfor cfor) {
        this.f33925do = cfor;
    }

    /* renamed from: const, reason: not valid java name */
    private short m37907const(String str, String str2) throws RuntimeException {
        short sM37915final = m37915final(str);
        short sM37915final2 = m37915final(str2);
        m37908super(5);
        byte[] bArr = this.f33924class;
        int i = this.f33928goto;
        int i2 = i + 1;
        this.f33928goto = i2;
        bArr[i] = 12;
        int iV = Cfor.V(sM37915final, bArr, i2);
        this.f33928goto = iV;
        this.f33928goto = Cfor.V(sM37915final2, this.f33924class, iV);
        this.f33923catch.put(this.f33931this, 12);
        int i3 = this.f33931this;
        this.f33931this = i3 + 1;
        return (short) i3;
    }

    /* renamed from: super, reason: not valid java name */
    private void m37908super(int i) {
        int i2 = this.f33928goto;
        int i3 = i2 + i;
        byte[] bArr = this.f33924class;
        if (i3 > bArr.length) {
            int length = bArr.length * 2;
            if (i2 + i > length) {
                length = i2 + i;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.f33924class = bArr2;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public short m37909break(String str, String str2, int i) {
        Cnew cnew = new Cnew(18, i, str, str2);
        int i2 = this.f33926else.get(cnew, -1);
        if (i2 == -1) {
            short sM37907const = m37907const(str, str2);
            m37908super(5);
            byte[] bArr = this.f33924class;
            int i3 = this.f33928goto;
            int i4 = i3 + 1;
            this.f33928goto = i4;
            bArr[i3] = 18;
            int iV = Cfor.V(i, bArr, i4);
            this.f33928goto = iV;
            this.f33928goto = Cfor.V(sM37907const, this.f33924class, iV);
            i2 = this.f33931this;
            this.f33931this = i2 + 1;
            this.f33926else.put(cnew, i2);
            m37923return(i2, str2);
            this.f33923catch.put(i2, 18);
        }
        return (short) i2;
    }

    /* renamed from: case, reason: not valid java name */
    public int m37910case(Object obj) {
        if ((obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short)) {
            return m37921new(((Number) obj).intValue());
        }
        if (obj instanceof Character) {
            return m37921new(((Character) obj).charValue());
        }
        if (obj instanceof Boolean) {
            return m37921new(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return m37916for(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return m37927try(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return m37918if(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return m37914else((String) obj);
        }
        if (obj instanceof Cfor.C0485for) {
            return m37911catch((Cfor.C0485for) obj);
        }
        throw new IllegalArgumentException("value " + obj);
    }

    /* renamed from: catch, reason: not valid java name */
    public short m37911catch(Cfor.C0485for c0485for) {
        int i = this.f33926else.get(c0485for, -1);
        if (i == -1) {
            byte b = c0485for.f33860do;
            short sM37917goto = b <= 4 ? m37917goto(c0485for.f33862if, c0485for.f33861for, c0485for.f33863new) : b == 9 ? m37925this(c0485for.f33862if, c0485for.f33861for, c0485for.f33863new) : m37912class(c0485for.f33862if, c0485for.f33861for, c0485for.f33863new);
            m37908super(4);
            byte[] bArr = this.f33924class;
            int i2 = this.f33928goto;
            int i3 = i2 + 1;
            this.f33928goto = i3;
            bArr[i2] = 15;
            int i4 = i3 + 1;
            this.f33928goto = i4;
            bArr[i3] = c0485for.f33860do;
            this.f33928goto = Cfor.V(sM37917goto, bArr, i4);
            i = this.f33931this;
            this.f33931this = i + 1;
            this.f33926else.put(c0485for, i);
            this.f33923catch.put(i, 15);
        }
        return (short) i;
    }

    /* renamed from: class, reason: not valid java name */
    public short m37912class(String str, String str2, String str3) throws RuntimeException {
        Celse celse = new Celse(str, str2, str3);
        int i = this.f33932try.get(celse, -1);
        if (i == -1) {
            short sM37907const = m37907const(str2, str3);
            short sM37913do = m37913do(str);
            m37908super(5);
            byte[] bArr = this.f33924class;
            int i2 = this.f33928goto;
            int i3 = i2 + 1;
            this.f33928goto = i3;
            bArr[i2] = 10;
            int iV = Cfor.V(sM37913do, bArr, i3);
            this.f33928goto = iV;
            this.f33928goto = Cfor.V(sM37907const, this.f33924class, iV);
            i = this.f33931this;
            this.f33931this = i + 1;
            this.f33932try.put(celse, i);
        }
        m37923return(i, celse);
        this.f33923catch.put(i, 10);
        return (short) i;
    }

    /* renamed from: do, reason: not valid java name */
    public short m37913do(String str) {
        String str2;
        int i = this.f33922case.get(str, -1);
        if (i == -1) {
            if (str.indexOf(46) > 0) {
                String strJ = Cfor.J(str);
                int i2 = this.f33922case.get(strJ, -1);
                if (i2 != -1) {
                    this.f33922case.put(str, i2);
                }
                str2 = strJ;
                i = i2;
            } else {
                str2 = str;
            }
            if (i == -1) {
                short sM37915final = m37915final(str2);
                m37908super(3);
                byte[] bArr = this.f33924class;
                int i3 = this.f33928goto;
                int i4 = i3 + 1;
                this.f33928goto = i4;
                bArr[i3] = 7;
                this.f33928goto = Cfor.V(sM37915final, bArr, i4);
                i = this.f33931this;
                this.f33931this = i + 1;
                this.f33922case.put(str2, i);
                if (!str.equals(str2)) {
                    this.f33922case.put(str, i);
                }
            }
        }
        m37923return(i, str);
        this.f33923catch.put(i, 7);
        return (short) i;
    }

    /* renamed from: else, reason: not valid java name */
    public int m37914else(String str) throws RuntimeException {
        int iM37915final = m37915final(str) & ab2.f80for;
        int i = this.f33929if.getInt(iM37915final, -1);
        if (i == -1) {
            i = this.f33931this;
            this.f33931this = i + 1;
            m37908super(3);
            byte[] bArr = this.f33924class;
            int i2 = this.f33928goto;
            int i3 = i2 + 1;
            this.f33928goto = i3;
            bArr[i2] = 8;
            this.f33928goto = Cfor.V(iM37915final, bArr, i3);
            this.f33929if.put(iM37915final, i);
        }
        this.f33923catch.put(i, 8);
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public short m37915final(String str) {
        int i;
        int i2 = this.f33927for.get(str, -1);
        if (i2 == -1) {
            int length = str.length();
            boolean z = false;
            if (length > 65535) {
                z = true;
                if (z) {
                    throw new IllegalArgumentException("Too big string");
                }
            } else {
                m37908super((length * 3) + 3);
                int i3 = this.f33928goto;
                this.f33924class[i3] = 1;
                int i4 = i3 + 1 + 2;
                char[] cArrF = this.f33925do.F(length);
                str.getChars(0, length, cArrF, 0);
                for (int i5 = 0; i5 != length; i5++) {
                    char c = cArrF[i5];
                    if (c != 0 && c <= 127) {
                        i = i4 + 1;
                        this.f33924class[i4] = (byte) c;
                    } else if (c > 2047) {
                        byte[] bArr = this.f33924class;
                        int i6 = i4 + 1;
                        bArr[i4] = (byte) ((c >> '\f') | 224);
                        int i7 = i6 + 1;
                        bArr[i6] = (byte) (((c >> 6) & 63) | 128);
                        i = i7 + 1;
                        bArr[i7] = (byte) ((c & '?') | 128);
                    } else {
                        byte[] bArr2 = this.f33924class;
                        int i8 = i4 + 1;
                        bArr2[i4] = (byte) ((c >> 6) | 192);
                        i4 = i8 + 1;
                        bArr2[i8] = (byte) ((c & '?') | 128);
                    }
                    i4 = i;
                }
                int i9 = this.f33928goto;
                int i10 = i4 - ((i9 + 1) + 2);
                if (i10 <= 65535) {
                    byte[] bArr3 = this.f33924class;
                    bArr3[i9 + 1] = (byte) (i10 >>> 8);
                    bArr3[i9 + 2] = (byte) i10;
                    this.f33928goto = i4;
                    i2 = this.f33931this;
                    this.f33931this = i2 + 1;
                    this.f33927for.put(str, i2);
                }
                if (z) {
                }
            }
        }
        m37923return(i2, str);
        this.f33923catch.put(i2, 1);
        return (short) i2;
    }

    /* renamed from: for, reason: not valid java name */
    public int m37916for(float f) throws RuntimeException {
        m37908super(5);
        byte[] bArr = this.f33924class;
        int i = this.f33928goto;
        this.f33928goto = i + 1;
        bArr[i] = 4;
        this.f33928goto = Cfor.W(Float.floatToIntBits(f), this.f33924class, this.f33928goto);
        this.f33923catch.put(this.f33931this, 4);
        int i2 = this.f33931this;
        this.f33931this = i2 + 1;
        return i2;
    }

    /* renamed from: goto, reason: not valid java name */
    public short m37917goto(String str, String str2, String str3) {
        Celse celse = new Celse(str, str2, str3);
        int i = this.f33930new.get(celse, -1);
        if (i == -1) {
            short sM37907const = m37907const(str2, str3);
            short sM37913do = m37913do(str);
            m37908super(5);
            byte[] bArr = this.f33924class;
            int i2 = this.f33928goto;
            int i3 = i2 + 1;
            this.f33928goto = i3;
            bArr[i2] = 9;
            int iV = Cfor.V(sM37913do, bArr, i3);
            this.f33928goto = iV;
            this.f33928goto = Cfor.V(sM37907const, this.f33924class, iV);
            i = this.f33931this;
            this.f33931this = i + 1;
            this.f33930new.put(celse, i);
        }
        m37923return(i, celse);
        this.f33923catch.put(i, 9);
        return (short) i;
    }

    /* renamed from: if, reason: not valid java name */
    public int m37918if(double d) throws RuntimeException {
        m37908super(9);
        byte[] bArr = this.f33924class;
        int i = this.f33928goto;
        this.f33928goto = i + 1;
        bArr[i] = 6;
        this.f33928goto = Cfor.X(Double.doubleToLongBits(d), this.f33924class, this.f33928goto);
        int i2 = this.f33931this;
        this.f33931this = i2 + 2;
        this.f33923catch.put(i2, 6);
        return i2;
    }

    /* renamed from: import, reason: not valid java name */
    public int m37919import(String str, int i, int i2) {
        int i3 = 65535;
        if ((i2 - i) * 3 <= 65535) {
            return i2;
        }
        while (i != i2) {
            char cCharAt = str.charAt(i);
            i3 = (cCharAt == 0 || cCharAt > 127) ? cCharAt < 2047 ? i3 - 2 : i3 - 3 : i3 - 1;
            if (i3 < 0) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: native, reason: not valid java name */
    public int m37920native() {
        return this.f33928goto + 2;
    }

    /* renamed from: new, reason: not valid java name */
    public int m37921new(int i) throws RuntimeException {
        m37908super(5);
        byte[] bArr = this.f33924class;
        int i2 = this.f33928goto;
        int i3 = i2 + 1;
        this.f33928goto = i3;
        bArr[i2] = 3;
        this.f33928goto = Cfor.W(i, bArr, i3);
        this.f33923catch.put(this.f33931this, 3);
        int i4 = this.f33931this;
        this.f33931this = i4 + 1;
        return (short) i4;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m37922public(String str) {
        int length = str.length();
        if (length * 3 <= 65535) {
            return true;
        }
        return length <= 65535 && length == m37919import(str, 0, length);
    }

    /* renamed from: return, reason: not valid java name */
    public void m37923return(int i, Object obj) throws RuntimeException {
        this.f33921break.put(i, obj);
    }

    /* renamed from: static, reason: not valid java name */
    public int m37924static(byte[] bArr, int i) {
        int iV = Cfor.V((short) this.f33931this, bArr, i);
        System.arraycopy(this.f33924class, 0, bArr, iV, this.f33928goto);
        return iV + this.f33928goto;
    }

    /* renamed from: this, reason: not valid java name */
    public short m37925this(String str, String str2, String str3) throws RuntimeException {
        short sM37907const = m37907const(str2, str3);
        short sM37913do = m37913do(str);
        m37908super(5);
        byte[] bArr = this.f33924class;
        int i = this.f33928goto;
        int i2 = i + 1;
        this.f33928goto = i2;
        bArr[i] = 11;
        int iV = Cfor.V(sM37913do, bArr, i2);
        this.f33928goto = iV;
        this.f33928goto = Cfor.V(sM37907const, this.f33924class, iV);
        m37923return(this.f33931this, new Celse(str, str2, str3));
        this.f33923catch.put(this.f33931this, 11);
        int i3 = this.f33931this;
        this.f33931this = i3 + 1;
        return (short) i3;
    }

    /* renamed from: throw, reason: not valid java name */
    public Object m37926throw(int i) {
        return this.f33921break.getObject(i);
    }

    /* renamed from: try, reason: not valid java name */
    public int m37927try(long j) throws RuntimeException {
        m37908super(9);
        byte[] bArr = this.f33924class;
        int i = this.f33928goto;
        int i2 = i + 1;
        this.f33928goto = i2;
        bArr[i] = 5;
        this.f33928goto = Cfor.X(j, bArr, i2);
        int i3 = this.f33931this;
        this.f33931this = i3 + 2;
        this.f33923catch.put(i3, 5);
        return i3;
    }

    /* renamed from: while, reason: not valid java name */
    public byte m37928while(int i) {
        return (byte) this.f33923catch.getInt(i, 0);
    }
}
