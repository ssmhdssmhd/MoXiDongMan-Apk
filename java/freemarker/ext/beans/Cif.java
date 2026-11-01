package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.mc;
import freemarker.template.TemplateModel;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* renamed from: freemarker.ext.beans.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif {

    /* renamed from: for, reason: not valid java name */
    private static final int f24581for = 0;

    /* renamed from: new, reason: not valid java name */
    private static final int f24582new = 1;

    /* renamed from: try, reason: not valid java name */
    private static final int f24583try = 2;

    /* renamed from: do, reason: not valid java name */
    private final Class<?>[] f24584do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f24585if;

    /* renamed from: freemarker.ext.beans.if$do, reason: invalid class name */
    public static class Cdo {
        private Cdo() {
        }
    }

    /* renamed from: freemarker.ext.beans.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0250if extends Cthis {

        /* renamed from: do, reason: not valid java name */
        private final Ctransient f24586do;

        public C0250if(Ctransient ctransient) {
            this.f24586do = ctransient;
        }

        /* renamed from: this, reason: not valid java name */
        private void m28626this(Ctry ctry, Object[] objArr) throws k52 {
            Class[] clsArrMo28630for = this.f24586do.mo28630for();
            int length = clsArrMo28630for.length;
            for (int i = 0; i < length; i++) {
                Class cls = clsArrMo28630for[i];
                Object obj = objArr[i];
                if (obj != null) {
                    if (cls.isArray() && (obj instanceof List)) {
                        objArr[i] = ctry.a((List) obj, cls, null);
                    }
                    if (obj.getClass().isArray() && cls.isAssignableFrom(List.class)) {
                        objArr[i] = ctry.m28697for(obj);
                    }
                    if (obj instanceof Cbreak) {
                        if (cls == Character.class || cls == Character.TYPE || (!cls.isAssignableFrom(String.class) && cls.isAssignableFrom(Character.class))) {
                            objArr[i] = Character.valueOf(((Cbreak) obj).m28496do());
                        } else {
                            objArr[i] = ((Cbreak) obj).m28497if();
                        }
                    }
                }
            }
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: case, reason: not valid java name */
        public boolean mo28627case() {
            return this.f24586do.mo28627case();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: do, reason: not valid java name */
        public String mo28628do() {
            return this.f24586do.mo28628do();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: else, reason: not valid java name */
        public boolean mo28629else() {
            return this.f24586do.mo28629else();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: for, reason: not valid java name */
        public Class<?>[] mo28630for() {
            return this.f24586do.mo28630for();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: goto, reason: not valid java name */
        public boolean mo28631goto() {
            return this.f24586do.mo28631goto();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: if, reason: not valid java name */
        public String mo28632if() {
            return this.f24586do.mo28632if();
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: new, reason: not valid java name */
        public Object mo28633new(Ctry ctry, Object[] objArr) throws IllegalAccessException, k52, InstantiationException, IllegalArgumentException, InvocationTargetException {
            m28626this(ctry, objArr);
            return this.f24586do.mo28633new(ctry, objArr);
        }

        @Override // freemarker.ext.beans.Cthis
        /* renamed from: try, reason: not valid java name */
        public TemplateModel mo28634try(Ctry ctry, Object obj, Object[] objArr) throws IllegalAccessException, k52, InvocationTargetException {
            m28626this(ctry, objArr);
            return this.f24586do.mo28634try(ctry, obj, objArr);
        }
    }

    public Cif(Object[] objArr, boolean z) {
        int length = objArr.length;
        Class<?>[] clsArr = new Class[length];
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            clsArr[i] = obj == null ? z ? Cdo.class : Object.class : obj.getClass();
        }
        this.f24584do = clsArr;
        this.f24585if = z;
    }

    /* renamed from: case, reason: not valid java name */
    private int m28619case(Ctransient ctransient, boolean z) {
        Class[] clsArrMo28630for = ctransient.mo28630for();
        int length = this.f24584do.length;
        int length2 = clsArrMo28630for.length - (z ? 1 : 0);
        if (z) {
            if (length < length2) {
                return 2;
            }
        } else if (length != length2) {
            return 2;
        }
        int i = 0;
        for (int i2 = 0; i2 < length2; i2++) {
            int iM28620else = m28620else(clsArrMo28630for[i2], this.f24584do[i2]);
            if (iM28620else == 2) {
                return 2;
            }
            if (i < iM28620else) {
                i = iM28620else;
            }
        }
        if (z) {
            Class<?> componentType = clsArrMo28630for[length2].getComponentType();
            while (length2 < length) {
                int iM28620else2 = m28620else(componentType, this.f24584do[length2]);
                if (iM28620else2 == 2) {
                    return 2;
                }
                if (i < iM28620else2) {
                    i = iM28620else2;
                }
                length2++;
            }
        }
        return i;
    }

    /* renamed from: else, reason: not valid java name */
    private int m28620else(Class<?> cls, Class<?> cls2) {
        Class<?> clsM29286while;
        if (cls.isAssignableFrom(cls2) && cls2 != Cbreak.class) {
            return 0;
        }
        if (this.f24585if) {
            if (cls.isPrimitive()) {
                if (cls2 == Cdo.class) {
                    return 2;
                }
                clsM29286while = freemarker.template.utility.Cif.m29286while(cls);
                if (cls2 == clsM29286while) {
                    return 0;
                }
            } else {
                if (cls2 == Cdo.class) {
                    return 0;
                }
                clsM29286while = cls;
            }
            if (Number.class.isAssignableFrom(cls2) && Number.class.isAssignableFrom(clsM29286while)) {
                return OverloadedNumberUtil.m28478for(cls2, clsM29286while) == Integer.MAX_VALUE ? 2 : 0;
            }
            if (cls.isArray()) {
                return List.class.isAssignableFrom(cls2) ? 1 : 2;
            }
            if (cls2.isArray() && cls.isAssignableFrom(List.class)) {
                return 1;
            }
            return (cls2 == Cbreak.class && (cls.isAssignableFrom(String.class) || cls.isAssignableFrom(Character.class) || cls == Character.TYPE)) ? 1 : 2;
        }
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE) {
                return cls2 == Boolean.class ? 0 : 2;
            }
            if (cls == Double.TYPE && (cls2 == Double.class || cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class)) {
                return 0;
            }
            if (cls == Integer.TYPE && (cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class)) {
                return 0;
            }
            if (cls == Long.TYPE && (cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class)) {
                return 0;
            }
            if (cls == Float.TYPE && (cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class)) {
                return 0;
            }
            if (cls == Character.TYPE) {
                return cls2 == Character.class ? 0 : 2;
            }
            if (cls == Byte.TYPE && cls2 == Byte.class) {
                return 0;
            }
            if (cls == Short.TYPE && (cls2 == Short.class || cls2 == Byte.class)) {
                return 0;
            }
            if (BigDecimal.class.isAssignableFrom(cls2) && freemarker.template.utility.Cif.m29282super(cls)) {
                return 0;
            }
        }
        return 2;
    }

    /* renamed from: if, reason: not valid java name */
    private int m28621if(Class<?> cls, Class<?> cls2) {
        Class<?> clsM29286while = cls.isPrimitive() ? freemarker.template.utility.Cif.m29286while(cls) : cls;
        Class<?> clsM29286while2 = cls2.isPrimitive() ? freemarker.template.utility.Cif.m29286while(cls2) : cls2;
        if (clsM29286while == clsM29286while2) {
            return clsM29286while != cls ? clsM29286while2 != cls2 ? 0 : 1 : clsM29286while2 != cls2 ? -1 : 0;
        }
        if (clsM29286while2.isAssignableFrom(clsM29286while)) {
            return 2;
        }
        if (clsM29286while.isAssignableFrom(clsM29286while2)) {
            return -2;
        }
        if (clsM29286while == Character.class && clsM29286while2.isAssignableFrom(String.class)) {
            return 2;
        }
        return (clsM29286while2 == Character.class && clsM29286while.isAssignableFrom(String.class)) ? -2 : 0;
    }

    /* renamed from: try, reason: not valid java name */
    private static Class<?> m28622try(Class<?>[] clsArr, int i, int i2, boolean z) {
        int i3;
        return (!z || i2 < (i3 = i + (-1))) ? clsArr[i2] : clsArr[i3].getComponentType();
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0120  */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m28623do(Class<?>[] clsArr, Class<?>[] clsArr2, boolean z) {
        int iM28479if;
        int i;
        int i2;
        int iM28478for;
        int i3;
        int iM28478for2;
        int i4;
        Class<?>[] clsArr3 = clsArr;
        Class<?>[] clsArr4 = clsArr2;
        boolean z2 = z;
        int length = this.f24584do.length;
        int length2 = clsArr3.length;
        int length3 = clsArr4.length;
        if (!this.f24585if) {
            ?? r5 = 0;
            int i5 = 0;
            boolean z3 = false;
            int i6 = 0;
            while (i5 < length2) {
                Class<?> clsM28622try = m28622try(clsArr3, length2, i5, z2);
                Class<?> clsM28622try2 = m28622try(clsArr4, length3, i5, z2);
                if (clsM28622try != clsM28622try2) {
                    z3 = z3 || j.m28655else(clsM28622try, clsM28622try2, r5, r5) != 0;
                    i6 = (i6 == 0 && j.m28655else(clsM28622try2, clsM28622try, r5, r5) == 0) ? 0 : 1;
                }
                i5++;
                r5 = 0;
            }
            return z3 ? 1 ^ i6 : i6 != 0 ? -1 : 0;
        }
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i7 < length) {
            int i17 = length;
            Class<?> clsM28622try3 = m28622try(clsArr3, length2, i7, z2);
            Class<?> clsM28622try4 = m28622try(clsArr4, length3, i7, z2);
            int i18 = 2;
            if (clsM28622try3 == clsM28622try4) {
                i = length2;
                i2 = length3;
            } else {
                Class<?> cls = this.f24584do[i7];
                i = length2;
                boolean zIsAssignableFrom = Number.class.isAssignableFrom(cls);
                i2 = length3;
                if (zIsAssignableFrom && freemarker.template.utility.Cif.m29282super(clsM28622try3)) {
                    iM28478for = OverloadedNumberUtil.m28478for(cls, clsM28622try3.isPrimitive() ? freemarker.template.utility.Cif.m29286while(clsM28622try3) : clsM28622try3);
                } else {
                    iM28478for = Integer.MAX_VALUE;
                }
                if (zIsAssignableFrom && freemarker.template.utility.Cif.m29282super(clsM28622try4)) {
                    iM28478for2 = OverloadedNumberUtil.m28478for(cls, clsM28622try4.isPrimitive() ? freemarker.template.utility.Cif.m29286while(clsM28622try4) : clsM28622try4);
                    i3 = Integer.MAX_VALUE;
                } else {
                    i3 = Integer.MAX_VALUE;
                    iM28478for2 = Integer.MAX_VALUE;
                }
                if (iM28478for != i3) {
                    if (iM28478for2 != Integer.MAX_VALUE) {
                        if (iM28478for == iM28478for2) {
                            i4 = (clsM28622try3.isPrimitive() ? 1 : 0) - (clsM28622try4.isPrimitive() ? 1 : 0);
                            if (i4 == 1) {
                                i8++;
                            } else if (i4 == -1) {
                                i10++;
                            }
                        } else if (iM28478for < iM28478for2) {
                            if (iM28478for < 40000 && iM28478for2 > 40000) {
                                i13++;
                            }
                            i4 = 1;
                        } else {
                            if (iM28478for2 < 40000 && iM28478for > 40000) {
                                i14++;
                            }
                            i4 = -1;
                        }
                    }
                    i15++;
                    i4 = 1;
                } else if (iM28478for2 != i3) {
                    i9++;
                    i4 = -1;
                } else if (List.class.isAssignableFrom(cls) && (clsM28622try3.isArray() || clsM28622try4.isArray())) {
                    if (!clsM28622try3.isArray()) {
                        if (!Collection.class.isAssignableFrom(clsM28622try3)) {
                            i10++;
                        }
                        i13++;
                        i4 = 1;
                    } else if (clsM28622try4.isArray()) {
                        int iM28621if = m28621if(clsM28622try3.getComponentType(), clsM28622try4.getComponentType());
                        if (iM28621if > 0) {
                            i14++;
                        } else if (iM28621if < 0) {
                            i13++;
                            i18 = 1;
                        } else {
                            i18 = 0;
                        }
                        i4 = i18;
                    } else {
                        if (Collection.class.isAssignableFrom(clsM28622try4)) {
                            i14++;
                        }
                        i8++;
                        i4 = 1;
                    }
                    i4 = 2;
                } else if (!cls.isArray() || (!List.class.isAssignableFrom(clsM28622try3) && !List.class.isAssignableFrom(clsM28622try4))) {
                    int iM28621if2 = m28621if(clsM28622try3, clsM28622try4);
                    if (iM28621if2 > 0) {
                        if (iM28621if2 > 1) {
                            i15++;
                        } else {
                            i8++;
                        }
                        i4 = 1;
                    } else if (iM28621if2 < 0) {
                        if (iM28621if2 >= -1) {
                            i10++;
                        }
                        i4 = -1;
                    }
                } else if (!List.class.isAssignableFrom(clsM28622try3)) {
                    i11++;
                    i4 = 1;
                } else if (!List.class.isAssignableFrom(clsM28622try4)) {
                    i12++;
                    i4 = 2;
                }
                if (i16 != 0 && i4 != 0) {
                    i16 = i4;
                }
                i7++;
                clsArr3 = clsArr;
                clsArr4 = clsArr2;
                z2 = z;
                length = i17;
                length2 = i;
                length3 = i2;
            }
            i4 = 0;
            if (i16 != 0) {
            }
            i7++;
            clsArr3 = clsArr;
            clsArr4 = clsArr2;
            z2 = z;
            length = i17;
            length2 = i;
            length3 = i2;
        }
        int i19 = length;
        int i20 = length2;
        int i21 = length3;
        if (i11 != i12) {
            return i11 - i12;
        }
        if (i13 != i14) {
            return i13 - i14;
        }
        if (i15 != i9) {
            return i15 - i9;
        }
        if (i8 != i10) {
            return i8 - i10;
        }
        if (i16 != 0) {
            return i16;
        }
        if (!z) {
            return 0;
        }
        if (i20 != i21) {
            return i20 - i21;
        }
        if (i19 != i20 - 1) {
            return 0;
        }
        Class<?> clsM28622try5 = m28622try(clsArr, i20, i19, true);
        Class<?> clsM28622try6 = m28622try(clsArr2, i21, i19, true);
        return (freemarker.template.utility.Cif.m29282super(clsM28622try5) && freemarker.template.utility.Cif.m29282super(clsM28622try6) && (iM28479if = OverloadedNumberUtil.m28479if(clsM28622try5, clsM28622try6)) != 0) ? iM28479if : m28621if(clsM28622try5, clsM28622try6);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        if (cif.f24584do.length != this.f24584do.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Class<?>[] clsArr = this.f24584do;
            if (i >= clsArr.length) {
                return true;
            }
            if (cif.f24584do[i] != clsArr[i]) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public LinkedList<Cthis> m28624for(List<Ctransient> list, boolean z) {
        LinkedList<Cthis> linkedList = new LinkedList<>();
        for (Ctransient ctransient : list) {
            int iM28619case = m28619case(ctransient, z);
            if (iM28619case != 2) {
                if (iM28619case == 0) {
                    linkedList.add(ctransient);
                } else {
                    if (iM28619case != 1) {
                        throw new mc();
                    }
                    linkedList.add(new C0250if(ctransient));
                }
            }
        }
        return linkedList;
    }

    public int hashCode() {
        int i = 0;
        int iHashCode = 0;
        while (true) {
            Class<?>[] clsArr = this.f24584do;
            if (i >= clsArr.length) {
                return iHashCode;
            }
            iHashCode ^= clsArr[i].hashCode();
            i++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Cdefault m28625new(List<Ctransient> list, boolean z) {
        LinkedList<Cthis> linkedListM28624for = m28624for(list, z);
        if (linkedListM28624for.isEmpty()) {
            return Cwhile.f24667do;
        }
        if (linkedListM28624for.size() == 1) {
            return linkedListM28624for.getFirst();
        }
        LinkedList linkedList = new LinkedList();
        Iterator<Cthis> it = linkedListM28624for.iterator();
        while (it.hasNext()) {
            Cthis next = it.next();
            boolean z2 = false;
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                int iM28623do = m28623do(next.mo28630for(), ((Cthis) it2.next()).mo28630for(), z);
                if (iM28623do > 0) {
                    it2.remove();
                } else if (iM28623do < 0) {
                    z2 = true;
                }
            }
            if (!z2) {
                linkedList.addLast(next);
            }
        }
        return linkedList.size() > 1 ? Cwhile.f24668if : (Cdefault) linkedList.getFirst();
    }
}
