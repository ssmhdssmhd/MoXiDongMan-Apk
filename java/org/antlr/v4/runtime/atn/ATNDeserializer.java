package org.antlr.v4.runtime.atn;

import android.support.v4.Cdefault;
import android.support.v4.Cfinally;
import android.support.v4.Cstatic;
import android.support.v4.ap1;
import android.support.v4.bg2;
import android.support.v4.ca;
import android.support.v4.ce1;
import android.support.v4.de1;
import android.support.v4.ea;
import android.support.v4.f80;
import android.support.v4.fw0;
import android.support.v4.g4;
import android.support.v4.h8;
import android.support.v4.i12;
import android.support.v4.il1;
import android.support.v4.j12;
import android.support.v4.jx;
import android.support.v4.k12;
import android.support.v4.ls0;
import android.support.v4.lx1;
import android.support.v4.ms0;
import android.support.v4.o41;
import android.support.v4.ob1;
import android.support.v4.q7;
import android.support.v4.qs0;
import android.support.v4.rs0;
import android.support.v4.sn0;
import android.support.v4.ts0;
import android.support.v4.u;
import android.support.v4.us0;
import android.support.v4.vs0;
import android.support.v4.ws0;
import android.support.v4.xo1;
import android.support.v4.y72;
import android.support.v4.yo1;
import java.io.InvalidClassException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes3.dex */
public class ATNDeserializer {

    /* renamed from: case, reason: not valid java name */
    private static final UUID f28427case;

    /* renamed from: else, reason: not valid java name */
    private static final List<UUID> f28428else;

    /* renamed from: for, reason: not valid java name */
    private static final UUID f28429for;

    /* renamed from: goto, reason: not valid java name */
    public static final UUID f28430goto;

    /* renamed from: if, reason: not valid java name */
    public static final int f28431if = 3;

    /* renamed from: new, reason: not valid java name */
    private static final UUID f28432new;

    /* renamed from: try, reason: not valid java name */
    private static final UUID f28433try;

    /* renamed from: do, reason: not valid java name */
    private final Cdefault f28434do;

    public interface UnicodeDeserializer {
        int readUnicode(char[] cArr, int i);

        int size();
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNDeserializer$do, reason: invalid class name */
    public static class Cdo implements UnicodeDeserializer {
        @Override // org.antlr.v4.runtime.atn.ATNDeserializer.UnicodeDeserializer
        public int readUnicode(char[] cArr, int i) {
            return ATNDeserializer.m31835catch(cArr[i]);
        }

        @Override // org.antlr.v4.runtime.atn.ATNDeserializer.UnicodeDeserializer
        public int size() {
            return 1;
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNDeserializer$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f28435do;

        static {
            int[] iArr = new int[org.antlr.v4.runtime.atn.Cfor.values().length];
            f28435do = iArr;
            try {
                iArr[org.antlr.v4.runtime.atn.Cfor.CHANNEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.CUSTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.MORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.POP_MODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.PUSH_MODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.SKIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f28435do[org.antlr.v4.runtime.atn.Cfor.TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNDeserializer$if, reason: invalid class name */
    public static class Cif implements UnicodeDeserializer {
        @Override // org.antlr.v4.runtime.atn.ATNDeserializer.UnicodeDeserializer
        public int readUnicode(char[] cArr, int i) {
            return ATNDeserializer.m31836class(cArr, i);
        }

        @Override // org.antlr.v4.runtime.atn.ATNDeserializer.UnicodeDeserializer
        public int size() {
            return 2;
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNDeserializer$new, reason: invalid class name */
    public enum Cnew {
        UNICODE_BMP,
        UNICODE_SMP
    }

    static {
        UUID uuidFromString = UUID.fromString("33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3");
        f28429for = uuidFromString;
        UUID uuidFromString2 = UUID.fromString("1DA0C57D-6C06-438A-9B27-10BCB3CE0F61");
        f28432new = uuidFromString2;
        UUID uuidFromString3 = UUID.fromString("AADB8D7E-AEEF-4415-AD2B-8204D6CF042E");
        f28433try = uuidFromString3;
        UUID uuidFromString4 = UUID.fromString("59627784-3BE5-417A-B9EB-8131A7286089");
        f28427case = uuidFromString4;
        ArrayList arrayList = new ArrayList();
        f28428else = arrayList;
        arrayList.add(uuidFromString);
        arrayList.add(uuidFromString2);
        arrayList.add(uuidFromString3);
        arrayList.add(uuidFromString4);
        f28430goto = uuidFromString4;
    }

    public ATNDeserializer() {
        this(Cdefault.m1306do());
    }

    /* renamed from: case, reason: not valid java name */
    public static UnicodeDeserializer m31834case(Cnew cnew) {
        return cnew == Cnew.UNICODE_BMP ? new Cdo() : new Cif();
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m31835catch(char c) {
        return c;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m31836class(char[] cArr, int i) {
        return (cArr[i + 1] << 16) | cArr[i];
    }

    /* renamed from: const, reason: not valid java name */
    public static long m31837const(char[] cArr, int i) {
        return (m31836class(cArr, i + 2) << 32) | (m31836class(cArr, i) & 4294967295L);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m31838else(UUID uuid, UUID uuid2) {
        List<UUID> list = f28428else;
        int iIndexOf = list.indexOf(uuid);
        return iIndexOf >= 0 && list.indexOf(uuid2) >= iIndexOf;
    }

    /* renamed from: final, reason: not valid java name */
    public static UUID m31839final(char[] cArr, int i) {
        return new UUID(m31837const(cArr, i + 4), m31837const(cArr, i));
    }

    /* renamed from: new, reason: not valid java name */
    private int m31840new(char[] cArr, int i, List<sn0> list, UnicodeDeserializer unicodeDeserializer) {
        int size = i + 1;
        int iM31835catch = m31835catch(cArr[i]);
        for (int i2 = 0; i2 < iM31835catch; i2++) {
            int iM31835catch2 = m31835catch(cArr[size]);
            int i3 = size + 1;
            sn0 sn0Var = new sn0(new int[0]);
            list.add(sn0Var);
            int i4 = i3 + 1;
            if (m31835catch(cArr[i3]) != 0) {
                sn0Var.add(-1);
            }
            size = i4;
            for (int i5 = 0; i5 < iM31835catch2; i5++) {
                int unicode = unicodeDeserializer.readUnicode(cArr, size);
                int size2 = size + unicodeDeserializer.size();
                int unicode2 = unicodeDeserializer.readUnicode(cArr, size2);
                size = size2 + unicodeDeserializer.size();
                sn0Var.m7525do(unicode, unicode2);
            }
        }
        return size;
    }

    /* renamed from: break, reason: not valid java name */
    public Cfinally m31841break(int i, int i2) {
        Cfinally h8Var;
        switch (i) {
            case 0:
                return null;
            case 1:
                h8Var = new h8();
                break;
            case 2:
                h8Var = new xo1();
                break;
            case 3:
                h8Var = new q7();
                break;
            case 4:
                h8Var = new ce1();
                break;
            case 5:
                h8Var = new i12();
                break;
            case 6:
                h8Var = new y72();
                break;
            case 7:
                h8Var = new yo1();
                break;
            case 8:
                h8Var = new ca();
                break;
            case 9:
                h8Var = new k12();
                break;
            case 10:
                h8Var = new j12();
                break;
            case 11:
                h8Var = new de1();
                break;
            case 12:
                h8Var = new fw0();
                break;
            default:
                throw new IllegalArgumentException(String.format(Locale.getDefault(), "The specified state type %d is not valid.", Integer.valueOf(i)));
        }
        h8Var.f1853for = i2;
        return h8Var;
    }

    /* renamed from: do, reason: not valid java name */
    public void m31842do(boolean z) {
        m31845if(z, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    public Cstatic m31843for(char[] cArr) {
        Cfinally next;
        Ccatch ccatchM2306catch;
        char[] cArr2 = (char[]) cArr.clone();
        for (int i = 1; i < cArr2.length; i++) {
            cArr2[i] = (char) (cArr2[i] - 2);
        }
        int iM31835catch = m31835catch(cArr2[0]);
        int i2 = f28431if;
        if (iM31835catch != i2) {
            throw new UnsupportedOperationException(new InvalidClassException(Cstatic.class.getName(), String.format(Locale.getDefault(), "Could not deserialize ATN with version %d (expected %d).", Integer.valueOf(iM31835catch), Integer.valueOf(i2))));
        }
        UUID uuidM31839final = m31839final(cArr2, 1);
        if (!f28428else.contains(uuidM31839final)) {
            throw new UnsupportedOperationException(new InvalidClassException(Cstatic.class.getName(), String.format(Locale.getDefault(), "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID).", uuidM31839final, f28430goto)));
        }
        boolean zM31838else = m31838else(f28432new, uuidM31839final);
        boolean zM31838else2 = m31838else(f28433try, uuidM31839final);
        Cstatic cstatic = new Cstatic(org.antlr.v4.runtime.atn.Cdo.values()[m31835catch(cArr2[9])], m31835catch(cArr2[10]));
        ArrayList<ob1> arrayList = new ArrayList();
        ArrayList<ob1> arrayList2 = new ArrayList();
        int iM31835catch2 = m31835catch(cArr2[11]);
        int i3 = 12;
        int i4 = 0;
        int i5 = 12;
        while (i4 < iM31835catch2) {
            int i6 = i5 + 1;
            int iM31835catch3 = m31835catch(cArr2[i5]);
            if (iM31835catch3 == 0) {
                cstatic.m7598do(null);
                i5 = i6;
            } else {
                int i7 = i6 + 1;
                int iM31835catch4 = m31835catch(cArr2[i6]);
                if (iM31835catch4 == 65535) {
                    iM31835catch4 = -1;
                }
                Cfinally cfinallyM31841break = m31841break(iM31835catch3, iM31835catch4);
                if (iM31835catch3 == i3) {
                    arrayList.add(new ob1((fw0) cfinallyM31841break, Integer.valueOf(m31835catch(cArr2[i7]))));
                    i7++;
                } else if (cfinallyM31841break instanceof ea) {
                    arrayList2.add(new ob1((ea) cfinallyM31841break, Integer.valueOf(m31835catch(cArr2[i7]))));
                    i7++;
                }
                cstatic.m7598do(cfinallyM31841break);
                i5 = i7;
            }
            i4++;
            i3 = 12;
        }
        for (ob1 ob1Var : arrayList) {
            ((fw0) ob1Var.a).f2011switch = cstatic.f6258do.get(((Integer) ob1Var.b).intValue());
        }
        for (ob1 ob1Var2 : arrayList2) {
            ((ea) ob1Var2.a).f1332default = (ca) cstatic.f6258do.get(((Integer) ob1Var2.b).intValue());
        }
        int iM31835catch5 = m31835catch(cArr2[i5]);
        int i8 = i5 + 1;
        int i9 = 0;
        while (i9 < iM31835catch5) {
            ((jx) cstatic.f6258do.get(m31835catch(cArr2[i8]))).f3236throws = true;
            i9++;
            i8++;
        }
        if (zM31838else) {
            int iM31835catch6 = m31835catch(cArr2[i8]);
            i8++;
            int i10 = 0;
            while (i10 < iM31835catch6) {
                ((xo1) cstatic.f6258do.get(m31835catch(cArr2[i8]))).f7999throws = true;
                i10++;
                i8++;
            }
        }
        int i11 = i8 + 1;
        int iM31835catch7 = m31835catch(cArr2[i8]);
        if (cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
            cstatic.f6261goto = new int[iM31835catch7];
        }
        cstatic.f6260for = new xo1[iM31835catch7];
        int i12 = i11;
        for (int i13 = 0; i13 < iM31835catch7; i13++) {
            int i14 = i12 + 1;
            cstatic.f6260for[i13] = (xo1) cstatic.f6258do.get(m31835catch(cArr2[i12]));
            if (cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
                i12 = i14 + 1;
                int iM31835catch8 = m31835catch(cArr2[i14]);
                if (iM31835catch8 == 65535) {
                    iM31835catch8 = -1;
                }
                cstatic.f6261goto[i13] = iM31835catch8;
                if (!m31838else(f28433try, uuidM31839final)) {
                    i14 = i12 + 1;
                    m31835catch(cArr2[i12]);
                    i12 = i14;
                }
            } else {
                i12 = i14;
            }
        }
        cstatic.f6263new = new yo1[iM31835catch7];
        for (Cfinally cfinally : cstatic.f6258do) {
            if (cfinally instanceof yo1) {
                yo1 yo1Var = (yo1) cfinally;
                yo1[] yo1VarArr = cstatic.f6263new;
                int i15 = cfinally.f1853for;
                yo1VarArr[i15] = yo1Var;
                cstatic.f6260for[i15].f7998switch = yo1Var;
            }
        }
        int iM31835catch9 = m31835catch(cArr2[i12]);
        int i16 = i12 + 1;
        int i17 = 0;
        while (i17 < iM31835catch9) {
            cstatic.f6256break.add((y72) cstatic.f6258do.get(m31835catch(cArr2[i16])));
            i17++;
            i16++;
        }
        List<sn0> arrayList3 = new ArrayList<>();
        int iM31840new = m31840new(cArr2, i16, arrayList3, m31834case(Cnew.UNICODE_BMP));
        if (m31838else(f28427case, uuidM31839final)) {
            iM31840new = m31840new(cArr2, iM31840new, arrayList3, m31834case(Cnew.UNICODE_SMP));
        }
        int i18 = iM31840new + 1;
        int i19 = 0;
        for (int iM31835catch10 = m31835catch(cArr2[iM31840new]); i19 < iM31835catch10; iM31835catch10 = iM31835catch10) {
            int iM31835catch11 = m31835catch(cArr2[i18]);
            cstatic.f6258do.get(iM31835catch11).m2311if(m31848try(cstatic, m31835catch(cArr2[i18 + 2]), iM31835catch11, m31835catch(cArr2[i18 + 1]), m31835catch(cArr2[i18 + 3]), m31835catch(cArr2[i18 + 4]), m31835catch(cArr2[i18 + 5]), arrayList3));
            i18 += 6;
            i19++;
        }
        for (Cfinally cfinally2 : cstatic.f6258do) {
            for (int i20 = 0; i20 < cfinally2.m2309for(); i20++) {
                Ccatch ccatchM2306catch2 = cfinally2.m2306catch(i20);
                if (ccatchM2306catch2 instanceof ap1) {
                    ap1 ap1Var = (ap1) ccatchM2306catch2;
                    xo1[] xo1VarArr = cstatic.f6260for;
                    int i21 = ap1Var.f28465do.f1853for;
                    if (!xo1VarArr[i21].f7999throws || ap1Var.f225super != 0) {
                        i21 = -1;
                    }
                    cstatic.f6263new[ap1Var.f28465do.f1853for].m2311if(new f80(ap1Var.f226throw, i21));
                }
            }
        }
        for (Cfinally cfinally3 : cstatic.f6258do) {
            if (cfinally3 instanceof ea) {
                ea eaVar = (ea) cfinally3;
                ca caVar = eaVar.f1332default;
                if (caVar == null) {
                    throw new IllegalStateException();
                }
                if (caVar.f660switch != null) {
                    throw new IllegalStateException();
                }
                caVar.f660switch = eaVar;
            }
            if (cfinally3 instanceof de1) {
                de1 de1Var = (de1) cfinally3;
                for (int i22 = 0; i22 < de1Var.m2309for(); i22++) {
                    Cfinally cfinally4 = de1Var.m2306catch(i22).f28465do;
                    if (cfinally4 instanceof ce1) {
                        ((ce1) cfinally4).f748extends = de1Var;
                    }
                }
            } else if (cfinally3 instanceof k12) {
                k12 k12Var = (k12) cfinally3;
                for (int i23 = 0; i23 < k12Var.m2309for(); i23++) {
                    Cfinally cfinally5 = k12Var.m2306catch(i23).f28465do;
                    if (cfinally5 instanceof j12) {
                        ((j12) cfinally5).f2955default = k12Var;
                    }
                }
            }
        }
        int i24 = i18 + 1;
        int iM31835catch12 = m31835catch(cArr2[i18]);
        int i25 = 1;
        while (i25 <= iM31835catch12) {
            int i26 = i24 + 1;
            jx jxVar = (jx) cstatic.f6258do.get(m31835catch(cArr2[i24]));
            cstatic.f6262if.add(jxVar);
            jxVar.f3235switch = i25 - 1;
            i25++;
            i24 = i26;
        }
        if (cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
            if (zM31838else2) {
                int i27 = i24 + 1;
                cstatic.f6264this = new LexerAction[m31835catch(cArr2[i24])];
                int i28 = 0;
                while (i28 < cstatic.f6264this.length) {
                    int i29 = i27 + 1;
                    org.antlr.v4.runtime.atn.Cfor cfor = org.antlr.v4.runtime.atn.Cfor.values()[m31835catch(cArr2[i27])];
                    int i30 = i29 + 1;
                    int iM31835catch13 = m31835catch(cArr2[i29]);
                    if (iM31835catch13 == 65535) {
                        iM31835catch13 = -1;
                    }
                    int i31 = i30 + 1;
                    int iM31835catch14 = m31835catch(cArr2[i30]);
                    if (iM31835catch14 == 65535) {
                        iM31835catch14 = -1;
                    }
                    cstatic.f6264this[i28] = m31844goto(cfor, iM31835catch13, iM31835catch14);
                    i28++;
                    i27 = i31;
                }
            } else {
                ArrayList arrayList4 = new ArrayList();
                for (Cfinally cfinally6 : cstatic.f6258do) {
                    for (int i32 = 0; i32 < cfinally6.m2309for(); i32++) {
                        Ccatch ccatchM2306catch3 = cfinally6.m2306catch(i32);
                        if (ccatchM2306catch3 instanceof u) {
                            u uVar = (u) ccatchM2306catch3;
                            int i33 = uVar.f6714final;
                            ms0 ms0Var = new ms0(i33, uVar.f6715super);
                            cfinally6.m2304break(i32, new u(ccatchM2306catch3.f28465do, i33, arrayList4.size(), false));
                            arrayList4.add(ms0Var);
                        }
                    }
                }
                cstatic.f6264this = (LexerAction[]) arrayList4.toArray(new LexerAction[arrayList4.size()]);
            }
        }
        m31847this(cstatic);
        if (this.f28434do.m1312new()) {
            m31846super(cstatic);
        }
        if (this.f28434do.m1311if() && cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.PARSER) {
            cstatic.f6261goto = new int[cstatic.f6260for.length];
            for (int i34 = 0; i34 < cstatic.f6260for.length; i34++) {
                cstatic.f6261goto[i34] = cstatic.f6259else + i34 + 1;
            }
            for (int i35 = 0; i35 < cstatic.f6260for.length; i35++) {
                q7 q7Var = new q7();
                q7Var.f1853for = i35;
                cstatic.m7598do(q7Var);
                ca caVar2 = new ca();
                caVar2.f1853for = i35;
                cstatic.m7598do(caVar2);
                q7Var.f1332default = caVar2;
                cstatic.m7602if(q7Var);
                caVar2.f660switch = q7Var;
                if (cstatic.f6260for[i35].f7999throws) {
                    Iterator<Cfinally> it = cstatic.f6258do.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (next.f1853for == i35 && (next instanceof j12)) {
                            Cfinally cfinally7 = next.m2306catch(next.m2309for() - 1).f28465do;
                            if ((cfinally7 instanceof fw0) && cfinally7.f1855new && (cfinally7.m2306catch(0).f28465do instanceof yo1)) {
                                break;
                            }
                        }
                    }
                    if (next == null) {
                        throw new UnsupportedOperationException("Couldn't identify final state of the precedence rule prefix section.");
                    }
                    ccatchM2306catch = ((j12) next).f2955default.m2306catch(0);
                } else {
                    next = cstatic.f6263new[i35];
                    ccatchM2306catch = null;
                }
                Iterator<Cfinally> it2 = cstatic.f6258do.iterator();
                while (it2.hasNext()) {
                    for (Ccatch ccatch : it2.next().f1856try) {
                        if (ccatch != ccatchM2306catch && ccatch.f28465do == next) {
                            ccatch.f28465do = caVar2;
                        }
                    }
                }
                while (cstatic.f6260for[i35].m2309for() > 0) {
                    xo1[] xo1VarArr2 = cstatic.f6260for;
                    q7Var.m2311if(xo1VarArr2[i35].m2310goto(xo1VarArr2[i35].m2309for() - 1));
                }
                cstatic.f6260for[i35].m2311if(new f80(q7Var));
                caVar2.m2311if(new f80(next));
                Cfinally h8Var = new h8();
                cstatic.m7598do(h8Var);
                h8Var.m2311if(new g4(caVar2, cstatic.f6261goto[i35]));
                q7Var.m2311if(new f80(h8Var));
            }
            if (this.f28434do.m1312new()) {
                m31846super(cstatic);
            }
        }
        return cstatic;
    }

    /* renamed from: goto, reason: not valid java name */
    public LexerAction m31844goto(org.antlr.v4.runtime.atn.Cfor cfor, int i, int i2) {
        switch (Cfor.f28435do[cfor.ordinal()]) {
            case 1:
                return new ls0(i);
            case 2:
                return new ms0(i, i2);
            case 3:
                return new qs0(i);
            case 4:
                return rs0.f5910do;
            case 5:
                return ts0.f6690do;
            case 6:
                return new us0(i);
            case 7:
                return vs0.f7339do;
            case 8:
                return new ws0(i);
            default:
                throw new IllegalArgumentException(String.format(Locale.getDefault(), "The specified lexer action type %d is not valid.", cfor));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m31845if(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m31846super(Cstatic cstatic) {
        for (Cfinally cfinally : cstatic.f6258do) {
            if (cfinally != null) {
                m31842do(cfinally.m2308else() || cfinally.m2309for() <= 1);
                if (cfinally instanceof ce1) {
                    m31842do(((ce1) cfinally).f748extends != null);
                }
                if (cfinally instanceof j12) {
                    j12 j12Var = (j12) cfinally;
                    m31842do(j12Var.f2955default != null);
                    m31842do(j12Var.m2309for() == 2);
                    if (j12Var.m2306catch(0).f28465do instanceof i12) {
                        m31842do(j12Var.m2306catch(1).f28465do instanceof fw0);
                        m31842do(!j12Var.f3236throws);
                    } else {
                        if (!(j12Var.m2306catch(0).f28465do instanceof fw0)) {
                            throw new IllegalStateException();
                        }
                        m31842do(j12Var.m2306catch(1).f28465do instanceof i12);
                        m31842do(j12Var.f3236throws);
                    }
                }
                if (cfinally instanceof k12) {
                    m31842do(cfinally.m2309for() == 1);
                    m31842do(cfinally.m2306catch(0).f28465do instanceof j12);
                }
                if (cfinally instanceof fw0) {
                    m31842do(((fw0) cfinally).f2011switch != null);
                }
                if (cfinally instanceof xo1) {
                    m31842do(((xo1) cfinally).f7998switch != null);
                }
                if (cfinally instanceof ea) {
                    m31842do(((ea) cfinally).f1332default != null);
                }
                if (cfinally instanceof ca) {
                    m31842do(((ca) cfinally).f660switch != null);
                }
                if (cfinally instanceof jx) {
                    jx jxVar = (jx) cfinally;
                    m31842do(jxVar.m2309for() <= 1 || jxVar.f3235switch >= 0);
                } else {
                    m31842do(cfinally.m2309for() <= 1 || (cfinally instanceof yo1));
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m31847this(Cstatic cstatic) {
        for (Cfinally cfinally : cstatic.f6258do) {
            if ((cfinally instanceof j12) && cstatic.f6260for[cfinally.f1853for].f7999throws) {
                Cfinally cfinally2 = cfinally.m2306catch(cfinally.m2309for() - 1).f28465do;
                if ((cfinally2 instanceof fw0) && cfinally2.f1855new && (cfinally2.m2306catch(0).f28465do instanceof yo1)) {
                    ((j12) cfinally).f2956extends = true;
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m31848try(Cstatic cstatic, int i, int i2, int i3, int i4, int i5, int i6, List<sn0> list) {
        Cfinally cfinally = cstatic.f6258do.get(i3);
        switch (i) {
            case 1:
                return new f80(cfinally);
            case 2:
                return i6 != 0 ? new il1(cfinally, -1, i5) : new il1(cfinally, i4, i5);
            case 3:
                return new ap1((xo1) cstatic.f6258do.get(i4), i5, i6, cfinally);
            case 4:
                return new Ccase(cfinally, i4, i5, i6 != 0);
            case 5:
                return i6 != 0 ? new g4(cfinally, -1) : new g4(cfinally, i4);
            case 6:
                return new u(cfinally, i4, i5, i6 != 0);
            case 7:
                return new lx1(cfinally, list.get(i4));
            case 8:
                return new o41(cfinally, list.get(i4));
            case 9:
                return new bg2(cfinally);
            case 10:
                return new Ctry(cfinally, i4);
            default:
                throw new IllegalArgumentException("The specified transition type is not valid.");
        }
    }

    public ATNDeserializer(Cdefault cdefault) {
        this.f28434do = cdefault == null ? Cdefault.m1306do() : cdefault;
    }
}
