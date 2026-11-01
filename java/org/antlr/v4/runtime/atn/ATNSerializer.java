package org.antlr.v4.runtime.atn;

import android.support.v4.Cfinally;
import android.support.v4.Cstatic;
import android.support.v4.ap1;
import android.support.v4.ea;
import android.support.v4.fw0;
import android.support.v4.g4;
import android.support.v4.il1;
import android.support.v4.jx;
import android.support.v4.ls0;
import android.support.v4.lx1;
import android.support.v4.ms0;
import android.support.v4.qs0;
import android.support.v4.rn0;
import android.support.v4.sn0;
import android.support.v4.u;
import android.support.v4.us0;
import android.support.v4.ws0;
import android.support.v4.xo1;
import android.support.v4.y72;
import java.io.InvalidClassException;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.antlr.v4.runtime.atn.ATNDeserializer;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class ATNSerializer {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f28437for = false;

    /* renamed from: do, reason: not valid java name */
    public Cstatic f28438do;

    /* renamed from: if, reason: not valid java name */
    private List<String> f28439if;

    public interface CodePointSerializer {
        void serializeCodePoint(org.antlr.v4.runtime.misc.Cdo cdo, int i);
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNSerializer$do, reason: invalid class name */
    public class Cdo implements CodePointSerializer {
        public Cdo() {
        }

        @Override // org.antlr.v4.runtime.atn.ATNSerializer.CodePointSerializer
        public void serializeCodePoint(org.antlr.v4.runtime.misc.Cdo cdo, int i) {
            cdo.m32018do(i);
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNSerializer$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f28441do;

        static {
            int[] iArr = new int[org.antlr.v4.runtime.atn.Cfor.values().length];
            f28441do = iArr;
            try {
                iArr[org.antlr.v4.runtime.atn.Cfor.CHANNEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.CUSTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.MORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.POP_MODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.PUSH_MODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.SKIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f28441do[org.antlr.v4.runtime.atn.Cfor.TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.ATNSerializer$if, reason: invalid class name */
    public class Cif implements CodePointSerializer {
        public Cif() {
        }

        @Override // org.antlr.v4.runtime.atn.ATNSerializer.CodePointSerializer
        public void serializeCodePoint(org.antlr.v4.runtime.misc.Cdo cdo, int i) {
            ATNSerializer.this.m31849break(cdo, i);
        }
    }

    public ATNSerializer(Cstatic cstatic) {
        this.f28438do = cstatic;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m31849break(org.antlr.v4.runtime.misc.Cdo cdo, int i) {
        cdo.m32018do((char) i);
        cdo.m32018do((char) (i >> 16));
    }

    /* renamed from: case, reason: not valid java name */
    public static char[] m31850case(Cstatic cstatic) {
        return org.antlr.v4.runtime.misc.Cfor.m32036const(m31858try(cstatic));
    }

    /* renamed from: catch, reason: not valid java name */
    private void m31851catch(org.antlr.v4.runtime.misc.Cdo cdo, long j) {
        m31849break(cdo, (int) j);
        m31849break(cdo, (int) (j >> 32));
    }

    /* renamed from: class, reason: not valid java name */
    private static void m31852class(org.antlr.v4.runtime.misc.Cdo cdo, Collection<sn0> collection, CodePointSerializer codePointSerializer) {
        cdo.m32018do(collection.size());
        for (sn0 sn0Var : collection) {
            boolean zContains = sn0Var.contains(-1);
            if (zContains && sn0Var.m7521catch().get(0).f5889if == -1) {
                cdo.m32018do(sn0Var.m7521catch().size() - 1);
            } else {
                cdo.m32018do(sn0Var.m7521catch().size());
            }
            cdo.m32018do(zContains ? 1 : 0);
            for (rn0 rn0Var : sn0Var.m7521catch()) {
                int i = rn0Var.f5888do;
                if (i != -1) {
                    codePointSerializer.serializeCodePoint(cdo, i);
                } else if (rn0Var.f5889if != -1) {
                    codePointSerializer.serializeCodePoint(cdo, 0);
                }
                codePointSerializer.serializeCodePoint(cdo, rn0Var.f5889if);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m31853const(org.antlr.v4.runtime.misc.Cdo cdo, UUID uuid) {
        m31851catch(cdo, uuid.getLeastSignificantBits());
        m31851catch(cdo, uuid.getMostSignificantBits());
    }

    /* renamed from: else, reason: not valid java name */
    public static String m31855else(Cstatic cstatic) {
        return new String(m31850case(cstatic));
    }

    /* renamed from: if, reason: not valid java name */
    private int m31856if(StringBuilder sb, char[] cArr, int i, int i2, int i3, ATNDeserializer.UnicodeDeserializer unicodeDeserializer) {
        int i4 = 0;
        while (i4 < i2) {
            int i5 = i + 1;
            int iM31835catch = ATNDeserializer.m31835catch(cArr[i]);
            sb.append(i4 + i3);
            sb.append(":");
            int size = i5 + 1;
            boolean z = cArr[i5] != 0;
            if (z) {
                sb.append(m31860goto(-1));
            }
            for (int i6 = 0; i6 < iM31835catch; i6++) {
                if (z || i6 > 0) {
                    sb.append(", ");
                }
                int unicode = unicodeDeserializer.readUnicode(cArr, size);
                int size2 = size + unicodeDeserializer.size();
                int unicode2 = unicodeDeserializer.readUnicode(cArr, size2);
                size = size2 + unicodeDeserializer.size();
                sb.append(m31860goto(unicode));
                sb.append("..");
                sb.append(m31860goto(unicode2));
            }
            sb.append("\n");
            i4++;
            i = size;
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m31857new(Cstatic cstatic, List<String> list) {
        return new ATNSerializer(cstatic, list).m31859for(org.antlr.v4.runtime.misc.Cfor.m32036const(m31858try(cstatic)));
    }

    /* renamed from: try, reason: not valid java name */
    public static org.antlr.v4.runtime.misc.Cdo m31858try(Cstatic cstatic) {
        return new ATNSerializer(cstatic).m31861this();
    }

    /* renamed from: for, reason: not valid java name */
    public String m31859for(char[] cArr) {
        int i;
        String str;
        char[] cArr2 = (char[]) cArr.clone();
        for (int i2 = 1; i2 < cArr2.length; i2++) {
            cArr2[i2] = (char) (cArr2[i2] - 2);
        }
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        int iM31835catch = ATNDeserializer.m31835catch(cArr2[0]);
        int i4 = ATNDeserializer.f28431if;
        if (iM31835catch != i4) {
            throw new UnsupportedOperationException(new InvalidClassException(Cstatic.class.getName(), String.format("Could not deserialize ATN with version %d (expected %d).", Integer.valueOf(iM31835catch), Integer.valueOf(i4))));
        }
        UUID uuidM31839final = ATNDeserializer.m31839final(cArr2, 1);
        UUID uuid = ATNDeserializer.f28430goto;
        if (!uuidM31839final.equals(uuid)) {
            throw new UnsupportedOperationException(new InvalidClassException(Cstatic.class.getName(), String.format(Locale.getDefault(), "Could not deserialize ATN with UUID %s (expected %s).", uuidM31839final, uuid)));
        }
        int iM31835catch2 = ATNDeserializer.m31835catch(cArr2[10]);
        sb.append("max type ");
        sb.append(iM31835catch2);
        sb.append("\n");
        int iM31835catch3 = ATNDeserializer.m31835catch(cArr2[11]);
        int i5 = 12;
        for (int i6 = 0; i6 < iM31835catch3; i6++) {
            int i7 = i5 + 1;
            int iM31835catch4 = ATNDeserializer.m31835catch(cArr2[i5]);
            if (iM31835catch4 == 0) {
                i5 = i7;
            } else {
                int i8 = i7 + 1;
                int iM31835catch5 = ATNDeserializer.m31835catch(cArr2[i7]);
                if (iM31835catch5 == 65535) {
                    iM31835catch5 = -1;
                }
                if (iM31835catch4 == 12) {
                    i = i8 + 1;
                    str = Cclass.f28652do + ATNDeserializer.m31835catch(cArr2[i8]);
                } else if (iM31835catch4 == 4 || iM31835catch4 == 5 || iM31835catch4 == 3) {
                    i = i8 + 1;
                    str = Cclass.f28652do + ATNDeserializer.m31835catch(cArr2[i8]);
                } else {
                    i = i8;
                    str = "";
                }
                sb.append(i6);
                sb.append(":");
                sb.append(Cfinally.f1845return.get(iM31835catch4));
                sb.append(Cclass.f28652do);
                sb.append(iM31835catch5);
                sb.append(str);
                sb.append("\n");
                i5 = i;
            }
        }
        int i9 = i5 + 1;
        int iM31835catch6 = ATNDeserializer.m31835catch(cArr2[i5]);
        int i10 = 0;
        while (i10 < iM31835catch6) {
            ATNDeserializer.m31835catch(cArr2[i9]);
            i10++;
            i9++;
        }
        int i11 = i9 + 1;
        int iM31835catch7 = ATNDeserializer.m31835catch(cArr2[i9]);
        int i12 = 0;
        while (i12 < iM31835catch7) {
            ATNDeserializer.m31835catch(cArr2[i11]);
            i12++;
            i11++;
        }
        int i13 = i11 + 1;
        int iM31835catch8 = ATNDeserializer.m31835catch(cArr2[i11]);
        for (int i14 = 0; i14 < iM31835catch8; i14++) {
            int i15 = i13 + 1;
            int iM31835catch9 = ATNDeserializer.m31835catch(cArr2[i13]);
            if (this.f28438do.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
                int i16 = i15 + 1;
                int iM31835catch10 = ATNDeserializer.m31835catch(cArr2[i15]);
                sb.append("rule ");
                sb.append(i14);
                sb.append(":");
                sb.append(iM31835catch9);
                sb.append(Cclass.f28652do);
                sb.append(iM31835catch10);
                sb.append('\n');
                i13 = i16;
            } else {
                sb.append("rule ");
                sb.append(i14);
                sb.append(":");
                sb.append(iM31835catch9);
                sb.append('\n');
                i13 = i15;
            }
        }
        int i17 = i13 + 1;
        int iM31835catch11 = ATNDeserializer.m31835catch(cArr2[i13]);
        int i18 = 0;
        while (i18 < iM31835catch11) {
            int i19 = i17 + 1;
            int iM31835catch12 = ATNDeserializer.m31835catch(cArr2[i17]);
            sb.append("mode ");
            sb.append(i18);
            sb.append(":");
            sb.append(iM31835catch12);
            sb.append('\n');
            i18++;
            i17 = i19;
        }
        int iM31835catch13 = ATNDeserializer.m31835catch(cArr2[i17]);
        int iM31856if = m31856if(sb, cArr2, i17 + 1, iM31835catch13, 0, ATNDeserializer.m31834case(ATNDeserializer.Cnew.UNICODE_BMP));
        int iM31856if2 = m31856if(sb, cArr2, iM31856if + 1, ATNDeserializer.m31835catch(cArr2[iM31856if]), iM31835catch13, ATNDeserializer.m31834case(ATNDeserializer.Cnew.UNICODE_SMP));
        int i20 = iM31856if2 + 1;
        int iM31835catch14 = ATNDeserializer.m31835catch(cArr2[iM31856if2]);
        for (int i21 = 0; i21 < iM31835catch14; i21++) {
            int iM31835catch15 = ATNDeserializer.m31835catch(cArr2[i20]);
            int iM31835catch16 = ATNDeserializer.m31835catch(cArr2[i20 + 1]);
            int iM31835catch17 = ATNDeserializer.m31835catch(cArr2[i20 + 2]);
            int iM31835catch18 = ATNDeserializer.m31835catch(cArr2[i20 + 3]);
            int iM31835catch19 = ATNDeserializer.m31835catch(cArr2[i20 + 4]);
            int iM31835catch20 = ATNDeserializer.m31835catch(cArr2[i20 + 5]);
            sb.append(iM31835catch15);
            sb.append("->");
            sb.append(iM31835catch16);
            sb.append(Cclass.f28652do);
            sb.append(Ccatch.f28456class.get(iM31835catch17));
            sb.append(Cclass.f28652do);
            sb.append(iM31835catch18);
            sb.append(",");
            sb.append(iM31835catch19);
            sb.append(",");
            sb.append(iM31835catch20);
            sb.append("\n");
            i20 += 6;
        }
        int i22 = i20 + 1;
        int iM31835catch21 = ATNDeserializer.m31835catch(cArr2[i20]);
        int i23 = 0;
        while (i23 < iM31835catch21) {
            int i24 = i22 + 1;
            int iM31835catch22 = ATNDeserializer.m31835catch(cArr2[i22]);
            sb.append(i23);
            sb.append(":");
            sb.append(iM31835catch22);
            sb.append("\n");
            i23++;
            i22 = i24;
        }
        if (this.f28438do.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
            int i25 = i22 + 1;
            int iM31835catch23 = ATNDeserializer.m31835catch(cArr2[i22]);
            while (i3 < iM31835catch23) {
                int i26 = i25 + 1;
                org.antlr.v4.runtime.atn.Cfor cfor = org.antlr.v4.runtime.atn.Cfor.values()[ATNDeserializer.m31835catch(cArr2[i25])];
                int i27 = i26 + 1;
                ATNDeserializer.m31835catch(cArr2[i26]);
                ATNDeserializer.m31835catch(cArr2[i27]);
                i3++;
                i25 = i27 + 1;
            }
        }
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public String m31860goto(int i) {
        if (i == -1) {
            return "EOF";
        }
        if (this.f28438do.f6257case != org.antlr.v4.runtime.atn.Cdo.LEXER || i < 0 || i > 65535) {
            List<String> list = this.f28439if;
            return (list == null || i < 0 || i >= list.size()) ? String.valueOf(i) : this.f28439if.get(i);
        }
        if (i == 12) {
            return "'\\f'";
        }
        if (i == 13) {
            return "'\\r'";
        }
        if (i == 39) {
            return "'\\''";
        }
        if (i == 92) {
            return "'\\\\'";
        }
        switch (i) {
            case 8:
                return "'\\b'";
            case 9:
                return "'\\t'";
            case 10:
                return "'\\n'";
            default:
                char c = (char) i;
                if (Character.UnicodeBlock.of(c) == Character.UnicodeBlock.BASIC_LATIN && !Character.isISOControl(c)) {
                    return '\'' + Character.toString(c) + '\'';
                }
                return "'\\u" + Integer.toHexString(i | 65536).toUpperCase().substring(1, 5) + "'";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: this, reason: not valid java name */
    public org.antlr.v4.runtime.misc.Cdo m31861this() {
        int i;
        int i2;
        int iIntValue;
        int i3;
        int i4;
        int i5;
        org.antlr.v4.runtime.misc.Cdo cdo = new org.antlr.v4.runtime.misc.Cdo();
        cdo.m32018do(ATNDeserializer.f28431if);
        m31853const(cdo, ATNDeserializer.f28430goto);
        cdo.m32018do(this.f28438do.f6257case.ordinal());
        cdo.m32018do(this.f28438do.f6259else);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        org.antlr.v4.runtime.misc.Cdo cdo2 = new org.antlr.v4.runtime.misc.Cdo();
        org.antlr.v4.runtime.misc.Cdo cdo3 = new org.antlr.v4.runtime.misc.Cdo();
        cdo.m32018do(this.f28438do.f6258do.size());
        Iterator<Cfinally> it = this.f28438do.f6258do.iterator();
        int iM2309for = 0;
        while (true) {
            i = 7;
            if (!it.hasNext()) {
                break;
            }
            Cfinally next = it.next();
            if (next == null) {
                cdo.m32018do(0);
            } else {
                int iMo822new = next.mo822new();
                if ((next instanceof jx) && ((jx) next).f3236throws) {
                    cdo2.m32018do(next.f1854if);
                }
                if ((next instanceof xo1) && ((xo1) next).f7999throws) {
                    cdo3.m32018do(next.f1854if);
                }
                cdo.m32018do(iMo822new);
                int i6 = next.f1853for;
                if (i6 == -1) {
                    cdo.m32018do(65535);
                } else {
                    cdo.m32018do(i6);
                }
                if (next.mo822new() == 12) {
                    cdo.m32018do(((fw0) next).f2011switch.f1854if);
                } else if (next instanceof ea) {
                    cdo.m32018do(((ea) next).f1332default.f1854if);
                }
                if (next.mo822new() != 7) {
                    iM2309for += next.m2309for();
                }
                for (int i7 = 0; i7 < next.m2309for(); i7++) {
                    Ccatch ccatchM2306catch = next.m2306catch(i7);
                    int iIntValue2 = Ccatch.f28457const.get(ccatchM2306catch.getClass()).intValue();
                    if (iIntValue2 == 7 || iIntValue2 == 8) {
                        linkedHashMap.put(((lx1) ccatchM2306catch).f3790final, Boolean.TRUE);
                    }
                }
            }
        }
        cdo.m32018do(cdo2.m32029throw());
        for (int i8 = 0; i8 < cdo2.m32029throw(); i8++) {
            cdo.m32018do(cdo2.m32015catch(i8));
        }
        cdo.m32018do(cdo3.m32029throw());
        for (int i9 = 0; i9 < cdo3.m32029throw(); i9++) {
            cdo.m32018do(cdo3.m32015catch(i9));
        }
        int length = this.f28438do.f6260for.length;
        cdo.m32018do(length);
        for (int i10 = 0; i10 < length; i10++) {
            cdo.m32018do(this.f28438do.f6260for[i10].f1854if);
            Cstatic cstatic = this.f28438do;
            if (cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
                int[] iArr = cstatic.f6261goto;
                if (iArr[i10] == -1) {
                    cdo.m32018do(65535);
                } else {
                    cdo.m32018do(iArr[i10]);
                }
            }
        }
        int size = this.f28438do.f6256break.size();
        cdo.m32018do(size);
        if (size > 0) {
            Iterator<y72> it2 = this.f28438do.f6256break.iterator();
            while (it2.hasNext()) {
                cdo.m32018do(it2.next().f1854if);
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (sn0 sn0Var : linkedHashMap.keySet()) {
            if (sn0Var.m7522class() <= 65535) {
                arrayList.add(sn0Var);
            } else {
                arrayList2.add(sn0Var);
            }
        }
        m31852class(cdo, arrayList, new Cdo());
        m31852class(cdo, arrayList2, new Cif());
        HashMap map = new HashMap();
        Iterator it3 = arrayList.iterator();
        int i11 = 0;
        while (it3.hasNext()) {
            map.put((sn0) it3.next(), Integer.valueOf(i11));
            i11++;
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            map.put((sn0) it4.next(), Integer.valueOf(i11));
            i11++;
        }
        cdo.m32018do(iM2309for);
        Iterator<Cfinally> it5 = this.f28438do.f6258do.iterator();
        while (true) {
            if (!it5.hasNext()) {
                cdo.m32018do(this.f28438do.f6262if.size());
                Iterator<jx> it6 = this.f28438do.f6262if.iterator();
                while (it6.hasNext()) {
                    cdo.m32018do(it6.next().f1854if);
                }
                Cstatic cstatic2 = this.f28438do;
                if (cstatic2.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
                    cdo.m32018do(cstatic2.f6264this.length);
                    for (LexerAction lexerAction : this.f28438do.f6264this) {
                        cdo.m32018do(lexerAction.getActionType().ordinal());
                        switch (Cfor.f28441do[lexerAction.getActionType().ordinal()]) {
                            case 1:
                                int iM4757do = ((ls0) lexerAction).m4757do();
                                if (iM4757do == -1) {
                                    iM4757do = 65535;
                                }
                                cdo.m32018do(iM4757do);
                                cdo.m32018do(0);
                                break;
                            case 2:
                                ms0 ms0Var = (ms0) lexerAction;
                                int iM4996if = ms0Var.m4996if();
                                int iM4995do = ms0Var.m4995do();
                                if (iM4996if == -1) {
                                    iM4996if = 65535;
                                }
                                cdo.m32018do(iM4996if);
                                if (iM4995do == -1) {
                                    iM4995do = 65535;
                                }
                                cdo.m32018do(iM4995do);
                                break;
                            case 3:
                                int iM6664do = ((qs0) lexerAction).m6664do();
                                if (iM6664do == -1) {
                                    iM6664do = 65535;
                                }
                                cdo.m32018do(iM6664do);
                                cdo.m32018do(0);
                                break;
                            case 4:
                                cdo.m32018do(0);
                                cdo.m32018do(0);
                                break;
                            case 5:
                                cdo.m32018do(0);
                                cdo.m32018do(0);
                                break;
                            case 6:
                                int iM8636do = ((us0) lexerAction).m8636do();
                                if (iM8636do == -1) {
                                    iM8636do = 65535;
                                }
                                cdo.m32018do(iM8636do);
                                cdo.m32018do(0);
                                break;
                            case 7:
                                cdo.m32018do(0);
                                cdo.m32018do(0);
                                break;
                            case 8:
                                int iM9268do = ((ws0) lexerAction).m9268do();
                                if (iM9268do == -1) {
                                    iM9268do = 65535;
                                }
                                cdo.m32018do(iM9268do);
                                cdo.m32018do(0);
                                break;
                            default:
                                throw new IllegalArgumentException(String.format(Locale.getDefault(), "The specified lexer action type %s is not valid.", lexerAction.getActionType()));
                        }
                    }
                }
                for (int i12 = 1; i12 < cdo.m32029throw(); i12++) {
                    if (cdo.m32015catch(i12) < 0 || cdo.m32015catch(i12) > 65535) {
                        throw new UnsupportedOperationException("Serialized ATN data element " + cdo.m32015catch(i12) + " element " + i12 + " out of range 0..65535");
                    }
                    cdo.m32027super(i12, (cdo.m32015catch(i12) + 2) & 65535);
                }
                return cdo;
            }
            Cfinally next2 = it5.next();
            if (next2 != null && next2.mo822new() != i) {
                int i13 = 0;
                while (i13 < next2.m2309for()) {
                    Ccatch ccatchM2306catch2 = next2.m2306catch(i13);
                    if (this.f28438do.f6258do.get(ccatchM2306catch2.f28465do.f1854if) == null) {
                        throw new IllegalStateException("Cannot serialize a transition to a removed state.");
                    }
                    int i14 = next2.f1854if;
                    int i15 = ccatchM2306catch2.f28465do.f1854if;
                    int iIntValue3 = Ccatch.f28457const.get(ccatchM2306catch2.getClass()).intValue();
                    switch (iIntValue3) {
                        case 2:
                            il1 il1Var = (il1) ccatchM2306catch2;
                            int i16 = il1Var.f2801final;
                            i2 = il1Var.f2802super;
                            if (i16 == -1) {
                                iIntValue = 0;
                                i3 = 1;
                                break;
                            } else {
                                iIntValue = i16;
                                i3 = 0;
                                break;
                            }
                        case 3:
                            ap1 ap1Var = (ap1) ccatchM2306catch2;
                            i15 = ap1Var.f226throw.f1854if;
                            i4 = ap1Var.f28465do.f1854if;
                            i2 = ap1Var.f224final;
                            i5 = ap1Var.f225super;
                            int i17 = i4;
                            i3 = i5;
                            iIntValue = i17;
                            break;
                        case 4:
                            Ccase ccase = (Ccase) ccatchM2306catch2;
                            i4 = ccase.f28450final;
                            i2 = ccase.f28451super;
                            i5 = ccase.f28452throw;
                            int i172 = i4;
                            i3 = i5;
                            iIntValue = i172;
                            break;
                        case 5:
                            iIntValue = ((g4) ccatchM2306catch2).f2050final;
                            if (iIntValue == -1) {
                                iIntValue = 0;
                                i3 = 1;
                            } else {
                                i3 = 0;
                            }
                            i2 = 0;
                            break;
                        case 6:
                            u uVar = (u) ccatchM2306catch2;
                            int i18 = uVar.f6714final;
                            int i19 = uVar.f6715super;
                            if (i19 == -1) {
                                i19 = 65535;
                            }
                            int i20 = i19;
                            i3 = uVar.f6716throw ? 1 : 0;
                            iIntValue = i18;
                            i2 = i20;
                            break;
                        case 7:
                            iIntValue = ((Integer) map.get(((lx1) ccatchM2306catch2).f3790final)).intValue();
                            i3 = 0;
                            i2 = 0;
                            break;
                        case 8:
                            iIntValue = ((Integer) map.get(((lx1) ccatchM2306catch2).f3790final)).intValue();
                            i3 = 0;
                            i2 = 0;
                            break;
                        case 9:
                        default:
                            iIntValue = 0;
                            i3 = 0;
                            i2 = 0;
                            break;
                        case 10:
                            iIntValue = ((Ctry) ccatchM2306catch2).f28500final;
                            i3 = 0;
                            i2 = 0;
                            break;
                    }
                    cdo.m32018do(i14);
                    cdo.m32018do(i15);
                    cdo.m32018do(iIntValue3);
                    cdo.m32018do(iIntValue);
                    cdo.m32018do(i2);
                    cdo.m32018do(i3);
                    i13++;
                    i = 7;
                }
            }
        }
    }

    public ATNSerializer(Cstatic cstatic, List<String> list) {
        this.f28438do = cstatic;
        this.f28439if = list;
    }
}
