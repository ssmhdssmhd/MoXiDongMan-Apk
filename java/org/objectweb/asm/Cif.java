package org.objectweb.asm;

import android.support.v4.bm;
import android.support.v4.d2;
import android.support.v4.ee;
import android.support.v4.f92;
import android.support.v4.la0;
import android.support.v4.o4;
import android.support.v4.p92;
import android.support.v4.ti0;
import android.support.v4.xz0;
import androidx.core.view.InputDeviceCompat;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.io.IOException;
import java.io.InputStream;
import okio.Utf8;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: org.objectweb.asm.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: case, reason: not valid java name */
    public static final int f34059case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f34060else = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f34061goto = 4;

    /* renamed from: this, reason: not valid java name */
    public static final int f34062this = 8;

    /* renamed from: do, reason: not valid java name */
    public final byte[] f34063do;

    /* renamed from: for, reason: not valid java name */
    private final String[] f34064for;

    /* renamed from: if, reason: not valid java name */
    private final int[] f34065if;

    /* renamed from: new, reason: not valid java name */
    private final int f34066new;

    /* renamed from: try, reason: not valid java name */
    public final int f34067try;

    public Cif(InputStream inputStream) throws IOException {
        this(m38013final(inputStream, false));
    }

    public Cif(String str) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str.replace(Ctry.f28883do, Attributes.InternalPrefix));
        stringBuffer.append(".class");
        this(m38013final(ClassLoader.getSystemResourceAsStream(stringBuffer.toString()), true));
    }

    public Cif(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public Cif(byte[] bArr, int i, int i2) {
        this.f34063do = bArr;
        if (m38040volatile(i + 6) > 52) {
            throw new IllegalArgumentException();
        }
        int[] iArr = new int[m38032protected(i + 8)];
        this.f34065if = iArr;
        int length = iArr.length;
        this.f34064for = new String[length];
        int i3 = 0;
        int i4 = i + 10;
        int i5 = 1;
        while (i5 < length) {
            int i6 = i4 + 1;
            this.f34065if[i5] = i6;
            byte b = bArr[i4];
            int iM38032protected = 5;
            if (b == 1) {
                iM38032protected = m38032protected(i6) + 3;
                if (iM38032protected > i3) {
                    i3 = iM38032protected;
                }
            } else if (b == 15) {
                iM38032protected = 4;
            } else if (b != 18 && b != 3 && b != 4) {
                if (b != 5 && b != 6) {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            break;
                        default:
                            iM38032protected = 3;
                            break;
                    }
                } else {
                    iM38032protected = 9;
                    i5++;
                }
            }
            i4 += iM38032protected;
            i5++;
        }
        this.f34066new = i3;
        this.f34067try = i4;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:167:0x04a1. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:168:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x075c  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x077c  */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m38007break(xz0 xz0Var, Cnew cnew, int i) {
        Cbreak[] cbreakArr;
        boolean z;
        Cnew cnew2;
        int[] iArr;
        char[] cArr;
        Cnew cnew3;
        int i2;
        int i3;
        int[] iArr2;
        String strM38029interface;
        xz0 xz0Var2;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int i8;
        int iM38032protected;
        int[] iArr3;
        int i9;
        int i10;
        int iM38032protected2;
        int[] iArr4;
        int i11;
        int i12;
        Cnew cnew4;
        int i13;
        Cbreak[] cbreakArr2;
        int i14;
        int i15;
        int i16;
        boolean z3;
        int i17;
        int i18;
        int i19;
        int i20;
        Cbreak[] cbreakArr3;
        int iM38032protected3;
        int[] iArr5;
        int[] iArr6;
        boolean z4;
        Cbreak[] cbreakArr4;
        int i21;
        int i22;
        String str;
        boolean z5;
        Cbreak[] cbreakArr5;
        int i23;
        int[] iArr7;
        int[] iArr8;
        int i24;
        int i25;
        xz0 xz0Var3 = xz0Var;
        Cnew cnew5 = cnew;
        byte[] bArr = this.f34063do;
        char[] cArr2 = cnew5.f34076for;
        int iM38032protected4 = m38032protected(i);
        int iM38032protected5 = m38032protected(i + 2);
        int iM38023abstract = m38023abstract(i + 4);
        int i26 = i + 8;
        int i27 = i26 + iM38023abstract;
        Cbreak[] cbreakArr6 = new Cbreak[iM38023abstract + 2];
        cnew5.f34077goto = cbreakArr6;
        m38025continue(iM38023abstract + 1, cbreakArr6);
        int i28 = i26;
        while (i28 < i27) {
            int i29 = i28 - i26;
            switch (Cfor.e[bArr[i28] & 255]) {
                case 0:
                case 4:
                    i28++;
                    break;
                case 1:
                case 3:
                case 11:
                    i28 += 2;
                    break;
                case 2:
                case 5:
                case 6:
                case 12:
                case 13:
                    i28 += 3;
                    break;
                case 7:
                case 8:
                    i28 += 5;
                    break;
                case 9:
                    m38025continue(i29 + m38040volatile(i28 + 1), cbreakArr6);
                    i28 += 3;
                    break;
                case 10:
                    m38025continue(i29 + m38023abstract(i28 + 1), cbreakArr6);
                    i28 += 5;
                    break;
                case 14:
                    int i30 = (i28 + 4) - (i29 & 3);
                    m38025continue(m38023abstract(i30) + i29, cbreakArr6);
                    for (int iM38023abstract2 = (m38023abstract(i30 + 8) - m38023abstract(i30 + 4)) + 1; iM38023abstract2 > 0; iM38023abstract2--) {
                        m38025continue(m38023abstract(i30 + 12) + i29, cbreakArr6);
                        i30 += 4;
                    }
                    i28 = i30 + 12;
                    break;
                case 15:
                    int i31 = (i28 + 4) - (i29 & 3);
                    m38025continue(m38023abstract(i31) + i29, cbreakArr6);
                    for (int iM38023abstract3 = m38023abstract(i31 + 4); iM38023abstract3 > 0; iM38023abstract3--) {
                        m38025continue(m38023abstract(i31 + 12) + i29, cbreakArr6);
                        i31 += 8;
                    }
                    i28 = i31 + 8;
                    break;
                case 16:
                default:
                    i28 += 4;
                    break;
                case 17:
                    if ((bArr[i28 + 1] & 255) == 132) {
                        i28 += 6;
                        break;
                    } else {
                        i28 += 4;
                        break;
                    }
            }
        }
        for (int iM38032protected6 = m38032protected(i28); iM38032protected6 > 0; iM38032protected6--) {
            Cbreak cbreakM38025continue = m38025continue(m38032protected(i28 + 2), cbreakArr6);
            Cbreak cbreakM38025continue2 = m38025continue(m38032protected(i28 + 4), cbreakArr6);
            Cbreak cbreakM38025continue3 = m38025continue(m38032protected(i28 + 6), cbreakArr6);
            i28 += 8;
            xz0Var3.mo9646package(cbreakM38025continue, cbreakM38025continue2, cbreakM38025continue3, m38029interface(this.f34065if[m38032protected(i28)], cArr2));
        }
        int i32 = i28 + 2;
        boolean z6 = (cnew5.f34078if & 8) != 0;
        int iM38023abstract4 = i32;
        int iM38032protected7 = m38032protected(i32);
        int[] iArrM38020super = null;
        int[] iArr9 = null;
        int i33 = 0;
        int iM38023abstract5 = 0;
        int i34 = 0;
        int i35 = 0;
        boolean z7 = true;
        o4 o4Var = null;
        int iM38032protected8 = 0;
        int iM38032protected9 = -1;
        int iM38032protected10 = -1;
        while (iM38032protected7 > 0) {
            String strM38029interface2 = m38029interface(iM38023abstract4 + 2, cArr2);
            if (!"LocalVariableTable".equals(strM38029interface2)) {
                iArr5 = iArrM38020super;
                iArr6 = iArr9;
                if ("LocalVariableTypeTable".equals(strM38029interface2)) {
                    i35 = iM38023abstract4 + 8;
                } else if (!"LineNumberTable".equals(strM38029interface2)) {
                    if ("RuntimeVisibleTypeAnnotations".equals(strM38029interface2)) {
                        int[] iArrM38020super2 = m38020super(xz0Var3, cnew5, iM38023abstract4 + 8, true);
                        iM38032protected9 = (iArrM38020super2.length == 0 || m38028finally(iArrM38020super2[0]) < 67) ? -1 : m38032protected(iArrM38020super2[0] + 1);
                        z4 = z6;
                        cbreakArr4 = cbreakArr6;
                        i21 = i27;
                        iArr9 = iArrM38020super2;
                        iArrM38020super = iArr5;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strM38029interface2)) {
                        iArrM38020super = m38020super(xz0Var3, cnew5, iM38023abstract4 + 8, false);
                        iM38032protected10 = (iArrM38020super.length == 0 || m38028finally(iArrM38020super[0]) < 67) ? -1 : m38032protected(iArrM38020super[0] + 1);
                        z4 = z6;
                        cbreakArr4 = cbreakArr6;
                        i21 = i27;
                        iArr9 = iArr6;
                    } else if ("StackMapTable".equals(strM38029interface2)) {
                        if ((cnew5.f34078if & 4) == 0) {
                            i33 = iM38023abstract4 + 10;
                            iM38023abstract5 = m38023abstract(iM38023abstract4 + 4);
                            iM38032protected8 = m38032protected(iM38023abstract4 + 8);
                        }
                    } else if (!"StackMap".equals(strM38029interface2)) {
                        o4 o4Var2 = o4Var;
                        int i36 = 0;
                        while (true) {
                            o4[] o4VarArr = cnew5.f34073do;
                            if (i36 < o4VarArr.length) {
                                if (o4VarArr[i36].f4408do.equals(strM38029interface2)) {
                                    i22 = i36;
                                    iArr7 = iArr5;
                                    iArr8 = iArr6;
                                    str = strM38029interface2;
                                    z5 = z6;
                                    cbreakArr5 = cbreakArr6;
                                    i23 = i27;
                                    o4 o4VarM5457else = cnew5.f34073do[i36].m5457else(this, iM38023abstract4 + 8, m38023abstract(iM38023abstract4 + 4), cArr2, i26 - 8, cbreakArr5);
                                    if (o4VarM5457else != null) {
                                        o4VarM5457else.f4409for = o4Var2;
                                        o4Var2 = o4VarM5457else;
                                    }
                                } else {
                                    i22 = i36;
                                    str = strM38029interface2;
                                    z5 = z6;
                                    cbreakArr5 = cbreakArr6;
                                    i23 = i27;
                                    iArr7 = iArr5;
                                    iArr8 = iArr6;
                                }
                                i36 = i22 + 1;
                                cbreakArr6 = cbreakArr5;
                                strM38029interface2 = str;
                                iArr6 = iArr8;
                                iArr5 = iArr7;
                                z6 = z5;
                                i27 = i23;
                            } else {
                                z4 = z6;
                                cbreakArr4 = cbreakArr6;
                                i21 = i27;
                                o4Var = o4Var2;
                                iArr9 = iArr6;
                                iArrM38020super = iArr5;
                            }
                        }
                    } else if ((cnew5.f34078if & 4) == 0) {
                        i33 = iM38023abstract4 + 10;
                        iM38023abstract5 = m38023abstract(iM38023abstract4 + 4);
                        iM38032protected8 = m38032protected(iM38023abstract4 + 8);
                        z4 = z6;
                        cbreakArr4 = cbreakArr6;
                        i21 = i27;
                        iArrM38020super = iArr5;
                        iArr9 = iArr6;
                        z7 = false;
                    }
                    iM38023abstract4 += m38023abstract(iM38023abstract4 + 4) + 6;
                    iM38032protected7--;
                    xz0Var3 = xz0Var;
                    cbreakArr6 = cbreakArr4;
                    z6 = z4;
                    i27 = i21;
                } else if ((cnew5.f34078if & 2) == 0) {
                    int i37 = iM38023abstract4;
                    for (int iM38032protected11 = m38032protected(iM38023abstract4 + 8); iM38032protected11 > 0; iM38032protected11--) {
                        int iM38032protected12 = m38032protected(i37 + 10);
                        if (cbreakArr6[iM38032protected12] == null) {
                            m38025continue(iM38032protected12, cbreakArr6).f33947if |= 1;
                        }
                        Cbreak cbreak = cbreakArr6[iM38032protected12];
                        while (cbreak.f33945for > 0) {
                            if (cbreak.f33942class == null) {
                                cbreak.f33942class = new Cbreak();
                            }
                            cbreak = cbreak.f33942class;
                        }
                        cbreak.f33945for = m38032protected(i37 + 12);
                        i37 += 4;
                    }
                }
                z4 = z6;
                cbreakArr4 = cbreakArr6;
                i21 = i27;
                iArrM38020super = iArr5;
                iArr9 = iArr6;
                iM38023abstract4 += m38023abstract(iM38023abstract4 + 4) + 6;
                iM38032protected7--;
                xz0Var3 = xz0Var;
                cbreakArr6 = cbreakArr4;
                z6 = z4;
                i27 = i21;
            } else if ((cnew5.f34078if & 2) == 0) {
                int i38 = iM38023abstract4 + 8;
                int iM38032protected13 = m38032protected(i38);
                int i39 = iM38023abstract4;
                while (iM38032protected13 > 0) {
                    int[] iArr10 = iArrM38020super;
                    int i40 = i39 + 10;
                    int[] iArr11 = iArr9;
                    int iM38032protected14 = m38032protected(i40);
                    if (cbreakArr6[iM38032protected14] == null) {
                        i24 = i40;
                        i25 = i38;
                        m38025continue(iM38032protected14, cbreakArr6).f33947if |= 1;
                    } else {
                        i24 = i40;
                        i25 = i38;
                    }
                    int iM38032protected15 = iM38032protected14 + m38032protected(i39 + 12);
                    if (cbreakArr6[iM38032protected15] == null) {
                        m38025continue(iM38032protected15, cbreakArr6).f33947if |= 1;
                    }
                    iM38032protected13--;
                    i39 = i24;
                    iArrM38020super = iArr10;
                    iArr9 = iArr11;
                    i38 = i25;
                }
                z4 = z6;
                cbreakArr4 = cbreakArr6;
                i21 = i27;
                i34 = i38;
                iM38023abstract4 += m38023abstract(iM38023abstract4 + 4) + 6;
                iM38032protected7--;
                xz0Var3 = xz0Var;
                cbreakArr6 = cbreakArr4;
                z6 = z4;
                i27 = i21;
            } else {
                iArr5 = iArrM38020super;
                iArr6 = iArr9;
            }
            z4 = z6;
            cbreakArr4 = cbreakArr6;
            i21 = i27;
            iArrM38020super = iArr5;
            iArr9 = iArr6;
            iM38023abstract4 += m38023abstract(iM38023abstract4 + 4) + 6;
            iM38032protected7--;
            xz0Var3 = xz0Var;
            cbreakArr6 = cbreakArr4;
            z6 = z4;
            i27 = i21;
        }
        int[] iArr12 = iArrM38020super;
        int[] iArr13 = iArr9;
        boolean z8 = z6;
        Cbreak[] cbreakArr7 = cbreakArr6;
        int i41 = i27;
        if (i33 != 0) {
            cnew5.f34070catch = -1;
            cnew5.f34083super = 0;
            cnew5.f34085throw = 0;
            cnew5.f34087while = 0;
            cnew5.f34080native = 0;
            cnew5.f34079import = new Object[iM38032protected5];
            cnew5.f34082public = new Object[iM38032protected4];
            z = z8;
            if (z) {
                m38010const(cnew5);
            }
            int i42 = i33;
            while (i42 < (i33 + iM38023abstract5) - 2) {
                if (bArr[i42] != 8 || (iM38032protected3 = m38032protected(i42 + 1)) < 0 || iM38032protected3 >= iM38023abstract || (bArr[i26 + iM38032protected3] & 255) != 187) {
                    cbreakArr3 = cbreakArr7;
                } else {
                    cbreakArr3 = cbreakArr7;
                    m38025continue(iM38032protected3, cbreakArr3);
                }
                i42++;
                cbreakArr7 = cbreakArr3;
            }
            cbreakArr = cbreakArr7;
            cnew2 = cnew5;
        } else {
            cbreakArr = cbreakArr7;
            z = z8;
            cnew2 = null;
        }
        int i43 = i26;
        int i44 = 0;
        int i45 = 0;
        while (true) {
            int i46 = i41;
            if (i43 >= i46) {
                Cbreak[] cbreakArr8 = cbreakArr;
                int i47 = iM38023abstract;
                int i48 = iM38032protected5;
                int i49 = iM38032protected4;
                int[] iArr14 = iArr13;
                int[] iArr15 = iArr12;
                if (cbreakArr8[i47] != null) {
                    xz0Var.mo9638final(cbreakArr8[i47]);
                }
                if ((cnew5.f34078if & 2) == 0 && (i3 = i34) != 0) {
                    int i50 = i35;
                    if (i50 != 0) {
                        int i51 = i50 + 2;
                        int iM38032protected16 = m38032protected(i50) * 3;
                        int[] iArr16 = new int[iM38032protected16];
                        int i52 = i51;
                        while (iM38032protected16 > 0) {
                            int i53 = iM38032protected16 - 1;
                            iArr16[i53] = i52 + 6;
                            int i54 = i53 - 1;
                            iArr16[i54] = m38032protected(i52 + 8);
                            iM38032protected16 = i54 - 1;
                            iArr16[iM38032protected16] = m38032protected(i52);
                            i52 += 10;
                        }
                        iArr2 = iArr16;
                    } else {
                        iArr2 = null;
                    }
                    int iM38032protected17 = m38032protected(i3);
                    int i55 = i3 + 2;
                    while (iM38032protected17 > 0) {
                        int iM38032protected18 = m38032protected(i55);
                        int iM38032protected19 = m38032protected(i55 + 2);
                        int iM38032protected20 = m38032protected(i55 + 8);
                        if (iArr2 != null) {
                            for (int i56 = 0; i56 < iArr2.length; i56 += 3) {
                                if (iArr2[i56] == iM38032protected18 && iArr2[i56 + 1] == iM38032protected20) {
                                    strM38029interface = m38029interface(iArr2[i56 + 2], cArr2);
                                }
                            }
                            strM38029interface = null;
                        } else {
                            strM38029interface = null;
                        }
                        xz0Var.mo9657while(m38029interface(i55 + 4, cArr2), m38029interface(i55 + 6, cArr2), strM38029interface, cbreakArr8[iM38032protected18], cbreakArr8[iM38032protected18 + iM38032protected19], iM38032protected20);
                        i55 += 10;
                        iM38032protected17--;
                        iArr15 = iArr15;
                    }
                }
                int[] iArr17 = iArr15;
                int i57 = 1;
                int i58 = 32;
                if (iArr14 != null) {
                    int i59 = 0;
                    while (i59 < iArr14.length) {
                        if ((m38028finally(iArr14[i59]) >> i57) == i58) {
                            int iM38008case = m38008case(cnew5, iArr14[i59]);
                            iArr = iArr14;
                            i2 = i48;
                            cArr = cArr2;
                            cnew3 = cnew5;
                            m38019new(iM38008case + 2, cArr, true, xz0Var.mo9643import(cnew5.f34084this, cnew5.f34068break, cnew5.f34071class, cnew5.f34072const, cnew5.f34075final, m38029interface(iM38008case, cArr2), true));
                        } else {
                            iArr = iArr14;
                            cArr = cArr2;
                            cnew3 = cnew5;
                            i2 = i48;
                        }
                        i59++;
                        cArr2 = cArr;
                        i48 = i2;
                        cnew5 = cnew3;
                        iArr14 = iArr;
                        i58 = 32;
                        i57 = 1;
                    }
                }
                char[] cArr3 = cArr2;
                Cnew cnew6 = cnew5;
                int i60 = i48;
                int i61 = 1;
                if (iArr17 != null) {
                    int i62 = 0;
                    while (i62 < iArr17.length) {
                        if ((m38028finally(iArr17[i62]) >> i61) == 32) {
                            int iM38008case2 = m38008case(cnew6, iArr17[i62]);
                            m38019new(iM38008case2 + 2, cArr3, true, xz0Var.mo9643import(cnew6.f34084this, cnew6.f34068break, cnew6.f34071class, cnew6.f34072const, cnew6.f34075final, m38029interface(iM38008case2, cArr3), false));
                        }
                        i62++;
                        i61 = 1;
                    }
                }
                o4 o4Var3 = o4Var;
                while (o4Var3 != null) {
                    o4 o4Var4 = o4Var3.f4409for;
                    o4Var3.f4409for = null;
                    xz0Var.mo9640for(o4Var3);
                    o4Var3 = o4Var4;
                }
                xz0Var.mo9648public(i49, i60);
                return;
            }
            int i63 = i43 - i26;
            Cbreak cbreak2 = cbreakArr[i63];
            if (cbreak2 != null) {
                Cbreak cbreak3 = cbreak2.f33942class;
                cbreak2.f33942class = null;
                xz0Var2 = xz0Var;
                xz0Var2.mo9638final(cbreak2);
                if ((cnew5.f34078if & 2) == 0 && (i20 = cbreak2.f33945for) > 0) {
                    xz0Var2.mo9654throw(i20, cbreak2);
                    Cbreak cbreak4 = cbreak3;
                    while (cbreak4 != null) {
                        xz0Var2.mo9654throw(cbreak4.f33945for, cbreak2);
                        cbreak4 = cbreak4.f33942class;
                        i46 = i46;
                    }
                }
            } else {
                xz0Var2 = xz0Var;
            }
            int i64 = i46;
            Cnew cnew7 = cnew2;
            int iM38016if = i33;
            while (cnew7 != null) {
                int i65 = cnew7.f34070catch;
                if (i65 == i63 || i65 == -1) {
                    if (i65 != -1) {
                        boolean z9 = z7;
                        if (!z9 || z) {
                            i13 = i43;
                            cbreakArr2 = cbreakArr;
                            i14 = iM38023abstract;
                            i15 = iM38032protected5;
                            i16 = iM38032protected4;
                            i17 = i64;
                            i18 = i63;
                            z3 = z9;
                            i19 = iM38016if;
                            xz0Var.mo9636else(-1, cnew7.f34085throw, cnew7.f34079import, cnew7.f34080native, cnew7.f34082public);
                        } else {
                            i15 = iM38032protected5;
                            i18 = i63;
                            i16 = iM38032protected4;
                            z3 = z9;
                            i17 = i64;
                            i14 = iM38023abstract;
                            i19 = iM38016if;
                            i13 = i43;
                            cbreakArr2 = cbreakArr;
                            xz0Var.mo9636else(cnew7.f34083super, cnew7.f34087while, cnew7.f34079import, cnew7.f34080native, cnew7.f34082public);
                        }
                    } else {
                        i13 = i43;
                        cbreakArr2 = cbreakArr;
                        i14 = iM38023abstract;
                        i15 = iM38032protected5;
                        i16 = iM38032protected4;
                        z3 = z7;
                        i17 = i64;
                        i18 = i63;
                        i19 = iM38016if;
                    }
                    if (iM38032protected8 > 0) {
                        iM38016if = m38016if(i19, z3, z, cnew7);
                        iM38032protected8--;
                        i63 = i18;
                        z7 = z3;
                        i64 = i17;
                        i43 = i13;
                        cbreakArr = cbreakArr2;
                        iM38032protected4 = i16;
                        iM38032protected5 = i15;
                        iM38023abstract = i14;
                    } else {
                        iM38016if = i19;
                        i63 = i18;
                        z7 = z3;
                        i64 = i17;
                        i43 = i13;
                        cbreakArr = cbreakArr2;
                        iM38032protected4 = i16;
                        iM38032protected5 = i15;
                        iM38023abstract = i14;
                        cnew7 = null;
                    }
                } else {
                    int i66 = i43;
                    Cbreak[] cbreakArr9 = cbreakArr;
                    int i67 = iM38023abstract;
                    int i68 = iM38032protected5;
                    int i69 = iM38032protected4;
                    boolean z10 = z7;
                    int i70 = i64;
                    i4 = i63;
                    int i71 = iM38016if;
                    i5 = bArr[i66] & 255;
                    switch (Cfor.e[i5]) {
                        case 0:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9653this(i5);
                            i43 = i66 + 1;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 1:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9630catch(i5, bArr[i66 + 1]);
                            i43 = i66 + 2;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 2:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9630catch(i5, m38040volatile(i66 + 1));
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 3:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9633continue(i5, bArr[i66 + 1] & 255);
                            i43 = i66 + 2;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 4:
                            z2 = z;
                            i6 = i71;
                            if (i5 > 54) {
                                int i72 = i5 - 59;
                                xz0Var2.mo9633continue((i72 >> 2) + 54, i72 & 3);
                            } else {
                                int i73 = i5 - 26;
                                xz0Var2.mo9633continue((i73 >> 2) + 21, i73 & 3);
                            }
                            i43 = i66 + 1;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 5:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9627abstract(i5, m38030package(i66 + 1, cArr2));
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 6:
                        case 7:
                            z2 = z;
                            int i74 = this.f34065if[m38032protected(i66 + 1)];
                            boolean z11 = bArr[i74 + (-1)] == 11;
                            String strM38030package = m38030package(i74, cArr2);
                            int i75 = this.f34065if[m38032protected(i74 + 2)];
                            String strM38029interface3 = m38029interface(i75, cArr2);
                            String strM38029interface4 = m38029interface(i75 + 2, cArr2);
                            if (i5 < 182) {
                                xz0Var2.mo9629case(i5, strM38030package, strM38029interface3, strM38029interface4);
                                i6 = i71;
                                i7 = i5;
                            } else {
                                i6 = i71;
                                i7 = i5;
                                xz0Var.mo9650static(i5, strM38030package, strM38029interface3, strM38029interface4, z11);
                            }
                            i43 = i7 == 185 ? i66 + 5 : i66 + 3;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 8:
                            z2 = z;
                            int i76 = this.f34065if[m38032protected(i66 + 1)];
                            int i77 = cnew5.f34081new[m38032protected(i76)];
                            ti0 ti0Var = (ti0) m38031private(m38032protected(i77), cArr2);
                            int iM38032protected21 = m38032protected(i77 + 2);
                            Object[] objArr = new Object[iM38032protected21];
                            int i78 = i77 + 4;
                            for (int i79 = 0; i79 < iM38032protected21; i79++) {
                                objArr[i79] = m38031private(m38032protected(i78), cArr2);
                                i78 += 2;
                            }
                            int i80 = this.f34065if[m38032protected(i76 + 2)];
                            xz0Var2.mo9631class(m38029interface(i80, cArr2), m38029interface(i80 + 2, cArr2), ti0Var, objArr);
                            i43 = i66 + 5;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 9:
                            z2 = z;
                            xz0Var2.mo9632const(i5, cbreakArr9[i4 + m38040volatile(i66 + 1)]);
                            i43 = i66 + 3;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 10:
                            z2 = z;
                            xz0Var2.mo9632const(i5 - 33, cbreakArr9[i4 + m38023abstract(i66 + 1)]);
                            i43 = i66 + 5;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 11:
                            z2 = z;
                            xz0Var2.mo9651super(m38031private(bArr[i66 + 1] & 255, cArr2));
                            i43 = i66 + 2;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 12:
                            z2 = z;
                            xz0Var2.mo9651super(m38031private(m38032protected(i66 + 1), cArr2));
                            i43 = i66 + 3;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 13:
                            z2 = z;
                            xz0Var2.mo9641goto(bArr[i66 + 1] & 255, bArr[i66 + 2]);
                            i43 = i66 + 3;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 14:
                            int i81 = (i66 + 4) - (i4 & 3);
                            int iM38023abstract6 = i4 + m38023abstract(i81);
                            int iM38023abstract7 = m38023abstract(i81 + 4);
                            int iM38023abstract8 = m38023abstract(i81 + 8);
                            int i82 = (iM38023abstract8 - iM38023abstract7) + 1;
                            Cbreak[] cbreakArr10 = new Cbreak[i82];
                            z2 = z;
                            int i83 = i81 + 12;
                            for (int i84 = 0; i84 < i82; i84++) {
                                cbreakArr10[i84] = cbreakArr9[i4 + m38023abstract(i83)];
                                i83 += 4;
                            }
                            xz0Var2.mo9637extends(iM38023abstract7, iM38023abstract8, cbreakArr9[iM38023abstract6], cbreakArr10);
                            i43 = i83;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 15:
                            int i85 = (i66 + 4) - (i4 & 3);
                            int iM38023abstract9 = m38023abstract(i85) + i4;
                            int iM38023abstract10 = m38023abstract(i85 + 4);
                            int[] iArr18 = new int[iM38023abstract10];
                            Cbreak[] cbreakArr11 = new Cbreak[iM38023abstract10];
                            int i86 = i85 + 8;
                            int i87 = 0;
                            while (i87 < iM38023abstract10) {
                                iArr18[i87] = m38023abstract(i86);
                                cbreakArr11[i87] = cbreakArr9[m38023abstract(i86 + 4) + i4];
                                i86 += 8;
                                i87++;
                                iM38023abstract10 = iM38023abstract10;
                            }
                            xz0Var2.mo9644native(cbreakArr9[iM38023abstract9], iArr18, cbreakArr11);
                            i43 = i86;
                            z2 = z;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 16:
                        default:
                            z2 = z;
                            i6 = i71;
                            xz0Var2.mo9652switch(m38030package(i66 + 1, cArr2), bArr[i66 + 3] & 255);
                            i43 = i66 + 4;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                        case 17:
                            int i88 = bArr[i66 + 1] & 255;
                            if (i88 == 132) {
                                xz0Var2.mo9641goto(m38032protected(i66 + 2), m38040volatile(i66 + 4));
                                i9 = i66 + 6;
                            } else {
                                xz0Var2.mo9633continue(i88, m38032protected(i66 + 2));
                                i9 = i66 + 4;
                            }
                            i43 = i9;
                            z2 = z;
                            i6 = i71;
                            i8 = i44;
                            iM38032protected = iM38032protected9;
                            iArr3 = iArr13;
                            break;
                    }
                    while (iArr3 != null && i8 < iArr3.length && iM38032protected <= i4) {
                        if (iM38032protected == i4) {
                            int iM38008case3 = m38008case(cnew5, iArr3[i8]);
                            m38019new(iM38008case3 + 2, cArr2, true, xz0Var2.mo9628break(cnew5.f34084this, cnew5.f34068break, m38029interface(iM38008case3, cArr2), true));
                        }
                        i8++;
                        iM38032protected = (i8 < iArr3.length || m38028finally(iArr3[i8]) < 67) ? -1 : m38032protected(iArr3[i8] + 1);
                    }
                    i10 = i45;
                    iM38032protected2 = iM38032protected10;
                    iArr4 = iArr12;
                    while (iArr4 != null && i10 < iArr4.length && iM38032protected2 <= i4) {
                        if (iM38032protected2 != i4) {
                            int iM38008case4 = m38008case(cnew5, iArr4[i10]);
                            i11 = i8;
                            i12 = iM38032protected;
                            cnew4 = cnew7;
                            m38019new(iM38008case4 + 2, cArr2, true, xz0Var2.mo9628break(cnew5.f34084this, cnew5.f34068break, m38029interface(iM38008case4, cArr2), false));
                        } else {
                            i11 = i8;
                            i12 = iM38032protected;
                            cnew4 = cnew7;
                        }
                        i10++;
                        iM38032protected2 = (i10 < iArr4.length || m38028finally(iArr4[i10]) < 67) ? -1 : m38032protected(iArr4[i10] + 1);
                        i8 = i11;
                        iM38032protected = i12;
                        cnew7 = cnew4;
                    }
                    i44 = i8;
                    iM38032protected10 = iM38032protected2;
                    iArr12 = iArr4;
                    iArr13 = iArr3;
                    z7 = z10;
                    iM38032protected9 = iM38032protected;
                    i41 = i70;
                    cnew2 = cnew7;
                    cbreakArr = cbreakArr9;
                    iM38032protected4 = i69;
                    iM38032protected5 = i68;
                    iM38023abstract = i67;
                    i33 = i6;
                    z = z2;
                    i45 = i10;
                }
            }
            int i662 = i43;
            Cbreak[] cbreakArr92 = cbreakArr;
            int i672 = iM38023abstract;
            int i682 = iM38032protected5;
            int i692 = iM38032protected4;
            boolean z102 = z7;
            int i702 = i64;
            i4 = i63;
            int i712 = iM38016if;
            i5 = bArr[i662] & 255;
            switch (Cfor.e[i5]) {
            }
            while (iArr3 != null) {
                if (iM38032protected == i4) {
                }
                i8++;
                if (i8 < iArr3.length) {
                }
            }
            i10 = i45;
            iM38032protected2 = iM38032protected10;
            iArr4 = iArr12;
            while (iArr4 != null) {
                if (iM38032protected2 != i4) {
                }
                i10++;
                if (i10 < iArr4.length) {
                }
                i8 = i11;
                iM38032protected = i12;
                cnew7 = cnew4;
            }
            i44 = i8;
            iM38032protected10 = iM38032protected2;
            iArr12 = iArr4;
            iArr13 = iArr3;
            z7 = z102;
            iM38032protected9 = iM38032protected;
            i41 = i702;
            cnew2 = cnew7;
            cbreakArr = cbreakArr92;
            iM38032protected4 = i692;
            iM38032protected5 = i682;
            iM38023abstract = i672;
            i33 = i6;
            z = z2;
            i45 = i10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m38008case(Cnew cnew, int i) {
        int i2;
        int i3;
        int iM38023abstract = m38023abstract(i);
        int i4 = iM38023abstract >>> 24;
        if (i4 == 0 || i4 == 1) {
            i2 = iM38023abstract & (-65536);
            i3 = i + 2;
        } else if (i4 != 64 && i4 != 65) {
            switch (i4) {
                case 19:
                case 20:
                case 21:
                    i2 = iM38023abstract & (-16777216);
                    i3 = i + 1;
                    break;
                case 22:
                    break;
                default:
                    switch (i4) {
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i2 = iM38023abstract & QMUIProgressBar.f19440abstract;
                            i3 = i + 4;
                            break;
                        default:
                            i2 = iM38023abstract & (i4 < 67 ? InputDeviceCompat.SOURCE_ANY : -16777216);
                            i3 = i + 3;
                            break;
                    }
            }
        } else {
            i2 = iM38023abstract & (-16777216);
            int iM38032protected = m38032protected(i + 1);
            cnew.f34071class = new Cbreak[iM38032protected];
            cnew.f34072const = new Cbreak[iM38032protected];
            cnew.f34075final = new int[iM38032protected];
            i3 = i + 3;
            for (int i5 = 0; i5 < iM38032protected; i5++) {
                int iM38032protected2 = m38032protected(i3);
                int iM38032protected3 = m38032protected(i3 + 2);
                cnew.f34071class[i5] = m38025continue(iM38032protected2, cnew.f34077goto);
                cnew.f34072const[i5] = m38025continue(iM38032protected2 + iM38032protected3, cnew.f34077goto);
                cnew.f34075final[i5] = m38032protected(i3 + 4);
                i3 += 6;
            }
        }
        int iM38028finally = m38028finally(i3);
        cnew.f34084this = i2;
        cnew.f34068break = iM38028finally == 0 ? null : new p92(this.f34063do, i3);
        return i3 + 1 + (iM38028finally * 2);
    }

    /* renamed from: class, reason: not valid java name */
    private void m38009class(Cfor cfor, Cthis[] cthisArr, char[] cArr) {
        int i;
        boolean z;
        int iM38011do = m38011do();
        int iM38032protected = m38032protected(iM38011do);
        while (true) {
            if (iM38032protected <= 0) {
                z = false;
                break;
            } else if ("BootstrapMethods".equals(m38029interface(iM38011do + 2, cArr))) {
                z = true;
                break;
            } else {
                iM38011do += m38023abstract(iM38011do + 4) + 6;
                iM38032protected--;
            }
        }
        if (z) {
            int iM38032protected2 = m38032protected(iM38011do + 8);
            int i2 = iM38011do + 10;
            int i3 = i2;
            for (i = 0; i < iM38032protected2; i++) {
                int i4 = (i3 - iM38011do) - 10;
                int iHashCode = m38031private(m38032protected(i3), cArr).hashCode();
                for (int iM38032protected3 = m38032protected(i3 + 2); iM38032protected3 > 0; iM38032protected3--) {
                    iHashCode ^= m38031private(m38032protected(i3 + 4), cArr).hashCode();
                    i3 += 2;
                }
                i3 += 4;
                Cthis cthis = new Cthis(i);
                cthis.m38048new(i4, iHashCode & Integer.MAX_VALUE);
                int length = cthis.f34092goto % cthisArr.length;
                cthis.f34095this = cthisArr[length];
                cthisArr[length] = cthis;
            }
            int iM38023abstract = m38023abstract(iM38011do + 4);
            ee eeVar = new ee(iM38023abstract + 62);
            eeVar.m1801case(this.f34063do, i2, iM38023abstract - 2);
            cfor.f34051volatile = iM38032protected2;
            cfor.f34033interface = eeVar;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m38010const(Cnew cnew) {
        int i;
        String str = cnew.f34074else;
        Object[] objArr = cnew.f34079import;
        int i2 = 0;
        if ((cnew.f34086try & 8) == 0) {
            if ("<init>".equals(cnew.f34069case)) {
                objArr[0] = Opcodes.UNINITIALIZED_THIS;
            } else {
                objArr[0] = m38030package(this.f34067try + 2, cnew.f34076for);
            }
            i2 = 1;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt == 'F') {
                i = i2 + 1;
                objArr[i2] = Opcodes.FLOAT;
            } else if (cCharAt != 'L') {
                if (cCharAt != 'S' && cCharAt != 'I') {
                    if (cCharAt == 'J') {
                        i = i2 + 1;
                        objArr[i2] = Opcodes.LONG;
                    } else if (cCharAt != 'Z') {
                        if (cCharAt != '[') {
                            switch (cCharAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i = i2 + 1;
                                    objArr[i2] = Opcodes.DOUBLE;
                                    break;
                                default:
                                    cnew.f34085throw = i2;
                                    return;
                            }
                        } else {
                            while (str.charAt(i4) == '[') {
                                i4++;
                            }
                            if (str.charAt(i4) == 'L') {
                                do {
                                    i4++;
                                } while (str.charAt(i4) != ';');
                            }
                            int i5 = i4 + 1;
                            objArr[i2] = str.substring(i3, i5);
                            i3 = i5;
                            i2++;
                        }
                    }
                }
                i = i2 + 1;
                objArr[i2] = Opcodes.INTEGER;
            } else {
                int i6 = i4;
                while (str.charAt(i6) != ';') {
                    i6++;
                }
                objArr[i2] = str.substring(i4, i6);
                i2++;
                i3 = i6 + 1;
            }
            i2 = i;
            i3 = i4;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m38011do() {
        int i = this.f34067try;
        int iM38032protected = i + 8 + (m38032protected(i + 6) * 2);
        for (int iM38032protected2 = m38032protected(iM38032protected); iM38032protected2 > 0; iM38032protected2--) {
            for (int iM38032protected3 = m38032protected(iM38032protected + 8); iM38032protected3 > 0; iM38032protected3--) {
                iM38032protected += m38023abstract(iM38032protected + 12) + 6;
            }
            iM38032protected += 8;
        }
        int iM38023abstract = iM38032protected + 2;
        for (int iM38032protected4 = m38032protected(iM38023abstract); iM38032protected4 > 0; iM38032protected4--) {
            for (int iM38032protected5 = m38032protected(iM38023abstract + 8); iM38032protected5 > 0; iM38032protected5--) {
                iM38023abstract += m38023abstract(iM38023abstract + 12) + 6;
            }
            iM38023abstract += 8;
        }
        return iM38023abstract + 2;
    }

    /* renamed from: else, reason: not valid java name */
    private int m38012else(Object[] objArr, int i, int i2, char[] cArr, Cbreak[] cbreakArr) {
        int i3 = i2 + 1;
        switch (this.f34063do[i2] & 255) {
            case 0:
                objArr[i] = Opcodes.TOP;
                return i3;
            case 1:
                objArr[i] = Opcodes.INTEGER;
                return i3;
            case 2:
                objArr[i] = Opcodes.FLOAT;
                return i3;
            case 3:
                objArr[i] = Opcodes.DOUBLE;
                return i3;
            case 4:
                objArr[i] = Opcodes.LONG;
                return i3;
            case 5:
                objArr[i] = Opcodes.NULL;
                return i3;
            case 6:
                objArr[i] = Opcodes.UNINITIALIZED_THIS;
                return i3;
            case 7:
                objArr[i] = m38030package(i3, cArr);
                break;
            default:
                objArr[i] = m38025continue(m38032protected(i3), cbreakArr);
                break;
        }
        return i3 + 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r2 >= r0.length) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        r3 = new byte[r2];
        java.lang.System.arraycopy(r0, 0, r3, 0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        r0 = r3;
     */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] m38013final(InputStream inputStream, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IOException("Class not found");
        }
        try {
            byte[] bArr = new byte[inputStream.available()];
            int i = 0;
            while (true) {
                int i2 = inputStream.read(bArr, i, bArr.length - i);
                if (i2 == -1) {
                    break;
                }
                i += i2;
                if (i == bArr.length) {
                    int i3 = inputStream.read();
                    if (i3 < 0) {
                        if (z) {
                            inputStream.close();
                        }
                        return bArr;
                    }
                    byte[] bArr2 = new byte[bArr.length + 1000];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    int i4 = i + 1;
                    bArr2[i] = (byte) i3;
                    i = i4;
                    bArr = bArr2;
                }
            }
        } finally {
            if (z) {
                inputStream.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x01ec  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m38014for(int i, char[] cArr, String str, d2 d2Var) {
        Object objM38031private;
        Object sh;
        int i2 = 0;
        if (d2Var == null) {
            int i3 = this.f34063do[i] & 255;
            return i3 != 64 ? i3 != 91 ? i3 != 101 ? i + 3 : i + 5 : m38019new(i + 1, cArr, false, null) : m38019new(i + 3, cArr, true, null);
        }
        int i4 = i + 1;
        int i5 = this.f34063do[i] & 255;
        if (i5 == 64) {
            return m38019new(i4 + 2, cArr, true, d2Var.mo1121if(str, m38029interface(i4, cArr)));
        }
        if (i5 == 70) {
            objM38031private = m38031private(m38032protected(i4), cArr);
            d2Var.mo1119do(str, objM38031private);
        } else {
            if (i5 != 83) {
                if (i5 == 99) {
                    objM38031private = f92.m2199abstract(m38029interface(i4, cArr));
                } else {
                    if (i5 == 101) {
                        d2Var.mo1123try(str, m38029interface(i4, cArr), m38029interface(i4 + 2, cArr));
                        return i4 + 4;
                    }
                    if (i5 == 115) {
                        objM38031private = m38029interface(i4, cArr);
                    } else if (i5 != 73 && i5 != 74) {
                        if (i5 == 90) {
                            objM38031private = m38023abstract(this.f34065if[m38032protected(i4)]) == 0 ? Boolean.FALSE : Boolean.TRUE;
                        } else {
                            if (i5 == 91) {
                                int iM38032protected = m38032protected(i4);
                                int i6 = i4 + 2;
                                if (iM38032protected == 0) {
                                    return m38019new(i6 - 2, cArr, false, d2Var.mo1120for(str));
                                }
                                int i7 = i6 + 1;
                                int i8 = this.f34063do[i6] & 255;
                                if (i8 == 70) {
                                    float[] fArr = new float[iM38032protected];
                                    while (i2 < iM38032protected) {
                                        fArr[i2] = Float.intBitsToFloat(m38023abstract(this.f34065if[m38032protected(i7)]));
                                        i7 += 3;
                                        i2++;
                                    }
                                    d2Var.mo1119do(str, fArr);
                                } else if (i8 == 83) {
                                    short[] sArr = new short[iM38032protected];
                                    while (i2 < iM38032protected) {
                                        sArr[i2] = (short) m38023abstract(this.f34065if[m38032protected(i7)]);
                                        i7 += 3;
                                        i2++;
                                    }
                                    d2Var.mo1119do(str, sArr);
                                } else if (i8 == 90) {
                                    boolean[] zArr = new boolean[iM38032protected];
                                    for (int i9 = 0; i9 < iM38032protected; i9++) {
                                        zArr[i9] = m38023abstract(this.f34065if[m38032protected(i7)]) != 0;
                                        i7 += 3;
                                    }
                                    d2Var.mo1119do(str, zArr);
                                } else if (i8 == 73) {
                                    int[] iArr = new int[iM38032protected];
                                    while (i2 < iM38032protected) {
                                        iArr[i2] = m38023abstract(this.f34065if[m38032protected(i7)]);
                                        i7 += 3;
                                        i2++;
                                    }
                                    d2Var.mo1119do(str, iArr);
                                } else if (i8 != 74) {
                                    switch (i8) {
                                        case 66:
                                            byte[] bArr = new byte[iM38032protected];
                                            while (i2 < iM38032protected) {
                                                bArr[i2] = (byte) m38023abstract(this.f34065if[m38032protected(i7)]);
                                                i7 += 3;
                                                i2++;
                                            }
                                            d2Var.mo1119do(str, bArr);
                                            break;
                                        case 67:
                                            char[] cArr2 = new char[iM38032protected];
                                            while (i2 < iM38032protected) {
                                                cArr2[i2] = (char) m38023abstract(this.f34065if[m38032protected(i7)]);
                                                i7 += 3;
                                                i2++;
                                            }
                                            d2Var.mo1119do(str, cArr2);
                                            break;
                                        case 68:
                                            double[] dArr = new double[iM38032protected];
                                            while (i2 < iM38032protected) {
                                                dArr[i2] = Double.longBitsToDouble(m38036strictfp(this.f34065if[m38032protected(i7)]));
                                                i7 += 3;
                                                i2++;
                                            }
                                            d2Var.mo1119do(str, dArr);
                                            break;
                                        default:
                                            return m38019new(i7 - 3, cArr, false, d2Var.mo1120for(str));
                                    }
                                } else {
                                    long[] jArr = new long[iM38032protected];
                                    while (i2 < iM38032protected) {
                                        jArr[i2] = m38036strictfp(this.f34065if[m38032protected(i7)]);
                                        i7 += 3;
                                        i2++;
                                    }
                                    d2Var.mo1119do(str, jArr);
                                }
                                return i7 - 1;
                            }
                            switch (i5) {
                                case 66:
                                    sh = new Byte((byte) m38023abstract(this.f34065if[m38032protected(i4)]));
                                    break;
                                case 67:
                                    sh = new Character((char) m38023abstract(this.f34065if[m38032protected(i4)]));
                                    break;
                                case 68:
                                    break;
                                default:
                                    return i4;
                            }
                        }
                    }
                }
                d2Var.mo1119do(str, objM38031private);
            } else {
                sh = new Short((short) m38023abstract(this.f34065if[m38032protected(i4)]));
            }
            d2Var.mo1119do(str, sh);
        }
        return i4 + 2;
    }

    /* renamed from: goto, reason: not valid java name */
    private o4 m38015goto(o4[] o4VarArr, String str, int i, int i2, char[] cArr, int i3, Cbreak[] cbreakArr) {
        for (int i4 = 0; i4 < o4VarArr.length; i4++) {
            if (o4VarArr[i4].f4408do.equals(str)) {
                return o4VarArr[i4].m5457else(this, i, i2, cArr, i3, cbreakArr);
            }
        }
        return new o4(str).m5457else(this, i, i2, null, -1, null);
    }

    /* renamed from: if, reason: not valid java name */
    private int m38016if(int i, boolean z, boolean z2, Cnew cnew) {
        int iM38012else;
        int i2;
        char[] cArr = cnew.f34076for;
        Cbreak[] cbreakArr = cnew.f34077goto;
        if (z) {
            int i3 = i + 1;
            i2 = this.f34063do[i] & 255;
            iM38012else = i3;
        } else {
            cnew.f34070catch = -1;
            iM38012else = i;
            i2 = 255;
        }
        cnew.f34087while = 0;
        if (i2 < 64) {
            cnew.f34083super = 3;
            cnew.f34080native = 0;
        } else if (i2 < 128) {
            i2 -= 64;
            iM38012else = m38012else(cnew.f34082public, 0, iM38012else, cArr, cbreakArr);
            cnew.f34083super = 4;
            cnew.f34080native = 1;
        } else {
            int iM38032protected = m38032protected(iM38012else);
            iM38012else += 2;
            if (i2 == 247) {
                iM38012else = m38012else(cnew.f34082public, 0, iM38012else, cArr, cbreakArr);
                cnew.f34083super = 4;
                cnew.f34080native = 1;
            } else {
                if (i2 >= 248 && i2 < 251) {
                    cnew.f34083super = 2;
                    int i4 = 251 - i2;
                    cnew.f34087while = i4;
                    cnew.f34085throw -= i4;
                } else if (i2 == 251) {
                    cnew.f34083super = 3;
                } else if (i2 < 255) {
                    int i5 = i2 - 251;
                    int i6 = z2 ? cnew.f34085throw : 0;
                    int i7 = i5;
                    while (i7 > 0) {
                        iM38012else = m38012else(cnew.f34079import, i6, iM38012else, cArr, cbreakArr);
                        i7--;
                        i6++;
                    }
                    cnew.f34083super = 1;
                    cnew.f34087while = i5;
                    cnew.f34085throw += i5;
                } else {
                    cnew.f34083super = 0;
                    int iM38032protected2 = m38032protected(iM38012else);
                    int iM38012else2 = iM38012else + 2;
                    cnew.f34087while = iM38032protected2;
                    cnew.f34085throw = iM38032protected2;
                    int i8 = 0;
                    while (iM38032protected2 > 0) {
                        iM38012else2 = m38012else(cnew.f34079import, i8, iM38012else2, cArr, cbreakArr);
                        iM38032protected2--;
                        i8++;
                    }
                    int iM38032protected3 = m38032protected(iM38012else2);
                    iM38012else = iM38012else2 + 2;
                    cnew.f34080native = iM38032protected3;
                    int i9 = 0;
                    while (iM38032protected3 > 0) {
                        iM38012else = m38012else(cnew.f34082public, i9, iM38012else, cArr, cbreakArr);
                        iM38032protected3--;
                        i9++;
                    }
                }
                cnew.f34080native = 0;
            }
            i2 = iM38032protected;
        }
        int i10 = cnew.f34070catch + i2 + 1;
        cnew.f34070catch = i10;
        m38025continue(i10, cbreakArr);
        return iM38012else;
    }

    /* renamed from: import, reason: not valid java name */
    private int m38017import(bm bmVar, Cnew cnew, int i) {
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        String[] strArr;
        String str;
        int i9;
        int i10;
        char[] cArr = cnew.f34076for;
        cnew.f34086try = m38032protected(i);
        cnew.f34069case = m38029interface(i + 2, cArr);
        cnew.f34074else = m38029interface(i + 4, cArr);
        int i11 = i + 6;
        int iM38023abstract = i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        String[] strArr2 = null;
        String strM38029interface = null;
        o4 o4Var = null;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        for (int iM38032protected = m38032protected(i11); iM38032protected > 0; iM38032protected--) {
            String strM38029interface2 = m38029interface(iM38023abstract + 2, cArr);
            int i22 = i12;
            if (!"Code".equals(strM38029interface2)) {
                if ("Exceptions".equals(strM38029interface2)) {
                    int iM38032protected2 = m38032protected(iM38023abstract + 8);
                    strArr2 = new String[iM38032protected2];
                    i2 = i13;
                    int i23 = iM38023abstract + 10;
                    for (int i24 = 0; i24 < iM38032protected2; i24++) {
                        strArr2[i24] = m38030package(i23, cArr);
                        i23 += 2;
                    }
                    i19 = i23;
                } else {
                    i2 = i13;
                    if ("Signature".equals(strM38029interface2)) {
                        strM38029interface = m38029interface(iM38023abstract + 8, cArr);
                    } else {
                        if ("Deprecated".equals(strM38029interface2)) {
                            i9 = cnew.f34086try;
                            i10 = 131072;
                        } else if ("RuntimeVisibleAnnotations".equals(strM38029interface2)) {
                            i17 = iM38023abstract + 8;
                        } else if ("RuntimeVisibleTypeAnnotations".equals(strM38029interface2)) {
                            i14 = iM38023abstract + 8;
                        } else if ("AnnotationDefault".equals(strM38029interface2)) {
                            i15 = iM38023abstract + 8;
                        } else if ("Synthetic".equals(strM38029interface2)) {
                            i9 = cnew.f34086try;
                            i10 = 266240;
                        } else if ("RuntimeInvisibleAnnotations".equals(strM38029interface2)) {
                            i16 = iM38023abstract + 8;
                        } else if ("RuntimeInvisibleTypeAnnotations".equals(strM38029interface2)) {
                            i13 = iM38023abstract + 8;
                            i12 = i22;
                        } else if ("RuntimeVisibleParameterAnnotations".equals(strM38029interface2)) {
                            i20 = iM38023abstract + 8;
                        } else if ("RuntimeInvisibleParameterAnnotations".equals(strM38029interface2)) {
                            i12 = iM38023abstract + 8;
                            i13 = i2;
                        } else if ("MethodParameters".equals(strM38029interface2)) {
                            i18 = iM38023abstract + 8;
                        } else {
                            i3 = i22;
                            i4 = i2;
                            i5 = i14;
                            i6 = i15;
                            i7 = i16;
                            i8 = i17;
                            strArr = strArr2;
                            str = strM38029interface;
                            o4 o4VarM38015goto = m38015goto(cnew.f34073do, strM38029interface2, iM38023abstract + 8, m38023abstract(iM38023abstract + 4), cArr, -1, null);
                            if (o4VarM38015goto != null) {
                                o4VarM38015goto.f4409for = o4Var;
                                o4Var = o4VarM38015goto;
                            }
                            i15 = i6;
                            strArr2 = strArr;
                            strM38029interface = str;
                            i12 = i3;
                            i13 = i4;
                            i14 = i5;
                            i16 = i7;
                            i17 = i8;
                        }
                        cnew.f34086try = i9 | i10;
                        i5 = i14;
                        i6 = i15;
                        i7 = i16;
                        i8 = i17;
                        str = strM38029interface;
                        i4 = i2;
                        i3 = i22;
                        strArr = strArr2;
                        i15 = i6;
                        strArr2 = strArr;
                        strM38029interface = str;
                        i12 = i3;
                        i13 = i4;
                        i14 = i5;
                        i16 = i7;
                        i17 = i8;
                    }
                }
                i13 = i2;
                i12 = i22;
            } else if ((cnew.f34078if & 1) == 0) {
                i21 = iM38023abstract + 8;
                i12 = i22;
            } else {
                i4 = i13;
                i5 = i14;
                i6 = i15;
                i7 = i16;
                i8 = i17;
                str = strM38029interface;
                i3 = i22;
                strArr = strArr2;
                i15 = i6;
                strArr2 = strArr;
                strM38029interface = str;
                i12 = i3;
                i13 = i4;
                i14 = i5;
                i16 = i7;
                i17 = i8;
            }
            iM38023abstract += m38023abstract(iM38023abstract + 4) + 6;
        }
        int i25 = i12;
        int i26 = i13;
        int i27 = i14;
        int i28 = i15;
        int i29 = i16;
        int i30 = i17;
        String[] strArr3 = strArr2;
        String str2 = strM38029interface;
        int i31 = iM38023abstract + 2;
        xz0 xz0VarMo571else = bmVar.mo571else(cnew.f34086try, cnew.f34069case, cnew.f34074else, str2, strArr3);
        if (xz0VarMo571else == null) {
            return i31;
        }
        if (xz0VarMo571else instanceof Ccatch) {
            Ccatch ccatch = (Ccatch) xz0VarMo571else;
            if (ccatch.f33974for.f34028for == this && str2 == ccatch.f33975goto) {
                if (strArr3 != null) {
                    if (strArr3.length == ccatch.f33965catch) {
                        int length = strArr3.length - 1;
                        while (length >= 0) {
                            int i32 = i19 - 2;
                            if (ccatch.f33966class[length] == m38032protected(i32)) {
                                length--;
                                i19 = i32;
                            }
                        }
                        z = true;
                    }
                    z = false;
                    break;
                } else {
                    if (ccatch.f33965catch != 0) {
                        z = false;
                        break;
                    }
                    z = true;
                }
                if (z) {
                    ccatch.f33992this = i11;
                    ccatch.f33963break = i31 - i11;
                    return i31;
                }
            }
        }
        if (i18 != 0) {
            int i33 = this.f34063do[i18] & 255;
            int i34 = i18 + 1;
            while (i33 > 0) {
                xz0VarMo571else.mo9655throws(m38029interface(i34, cArr), m38032protected(i34 + 2));
                i33--;
                i34 += 4;
            }
        }
        if (i28 != 0) {
            d2 d2VarMo9642if = xz0VarMo571else.mo9642if();
            m38014for(i28, cArr, null, d2VarMo9642if);
            if (d2VarMo9642if != null) {
                d2VarMo9642if.mo1122new();
            }
        }
        if (i30 != 0) {
            int iM38019new = i30 + 2;
            for (int iM38032protected3 = m38032protected(i30); iM38032protected3 > 0; iM38032protected3--) {
                iM38019new = m38019new(iM38019new + 2, cArr, true, xz0VarMo571else.mo9635do(m38029interface(iM38019new, cArr), true));
            }
        }
        if (i29 != 0) {
            int iM38032protected4 = m38032protected(i29);
            int iM38019new2 = i29 + 2;
            while (iM38032protected4 > 0) {
                iM38032protected4--;
                iM38019new2 = m38019new(iM38019new2 + 2, cArr, true, xz0VarMo571else.mo9635do(m38029interface(iM38019new2, cArr), false));
            }
        }
        if (i27 != 0) {
            int iM38019new3 = i27 + 2;
            for (int iM38032protected5 = m38032protected(i27); iM38032protected5 > 0; iM38032protected5--) {
                int iM38008case = m38008case(cnew, iM38019new3);
                iM38019new3 = m38019new(iM38008case + 2, cArr, true, xz0VarMo571else.mo9647private(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case, cArr), true));
            }
        }
        if (i26 != 0) {
            int iM38019new4 = i26 + 2;
            for (int iM38032protected6 = m38032protected(i26); iM38032protected6 > 0; iM38032protected6--) {
                int iM38008case2 = m38008case(cnew, iM38019new4);
                iM38019new4 = m38019new(iM38008case2 + 2, cArr, true, xz0VarMo571else.mo9647private(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case2, cArr), false));
            }
        }
        int i35 = i20;
        if (i35 != 0) {
            m38018native(xz0VarMo571else, cnew, i35, true);
        }
        if (i25 != 0) {
            m38018native(xz0VarMo571else, cnew, i25, false);
        }
        while (o4Var != null) {
            o4 o4Var2 = o4Var.f4409for;
            o4Var.f4409for = null;
            xz0VarMo571else.mo9640for(o4Var);
            o4Var = o4Var2;
        }
        int i36 = i21;
        if (i36 != 0) {
            xz0VarMo571else.mo9645new();
            m38007break(xz0VarMo571else, cnew, i36);
        }
        xz0VarMo571else.mo9656try();
        return i31;
    }

    /* renamed from: native, reason: not valid java name */
    private void m38018native(xz0 xz0Var, Cnew cnew, int i, boolean z) {
        int iM38019new = i + 1;
        int i2 = this.f34063do[i] & 255;
        int length = f92.m2200case(cnew.f34074else).length - i2;
        int i3 = 0;
        while (i3 < length) {
            d2 d2VarMo9634default = xz0Var.mo9634default(i3, "Ljava/lang/Synthetic;", false);
            if (d2VarMo9634default != null) {
                d2VarMo9634default.mo1122new();
            }
            i3++;
        }
        char[] cArr = cnew.f34076for;
        while (i3 < i2 + length) {
            iM38019new += 2;
            for (int iM38032protected = m38032protected(iM38019new); iM38032protected > 0; iM38032protected--) {
                iM38019new = m38019new(iM38019new + 2, cArr, true, xz0Var.mo9634default(i3, m38029interface(iM38019new, cArr), z));
            }
            i3++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private int m38019new(int i, char[] cArr, boolean z, d2 d2Var) {
        int iM38032protected = m38032protected(i);
        int iM38014for = i + 2;
        if (z) {
            while (iM38032protected > 0) {
                iM38014for = m38014for(iM38014for + 2, cArr, m38029interface(iM38014for, cArr), d2Var);
                iM38032protected--;
            }
        } else {
            while (iM38032protected > 0) {
                iM38014for = m38014for(iM38014for, cArr, null, d2Var);
                iM38032protected--;
            }
        }
        if (d2Var != null) {
            d2Var.mo1122new();
        }
        return iM38014for;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] m38020super(xz0 xz0Var, Cnew cnew, int i, boolean z) {
        int i2;
        char[] cArr = cnew.f34076for;
        int iM38032protected = m38032protected(i);
        int[] iArr = new int[iM38032protected];
        int iM38019new = i + 2;
        for (int i3 = 0; i3 < iM38032protected; i3++) {
            iArr[i3] = iM38019new;
            int iM38023abstract = m38023abstract(iM38019new);
            int i4 = iM38023abstract >>> 24;
            if (i4 == 0 || i4 == 1) {
                i2 = iM38019new + 2;
            } else {
                if (i4 != 64 && i4 != 65) {
                    switch (i4) {
                        case 19:
                        case 20:
                        case 21:
                            i2 = iM38019new + 1;
                            break;
                        case 22:
                            break;
                        default:
                            switch (i4) {
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                    i2 = iM38019new + 4;
                                    break;
                            }
                    }
                } else {
                    for (int iM38032protected2 = m38032protected(iM38019new + 1); iM38032protected2 > 0; iM38032protected2--) {
                        int iM38032protected3 = m38032protected(iM38019new + 3);
                        int iM38032protected4 = m38032protected(iM38019new + 5);
                        m38025continue(iM38032protected3, cnew.f34077goto);
                        m38025continue(iM38032protected3 + iM38032protected4, cnew.f34077goto);
                        iM38019new += 6;
                    }
                }
                i2 = iM38019new + 3;
            }
            int iM38028finally = m38028finally(i2);
            if (i4 == 66) {
                p92 p92Var = iM38028finally != 0 ? new p92(this.f34063do, i2) : null;
                int i5 = i2 + (iM38028finally * 2) + 1;
                iM38019new = m38019new(i5 + 2, cArr, true, xz0Var.mo9639finally(iM38023abstract, p92Var, m38029interface(i5, cArr), z));
            } else {
                iM38019new = m38019new(i2 + 3 + (iM38028finally * 2), cArr, true, null);
            }
        }
        return iArr;
    }

    /* renamed from: this, reason: not valid java name */
    private String m38021this(int i, int i2, char[] cArr) {
        int i3;
        int i4 = i2 + i;
        byte[] bArr = this.f34063do;
        int i5 = 0;
        char c = 0;
        char c2 = 0;
        while (i < i4) {
            int i6 = i + 1;
            byte b = bArr[i];
            if (c == 0) {
                int i7 = b & 255;
                if (i7 < 128) {
                    cArr[i5] = (char) i7;
                    i5++;
                } else if (i7 >= 224 || i7 <= 191) {
                    c2 = (char) (i7 & 15);
                    c = 2;
                } else {
                    i3 = i7 & 31;
                    c2 = (char) i3;
                    c = 1;
                }
            } else if (c == 1) {
                cArr[i5] = (char) ((b & Utf8.REPLACEMENT_BYTE) | (c2 << 6));
                i5++;
                c = 0;
            } else if (c == 2) {
                i3 = (b & Utf8.REPLACEMENT_BYTE) | (c2 << 6);
                c2 = (char) i3;
                c = 1;
            }
            i = i6;
        }
        return new String(cArr, 0, i5);
    }

    /* renamed from: try, reason: not valid java name */
    private int m38022try(bm bmVar, Cnew cnew, int i) {
        int i2;
        Cnew cnew2 = cnew;
        char[] cArr = cnew2.f34076for;
        int iM38032protected = m38032protected(i);
        String strM38029interface = m38029interface(i + 2, cArr);
        String strM38029interface2 = m38029interface(i + 4, cArr);
        int i3 = i + 6;
        int iM38023abstract = i3;
        int i4 = iM38032protected;
        int iM38032protected2 = m38032protected(i3);
        o4 o4VarM38015goto = null;
        String strM38029interface3 = null;
        Object objM38031private = null;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (iM38032protected2 > 0) {
            String strM38029interface4 = m38029interface(iM38023abstract + 2, cArr);
            if ("ConstantValue".equals(strM38029interface4)) {
                int iM38032protected3 = m38032protected(iM38023abstract + 8);
                objM38031private = iM38032protected3 == 0 ? null : m38031private(iM38032protected3, cArr);
            } else if ("Signature".equals(strM38029interface4)) {
                strM38029interface3 = m38029interface(iM38023abstract + 8, cArr);
            } else {
                if ("Deprecated".equals(strM38029interface4)) {
                    i2 = 131072;
                } else if ("Synthetic".equals(strM38029interface4)) {
                    i2 = 266240;
                } else if ("RuntimeVisibleAnnotations".equals(strM38029interface4)) {
                    i8 = iM38023abstract + 8;
                } else if ("RuntimeVisibleTypeAnnotations".equals(strM38029interface4)) {
                    i6 = iM38023abstract + 8;
                } else if ("RuntimeInvisibleAnnotations".equals(strM38029interface4)) {
                    i7 = iM38023abstract + 8;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(strM38029interface4)) {
                    i5 = iM38023abstract + 8;
                } else {
                    o4 o4Var = o4VarM38015goto;
                    int i9 = i5;
                    int i10 = i6;
                    int i11 = i7;
                    int i12 = i8;
                    o4VarM38015goto = m38015goto(cnew2.f34073do, strM38029interface4, iM38023abstract + 8, m38023abstract(iM38023abstract + 4), cArr, -1, null);
                    if (o4VarM38015goto != null) {
                        o4VarM38015goto.f4409for = o4Var;
                        i7 = i11;
                    } else {
                        i7 = i11;
                        o4VarM38015goto = o4Var;
                    }
                    i8 = i12;
                    i5 = i9;
                    i6 = i10;
                }
                i4 |= i2;
            }
            iM38023abstract += m38023abstract(iM38023abstract + 4) + 6;
            iM38032protected2--;
            cnew2 = cnew;
        }
        o4 o4Var2 = o4VarM38015goto;
        int i13 = i5;
        int i14 = i6;
        int i15 = i7;
        int i16 = i8;
        int i17 = iM38023abstract + 2;
        la0 la0VarMo577try = bmVar.mo577try(i4, strM38029interface, strM38029interface2, strM38029interface3, objM38031private);
        if (la0VarMo577try == null) {
            return i17;
        }
        if (i16 != 0) {
            int iM38019new = i16 + 2;
            for (int iM38032protected4 = m38032protected(i16); iM38032protected4 > 0; iM38032protected4--) {
                iM38019new = m38019new(iM38019new + 2, cArr, true, la0VarMo577try.mo4626do(m38029interface(iM38019new, cArr), true));
            }
        }
        if (i15 != 0) {
            int iM38019new2 = i15 + 2;
            for (int iM38032protected5 = m38032protected(i15); iM38032protected5 > 0; iM38032protected5--) {
                iM38019new2 = m38019new(iM38019new2 + 2, cArr, true, la0VarMo577try.mo4626do(m38029interface(iM38019new2, cArr), false));
            }
        }
        if (i14 != 0) {
            int iM38019new3 = i14 + 2;
            for (int iM38032protected6 = m38032protected(i14); iM38032protected6 > 0; iM38032protected6--) {
                int iM38008case = m38008case(cnew, iM38019new3);
                iM38019new3 = m38019new(iM38008case + 2, cArr, true, la0VarMo577try.mo4629new(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case, cArr), true));
            }
        }
        if (i13 != 0) {
            int iM38019new4 = i13 + 2;
            for (int iM38032protected7 = m38032protected(i13); iM38032protected7 > 0; iM38032protected7--) {
                int iM38008case2 = m38008case(cnew, iM38019new4);
                iM38019new4 = m38019new(iM38008case2 + 2, cArr, true, la0VarMo577try.mo4629new(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case2, cArr), false));
            }
        }
        while (o4Var2 != null) {
            o4 o4Var3 = o4Var2.f4409for;
            o4Var2.f4409for = null;
            la0VarMo577try.mo4628if(o4Var2);
            o4Var2 = o4Var3;
        }
        la0VarMo577try.mo4627for();
        return i17;
    }

    /* renamed from: abstract, reason: not valid java name */
    public int m38023abstract(int i) {
        byte[] bArr = this.f34063do;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m38024catch(Cfor cfor) {
        char[] cArr = new char[this.f34066new];
        int length = this.f34065if.length;
        Cthis[] cthisArr = new Cthis[length];
        int i = 1;
        while (i < length) {
            int i2 = this.f34065if[i];
            byte b = this.f34063do[i2 - 1];
            Cthis cthis = new Cthis(i);
            if (b == 1) {
                String[] strArr = this.f34064for;
                String strM38021this = strArr[i];
                if (strM38021this == null) {
                    int i3 = this.f34065if[i];
                    strM38021this = m38021this(i3 + 2, m38032protected(i3), cArr);
                    strArr[i] = strM38021this;
                }
                cthis.m38049try(b, strM38021this, null, null);
            } else if (b == 15) {
                int i4 = this.f34065if[m38032protected(i2 + 1)];
                int i5 = this.f34065if[m38032protected(i4 + 2)];
                cthis.m38049try(m38028finally(i2) + 20, m38030package(i4, cArr), m38029interface(i5, cArr), m38029interface(i5 + 2, cArr));
            } else if (b == 18) {
                if (cfor.f34033interface == null) {
                    m38009class(cfor, cthisArr, cArr);
                }
                int i6 = this.f34065if[m38032protected(i2 + 2)];
                cthis.m38044else(m38029interface(i6, cArr), m38029interface(i6 + 2, cArr), m38032protected(i2));
            } else if (b == 3) {
                cthis.m38045for(m38023abstract(i2));
            } else if (b != 4) {
                if (b == 5) {
                    cthis.m38042case(m38036strictfp(i2));
                } else if (b != 6) {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                            int i7 = this.f34065if[m38032protected(i2 + 2)];
                            cthis.m38049try(b, m38030package(i2, cArr), m38029interface(i7, cArr), m38029interface(i7 + 2, cArr));
                            break;
                        case 12:
                            cthis.m38049try(b, m38029interface(i2, cArr), m38029interface(i2 + 2, cArr), null);
                            break;
                        default:
                            cthis.m38049try(b, m38029interface(i2, cArr), null, null);
                            break;
                    }
                } else {
                    cthis.m38043do(Double.longBitsToDouble(m38036strictfp(i2)));
                }
                i++;
            } else {
                cthis.m38047if(Float.intBitsToFloat(m38023abstract(i2)));
            }
            int i8 = cthis.f34092goto % length;
            cthis.f34095this = cthisArr[i8];
            cthisArr[i8] = cthis;
            i++;
        }
        int i9 = this.f34065if[1] - 1;
        cfor.f34018case.m1801case(this.f34063do, i9, this.f34067try - i9);
        cfor.f34024else = cthisArr;
        double d = length;
        Double.isNaN(d);
        cfor.f34029goto = (int) (d * 0.75d);
        cfor.f34050try = length;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cbreak m38025continue(int i, Cbreak[] cbreakArr) {
        if (cbreakArr[i] == null) {
            cbreakArr[i] = new Cbreak();
        }
        return cbreakArr[i];
    }

    /* renamed from: default, reason: not valid java name */
    public int m38026default() {
        return this.f34066new;
    }

    /* renamed from: extends, reason: not valid java name */
    public String m38027extends() {
        return m38030package(this.f34067try + 4, new char[this.f34066new]);
    }

    /* renamed from: finally, reason: not valid java name */
    public int m38028finally(int i) {
        return this.f34063do[i] & 255;
    }

    /* renamed from: interface, reason: not valid java name */
    public String m38029interface(int i, char[] cArr) {
        int iM38032protected = m38032protected(i);
        if (i == 0 || iM38032protected == 0) {
            return null;
        }
        String[] strArr = this.f34064for;
        String str = strArr[iM38032protected];
        if (str != null) {
            return str;
        }
        int i2 = this.f34065if[iM38032protected];
        String strM38021this = m38021this(i2 + 2, m38032protected(i2), cArr);
        strArr[iM38032protected] = strM38021this;
        return strM38021this;
    }

    /* renamed from: package, reason: not valid java name */
    public String m38030package(int i, char[] cArr) {
        return m38029interface(this.f34065if[m38032protected(i)], cArr);
    }

    /* renamed from: private, reason: not valid java name */
    public Object m38031private(int i, char[] cArr) {
        int i2 = this.f34065if[i];
        byte b = this.f34063do[i2 - 1];
        if (b == 16) {
            return f92.m2215return(m38029interface(i2, cArr));
        }
        switch (b) {
            case 3:
                return new Integer(m38023abstract(i2));
            case 4:
                return new Float(Float.intBitsToFloat(m38023abstract(i2)));
            case 5:
                return new Long(m38036strictfp(i2));
            case 6:
                return new Double(Double.longBitsToDouble(m38036strictfp(i2)));
            case 7:
                return f92.m2216static(m38029interface(i2, cArr));
            case 8:
                return m38029interface(i2, cArr);
            default:
                int iM38028finally = m38028finally(i2);
                int[] iArr = this.f34065if;
                int i3 = iArr[m38032protected(i2 + 1)];
                String strM38030package = m38030package(i3, cArr);
                int i4 = iArr[m38032protected(i3 + 2)];
                return new ti0(iM38028finally, strM38030package, m38029interface(i4, cArr), m38029interface(i4 + 2, cArr));
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public int m38032protected(int i) {
        byte[] bArr = this.f34063do;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    /* renamed from: public, reason: not valid java name */
    public int m38033public() {
        return m38032protected(this.f34067try);
    }

    /* renamed from: return, reason: not valid java name */
    public String m38034return() {
        return m38030package(this.f34067try + 2, new char[this.f34066new]);
    }

    /* renamed from: static, reason: not valid java name */
    public String[] m38035static() {
        int i = this.f34067try + 6;
        int iM38032protected = m38032protected(i);
        String[] strArr = new String[iM38032protected];
        if (iM38032protected > 0) {
            char[] cArr = new char[this.f34066new];
            for (int i2 = 0; i2 < iM38032protected; i2++) {
                i += 2;
                strArr[i2] = m38030package(i, cArr);
            }
        }
        return strArr;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public long m38036strictfp(int i) {
        return (m38023abstract(i) << 32) | (m38023abstract(i + 4) & 4294967295L);
    }

    /* renamed from: switch, reason: not valid java name */
    public int m38037switch(int i) {
        return this.f34065if[i];
    }

    /* renamed from: throw, reason: not valid java name */
    public void m38038throw(bm bmVar, int i) {
        m38041while(bmVar, new o4[0], i);
    }

    /* renamed from: throws, reason: not valid java name */
    public int m38039throws() {
        return this.f34065if.length;
    }

    /* renamed from: volatile, reason: not valid java name */
    public short m38040volatile(int i) {
        byte[] bArr = this.f34063do;
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* renamed from: while, reason: not valid java name */
    public void m38041while(bm bmVar, o4[] o4VarArr, int i) {
        int i2;
        String str;
        String str2;
        String[] strArr;
        String str3;
        o4 o4Var;
        int i3;
        int i4 = this.f34067try;
        char[] cArr = new char[this.f34066new];
        Cnew cnew = new Cnew();
        cnew.f34073do = o4VarArr;
        cnew.f34078if = i;
        cnew.f34076for = cArr;
        int iM38032protected = m38032protected(i4);
        String strM38030package = m38030package(i4 + 2, cArr);
        String strM38030package2 = m38030package(i4 + 4, cArr);
        int iM38032protected2 = m38032protected(i4 + 6);
        String[] strArr2 = new String[iM38032protected2];
        int i5 = i4 + 8;
        for (int i6 = 0; i6 < iM38032protected2; i6++) {
            strArr2[i6] = m38030package(i5, cArr);
            i5 += 2;
        }
        int iM38011do = m38011do();
        int iM38023abstract = iM38011do;
        int i7 = iM38032protected;
        int iM38032protected3 = m38032protected(iM38011do);
        int i8 = 0;
        String strM38029interface = null;
        String strM38021this = null;
        String strM38029interface2 = null;
        String strM38029interface3 = null;
        String str4 = null;
        String strM38029interface4 = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        o4 o4Var2 = null;
        while (iM38032protected3 > 0) {
            String strM38029interface5 = m38029interface(iM38023abstract + 2, cArr);
            if ("SourceFile".equals(strM38029interface5)) {
                strM38029interface2 = m38029interface(iM38023abstract + 8, cArr);
            } else if ("InnerClasses".equals(strM38029interface5)) {
                i12 = iM38023abstract + 8;
            } else if ("EnclosingMethod".equals(strM38029interface5)) {
                String strM38030package3 = m38030package(iM38023abstract + 8, cArr);
                int iM38032protected4 = m38032protected(iM38023abstract + 10);
                if (iM38032protected4 != 0) {
                    strM38029interface4 = m38029interface(this.f34065if[iM38032protected4], cArr);
                    strM38029interface = m38029interface(this.f34065if[iM38032protected4] + 2, cArr);
                }
                str4 = strM38030package3;
            } else if ("Signature".equals(strM38029interface5)) {
                strM38029interface3 = m38029interface(iM38023abstract + 8, cArr);
            } else if ("RuntimeVisibleAnnotations".equals(strM38029interface5)) {
                i8 = iM38023abstract + 8;
            } else if ("RuntimeVisibleTypeAnnotations".equals(strM38029interface5)) {
                i10 = iM38023abstract + 8;
            } else {
                if ("Deprecated".equals(strM38029interface5)) {
                    i3 = 131072;
                } else if ("Synthetic".equals(strM38029interface5)) {
                    i3 = 266240;
                } else if ("SourceDebugExtension".equals(strM38029interface5)) {
                    int iM38023abstract2 = m38023abstract(iM38023abstract + 4);
                    strM38021this = m38021this(iM38023abstract + 8, iM38023abstract2, new char[iM38023abstract2]);
                } else if ("RuntimeInvisibleAnnotations".equals(strM38029interface5)) {
                    i9 = iM38023abstract + 8;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(strM38029interface5)) {
                    i11 = iM38023abstract + 8;
                } else {
                    if ("BootstrapMethods".equals(strM38029interface5)) {
                        int iM38032protected5 = m38032protected(iM38023abstract + 8);
                        int[] iArr = new int[iM38032protected5];
                        int iM38032protected6 = iM38023abstract + 10;
                        int i13 = 0;
                        while (i13 < iM38032protected5) {
                            iArr[i13] = iM38032protected6;
                            iM38032protected6 += (m38032protected(iM38032protected6 + 2) + 2) << 1;
                            i13++;
                            i8 = i8;
                        }
                        cnew.f34081new = iArr;
                        str = strM38029interface;
                        str2 = strM38021this;
                        str3 = strM38029interface2;
                        strArr = strArr2;
                        o4Var = o4Var2;
                        i2 = i8;
                    } else {
                        i2 = i8;
                        str = strM38029interface;
                        str2 = strM38021this;
                        strArr = strArr2;
                        str3 = strM38029interface2;
                        o4 o4VarM38015goto = m38015goto(o4VarArr, strM38029interface5, iM38023abstract + 8, m38023abstract(iM38023abstract + 4), cArr, -1, null);
                        o4Var = o4Var2;
                        if (o4VarM38015goto != null) {
                            o4VarM38015goto.f4409for = o4Var;
                            o4Var2 = o4VarM38015goto;
                        }
                        strM38029interface2 = str3;
                        i8 = i2;
                        strM38029interface = str;
                        strM38021this = str2;
                        iM38023abstract += m38023abstract(iM38023abstract + 4) + 6;
                        iM38032protected3--;
                        strArr2 = strArr;
                    }
                    o4Var2 = o4Var;
                    strM38029interface2 = str3;
                    i8 = i2;
                    strM38029interface = str;
                    strM38021this = str2;
                    iM38023abstract += m38023abstract(iM38023abstract + 4) + 6;
                    iM38032protected3--;
                    strArr2 = strArr;
                }
                i7 |= i3;
            }
            strArr = strArr2;
            iM38023abstract += m38023abstract(iM38023abstract + 4) + 6;
            iM38032protected3--;
            strArr2 = strArr;
        }
        int i14 = i8;
        String str5 = strM38029interface;
        String str6 = strM38021this;
        String str7 = strM38029interface2;
        o4 o4Var3 = o4Var2;
        bmVar.mo570do(m38023abstract(this.f34065if[1] - 7), i7, strM38030package, strM38029interface3, strM38030package2, strArr2);
        if ((i & 2) == 0 && (str7 != null || str6 != null)) {
            bmVar.mo576this(str7, str6);
        }
        String str8 = str4;
        if (str8 != null) {
            bmVar.mo573goto(str8, strM38029interface4, str5);
        }
        if (i14 != 0) {
            int iM38019new = i14 + 2;
            for (int iM38032protected7 = m38032protected(i14); iM38032protected7 > 0; iM38032protected7--) {
                iM38019new = m38019new(iM38019new + 2, cArr, true, bmVar.mo574if(m38029interface(iM38019new, cArr), true));
            }
        }
        int i15 = i9;
        if (i15 != 0) {
            int iM38019new2 = i15 + 2;
            for (int iM38032protected8 = m38032protected(i15); iM38032protected8 > 0; iM38032protected8--) {
                iM38019new2 = m38019new(iM38019new2 + 2, cArr, true, bmVar.mo574if(m38029interface(iM38019new2, cArr), false));
            }
        }
        int i16 = i10;
        if (i16 != 0) {
            int iM38019new3 = i16 + 2;
            for (int iM38032protected9 = m38032protected(i16); iM38032protected9 > 0; iM38032protected9--) {
                int iM38008case = m38008case(cnew, iM38019new3);
                iM38019new3 = m38019new(iM38008case + 2, cArr, true, bmVar.mo568break(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case, cArr), true));
            }
        }
        int i17 = i11;
        if (i17 != 0) {
            int iM38019new4 = i17 + 2;
            for (int iM38032protected10 = m38032protected(i17); iM38032protected10 > 0; iM38032protected10--) {
                int iM38008case2 = m38008case(cnew, iM38019new4);
                iM38019new4 = m38019new(iM38008case2 + 2, cArr, true, bmVar.mo568break(cnew.f34084this, cnew.f34068break, m38029interface(iM38008case2, cArr), false));
            }
        }
        while (o4Var3 != null) {
            o4 o4Var4 = o4Var3.f4409for;
            o4Var3.f4409for = null;
            bmVar.mo572for(o4Var3);
            o4Var3 = o4Var4;
        }
        int i18 = i12;
        if (i18 != 0) {
            int i19 = i18 + 2;
            for (int iM38032protected11 = m38032protected(i18); iM38032protected11 > 0; iM38032protected11--) {
                bmVar.mo569case(m38030package(i19, cArr), m38030package(i19 + 2, cArr), m38029interface(i19 + 4, cArr), m38032protected(i19 + 6));
                i19 += 8;
            }
        }
        int iM38022try = this.f34067try + 10 + (iM38032protected2 * 2);
        for (int iM38032protected12 = m38032protected(iM38022try - 2); iM38032protected12 > 0; iM38032protected12--) {
            iM38022try = m38022try(bmVar, cnew, iM38022try);
        }
        int iM38017import = iM38022try + 2;
        for (int iM38032protected13 = m38032protected(iM38017import - 2); iM38032protected13 > 0; iM38032protected13--) {
            iM38017import = m38017import(bmVar, cnew, iM38017import);
        }
        bmVar.mo575new();
    }
}
