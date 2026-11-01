package android.support.v4;

import android.graphics.Bitmap;
import com.google.zxing.Ccase;
import com.google.zxing.Cdo;
import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public class di1 {

    /* renamed from: case, reason: not valid java name */
    public static final Map<Cnew, Object> f1051case;

    /* renamed from: do, reason: not valid java name */
    public static final Map<Cnew, Object> f1052do;

    /* renamed from: else, reason: not valid java name */
    public static final Map<Cnew, Object> f1053else;

    /* renamed from: for, reason: not valid java name */
    public static final Map<Cnew, Object> f1054for;

    /* renamed from: if, reason: not valid java name */
    public static final Map<Cnew, Object> f1055if;

    /* renamed from: new, reason: not valid java name */
    public static final Map<Cnew, Object> f1056new;

    /* renamed from: try, reason: not valid java name */
    public static final Map<Cnew, Object> f1057try;

    static {
        EnumMap enumMap = new EnumMap(Cnew.class);
        f1052do = enumMap;
        ArrayList arrayList = new ArrayList();
        Cdo cdo = Cdo.AZTEC;
        arrayList.add(cdo);
        Cdo cdo2 = Cdo.CODABAR;
        arrayList.add(cdo2);
        Cdo cdo3 = Cdo.CODE_39;
        arrayList.add(cdo3);
        Cdo cdo4 = Cdo.CODE_93;
        arrayList.add(cdo4);
        Cdo cdo5 = Cdo.CODE_128;
        arrayList.add(cdo5);
        Cdo cdo6 = Cdo.DATA_MATRIX;
        arrayList.add(cdo6);
        Cdo cdo7 = Cdo.EAN_8;
        arrayList.add(cdo7);
        Cdo cdo8 = Cdo.EAN_13;
        arrayList.add(cdo8);
        Cdo cdo9 = Cdo.ITF;
        arrayList.add(cdo9);
        Cdo cdo10 = Cdo.MAXICODE;
        arrayList.add(cdo10);
        Cdo cdo11 = Cdo.PDF_417;
        arrayList.add(cdo11);
        Cdo cdo12 = Cdo.QR_CODE;
        arrayList.add(cdo12);
        Cdo cdo13 = Cdo.RSS_14;
        arrayList.add(cdo13);
        Cdo cdo14 = Cdo.RSS_EXPANDED;
        arrayList.add(cdo14);
        Cdo cdo15 = Cdo.UPC_A;
        arrayList.add(cdo15);
        Cdo cdo16 = Cdo.UPC_E;
        arrayList.add(cdo16);
        Cdo cdo17 = Cdo.UPC_EAN_EXTENSION;
        arrayList.add(cdo17);
        Cnew cnew = Cnew.POSSIBLE_FORMATS;
        enumMap.put((EnumMap) cnew, (Cnew) arrayList);
        Cnew cnew2 = Cnew.TRY_HARDER;
        Boolean bool = Boolean.TRUE;
        enumMap.put((EnumMap) cnew2, (Cnew) bool);
        Cnew cnew3 = Cnew.CHARACTER_SET;
        enumMap.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap2 = new EnumMap(Cnew.class);
        f1055if = enumMap2;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cdo2);
        arrayList2.add(cdo3);
        arrayList2.add(cdo4);
        arrayList2.add(cdo5);
        arrayList2.add(cdo7);
        arrayList2.add(cdo8);
        arrayList2.add(cdo9);
        arrayList2.add(cdo11);
        arrayList2.add(cdo13);
        arrayList2.add(cdo14);
        arrayList2.add(cdo15);
        arrayList2.add(cdo16);
        arrayList2.add(cdo17);
        enumMap2.put((EnumMap) cnew, (Cnew) arrayList2);
        enumMap2.put((EnumMap) cnew2, (Cnew) bool);
        enumMap2.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap3 = new EnumMap(Cnew.class);
        f1054for = enumMap3;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(cdo);
        arrayList3.add(cdo6);
        arrayList3.add(cdo10);
        arrayList3.add(cdo12);
        enumMap3.put((EnumMap) cnew, (Cnew) arrayList3);
        enumMap3.put((EnumMap) cnew2, (Cnew) bool);
        enumMap3.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap4 = new EnumMap(Cnew.class);
        f1056new = enumMap4;
        enumMap4.put((EnumMap) cnew, (Cnew) Collections.singletonList(cdo12));
        enumMap4.put((EnumMap) cnew2, (Cnew) bool);
        enumMap4.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap5 = new EnumMap(Cnew.class);
        f1057try = enumMap5;
        enumMap5.put((EnumMap) cnew, (Cnew) Collections.singletonList(cdo5));
        enumMap5.put((EnumMap) cnew2, (Cnew) bool);
        enumMap5.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap6 = new EnumMap(Cnew.class);
        f1051case = enumMap6;
        enumMap6.put((EnumMap) cnew, (Cnew) Collections.singletonList(cdo8));
        enumMap6.put((EnumMap) cnew2, (Cnew) bool);
        enumMap6.put((EnumMap) cnew3, (Cnew) "utf-8");
        EnumMap enumMap7 = new EnumMap(Cnew.class);
        f1053else = enumMap7;
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(cdo12);
        arrayList4.add(cdo15);
        arrayList4.add(cdo8);
        arrayList4.add(cdo5);
        enumMap7.put((EnumMap) cnew, (Cnew) arrayList4);
        enumMap7.put((EnumMap) cnew2, (Cnew) bool);
        enumMap7.put((EnumMap) cnew3, (Cnew) "utf-8");
    }

    private di1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m1339do(Bitmap bitmap) {
        qj1 qj1Var;
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            qj1Var = new qj1(width, height, iArr);
        } catch (Exception e) {
            e = e;
            qj1Var = null;
        }
        try {
            return new Ccase().decode(new Cfor(new tk0(qj1Var)), f1052do).m9245else();
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            if (qj1Var != null) {
                try {
                    return new Ccase().decode(new Cfor(new th0(qj1Var)), f1052do).m9245else();
                } catch (Throwable th) {
                    th.printStackTrace();
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1340if(String str) {
        return m1339do(p6.m5893this(str));
    }
}
