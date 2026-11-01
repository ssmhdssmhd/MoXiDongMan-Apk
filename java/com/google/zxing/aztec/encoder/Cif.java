package com.google.zxing.aztec.encoder;

import android.support.v4.w8;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.google.zxing.aztec.encoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: break, reason: not valid java name */
    public static final int[][] f17414break;

    /* renamed from: case, reason: not valid java name */
    public static final int f17415case = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f17416else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f17417for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f17420new = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int[][] f17421this;

    /* renamed from: try, reason: not valid java name */
    public static final int f17422try = 2;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f17423do;

    /* renamed from: if, reason: not valid java name */
    public static final String[] f17419if = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: goto, reason: not valid java name */
    public static final int[][] f17418goto = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: com.google.zxing.aztec.encoder.if$do, reason: invalid class name */
    public class Cdo implements Comparator<Cnew> {
        public Cdo() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Cnew cnew, Cnew cnew2) {
            return cnew.m21774new() - cnew2.m21774new();
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 5, 256);
        f17421this = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f17421this[0][i] = (i - 65) + 2;
        }
        f17421this[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f17421this[1][i2] = (i2 - 97) + 2;
        }
        f17421this[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f17421this[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = f17421this;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            f17421this[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr4[i5] > 0) {
                f17421this[4][iArr4[i5]] = i5;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) int.class, 6, 6);
        f17414break = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f17414break;
        iArr7[0][4] = 0;
        iArr7[1][4] = 0;
        iArr7[1][0] = 28;
        iArr7[3][4] = 0;
        iArr7[2][4] = 0;
        iArr7[2][0] = 15;
    }

    public Cif(byte[] bArr) {
        this.f17423do = bArr;
    }

    /* renamed from: case, reason: not valid java name */
    private static Collection<Cnew> m21760case(Iterable<Cnew> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        Iterator<Cnew> it = iterable.iterator();
        while (it.hasNext()) {
            m21763new(it.next(), i, i2, linkedList);
        }
        return m21762if(linkedList);
    }

    /* renamed from: for, reason: not valid java name */
    private void m21761for(Cnew cnew, int i, Collection<Cnew> collection) {
        char c = (char) (this.f17423do[i] & 255);
        boolean z = f17421this[cnew.m21776try()][c] > 0;
        Cnew cnewM21773if = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = f17421this[i2][c];
            if (i3 > 0) {
                if (cnewM21773if == null) {
                    cnewM21773if = cnew.m21773if(i);
                }
                if (!z || i2 == cnew.m21776try() || i2 == 2) {
                    collection.add(cnewM21773if.m21772goto(i2, i3));
                }
                if (!z && f17414break[cnew.m21776try()][i2] >= 0) {
                    collection.add(cnewM21773if.m21775this(i2, i3));
                }
            }
        }
        if (cnew.m21771for() > 0 || f17421this[cnew.m21776try()][c] == 0) {
            collection.add(cnew.m21769do(i));
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static Collection<Cnew> m21762if(Iterable<Cnew> iterable) {
        LinkedList linkedList = new LinkedList();
        for (Cnew cnew : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Cnew cnew2 = (Cnew) it.next();
                if (cnew2.m21770else(cnew)) {
                    z = false;
                    break;
                }
                if (cnew.m21770else(cnew2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(cnew);
            }
        }
        return linkedList;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m21763new(Cnew cnew, int i, int i2, Collection<Cnew> collection) {
        Cnew cnewM21773if = cnew.m21773if(i);
        collection.add(cnewM21773if.m21772goto(4, i2));
        if (cnew.m21776try() != 4) {
            collection.add(cnewM21773if.m21775this(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(cnewM21773if.m21772goto(2, 16 - i2).m21772goto(2, 1));
        }
        if (cnew.m21771for() > 0) {
            collection.add(cnew.m21769do(i).m21769do(i + 1));
        }
    }

    /* renamed from: try, reason: not valid java name */
    private Collection<Cnew> m21764try(Iterable<Cnew> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<Cnew> it = iterable.iterator();
        while (it.hasNext()) {
            m21761for(it.next(), i, linkedList);
        }
        return m21762if(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public w8 m21765do() {
        int i;
        Collection<Cnew> collectionSingletonList = Collections.singletonList(Cnew.f17425try);
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f17423do;
            if (i2 >= bArr.length) {
                return ((Cnew) Collections.min(collectionSingletonList, new Cdo())).m21767break(this.f17423do);
            }
            int i3 = i2 + 1;
            byte b = i3 < bArr.length ? bArr[i3] : (byte) 0;
            byte b2 = bArr[i2];
            if (b2 != 13) {
                if (b2 != 44) {
                    if (b2 != 46) {
                        i = (b2 == 58 && b == 32) ? 5 : 0;
                    } else if (b == 32) {
                        i = 3;
                    }
                } else if (b == 32) {
                    i = 4;
                }
            } else if (b == 10) {
                i = 2;
            }
            if (i > 0) {
                collectionSingletonList = m21760case(collectionSingletonList, i2, i);
                i2 = i3;
            } else {
                collectionSingletonList = m21764try(collectionSingletonList, i2);
            }
            i2++;
        }
    }
}
