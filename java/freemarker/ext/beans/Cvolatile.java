package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.template.utility.Cif;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: freemarker.ext.beans.volatile, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cvolatile {

    /* renamed from: case, reason: not valid java name */
    public static final int[] f24660case;

    /* renamed from: else, reason: not valid java name */
    private static final int[][] f24661else;

    /* renamed from: do, reason: not valid java name */
    private Class[][] f24662do;

    /* renamed from: if, reason: not valid java name */
    private int[][] f24664if;

    /* renamed from: try, reason: not valid java name */
    public final boolean f24666try;

    /* renamed from: for, reason: not valid java name */
    private final Map f24663for = new ConcurrentHashMap(6, 0.75f, 1);

    /* renamed from: new, reason: not valid java name */
    private final List f24665new = new LinkedList();

    static {
        int[] iArr = new int[0];
        f24660case = iArr;
        f24661else = new int[][]{iArr};
    }

    public Cvolatile(boolean z) {
        this.f24666try = z;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m28730break(int i, int[] iArr) {
        int i2;
        w41.check("srcTypesFlagsByParamIdx", iArr);
        int i3 = 0;
        if (i == 0) {
            int[][] iArr2 = this.f24664if;
            if (iArr2 == null) {
                this.f24664if = f24661else;
                return;
            } else {
                if (iArr2 != f24661else) {
                    iArr2[0] = f24660case;
                    return;
                }
                return;
            }
        }
        int[][] iArr3 = this.f24664if;
        if (iArr3 == null) {
            this.f24664if = new int[i + 1][];
        } else if (iArr3.length <= i) {
            int[][] iArr4 = new int[i + 1][];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.f24664if = iArr4;
        }
        int[][] iArr5 = this.f24664if;
        int[] iArr6 = iArr5[i];
        if (iArr6 == null) {
            int[] iArr7 = f24660case;
            if (iArr != iArr7) {
                int length = iArr.length;
                int[] iArr8 = new int[i];
                while (i3 < i) {
                    iArr8[i3] = iArr[i3 < length ? i3 : length - 1];
                    i3++;
                }
                iArr7 = iArr8;
            }
            this.f24664if[i] = iArr7;
            return;
        }
        if (iArr == iArr6) {
            return;
        }
        if (iArr6 == f24660case && i > 0) {
            iArr6 = new int[i];
            iArr5[i] = iArr6;
        }
        int i4 = 0;
        while (i4 < i) {
            if (iArr != f24660case) {
                int length2 = iArr.length;
                i2 = iArr[i4 < length2 ? i4 : length2 - 1];
            } else {
                i2 = 0;
            }
            int i5 = iArr6[i4];
            if (i5 != i2) {
                int i6 = i2 | i5;
                if ((i6 & g.f24575throws) != 0) {
                    i6 |= 1;
                }
                iArr6[i4] = i6;
            }
            i4++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final Cdefault m28731case(Object[] objArr, boolean z) {
        Cif cif = new Cif(objArr, this.f24666try);
        Cdefault cdefaultM28625new = (Cdefault) this.f24663for.get(cif);
        if (cdefaultM28625new == null) {
            synchronized (this.f24663for) {
                cdefaultM28625new = (Cdefault) this.f24663for.get(cif);
                if (cdefaultM28625new == null) {
                    cdefaultM28625new = cif.m28625new(this.f24665new, z);
                    this.f24663for.put(cif, cdefaultM28625new);
                }
            }
        }
        return cdefaultM28625new;
    }

    /* renamed from: catch */
    public abstract Class[] mo28488catch(Cthis cthis);

    /* renamed from: do, reason: not valid java name */
    public void m28732do(Ctransient ctransient) {
        this.f24665new.add(ctransient);
        Class[] clsArrMo28488catch = mo28488catch(ctransient);
        int length = clsArrMo28488catch.length;
        Class[][] clsArr = this.f24662do;
        if (clsArr == null) {
            Class[][] clsArr2 = new Class[length + 1][];
            this.f24662do = clsArr2;
            clsArr2[length] = (Class[]) clsArrMo28488catch.clone();
        } else if (clsArr.length <= length) {
            Class[][] clsArr3 = new Class[length + 1][];
            System.arraycopy(clsArr, 0, clsArr3, 0, clsArr.length);
            this.f24662do = clsArr3;
            clsArr3[length] = (Class[]) clsArrMo28488catch.clone();
        } else {
            Class[] clsArr4 = clsArr[length];
            if (clsArr4 == null) {
                clsArr[length] = (Class[]) clsArrMo28488catch.clone();
            } else {
                for (int i = 0; i < clsArrMo28488catch.length; i++) {
                    clsArr4[i] = m28736new(clsArr4[i], clsArrMo28488catch[i]);
                }
            }
        }
        int[] iArr = f24660case;
        if (this.f24666try) {
            for (int i2 = 0; i2 < length; i2++) {
                int iM28614do = g.m28614do(clsArrMo28488catch[i2]);
                if (iM28614do != 0) {
                    if (iArr == f24660case) {
                        iArr = new int[length];
                    }
                    iArr[i2] = iM28614do;
                }
            }
            m28730break(length, iArr);
        }
        if (!this.f24666try) {
            clsArrMo28488catch = this.f24662do[length];
        }
        mo28489if(clsArrMo28488catch, iArr);
    }

    /* renamed from: else, reason: not valid java name */
    public Iterator m28733else() {
        return this.f24665new.iterator();
    }

    /* renamed from: for, reason: not valid java name */
    public void m28734for(Object[] objArr, Class[] clsArr, int[] iArr) {
        int length = clsArr.length;
        int length2 = objArr.length;
        int i = 0;
        while (i < length2) {
            int i2 = i < length ? i : length - 1;
            if ((iArr[i2] & 1) != 0) {
                Object obj = objArr[i];
                if (obj instanceof Number) {
                    Number numberM28678class = Ctry.m28678class((Number) obj, clsArr[i2], this.f24666try);
                    if (numberM28678class != null) {
                        objArr[i] = numberM28678class;
                    }
                }
            }
            i++;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final int[] m28735goto(int i) {
        int[][] iArr = this.f24664if;
        if (iArr == null || iArr.length <= i) {
            return null;
        }
        return iArr[i];
    }

    /* renamed from: if */
    public abstract void mo28489if(Class[] clsArr, int[] iArr);

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0108, code lost:
    
        if (r8.size() > 1) goto L83;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Class m28736new(Class cls, Class cls2) {
        boolean z;
        boolean z2;
        if (cls == cls2) {
            return cls;
        }
        if (this.f24666try) {
            if (cls.isPrimitive()) {
                cls = Cif.m29286while(cls);
                z = true;
            } else {
                z = false;
            }
            if (cls2.isPrimitive()) {
                cls2 = Cif.m29286while(cls2);
                z2 = true;
            } else {
                z2 = false;
            }
            if (cls == cls2) {
                return cls;
            }
            if (Number.class.isAssignableFrom(cls) && Number.class.isAssignableFrom(cls2)) {
                return Number.class;
            }
            if (z || z2) {
                return Object.class;
            }
        } else if (cls2.isPrimitive()) {
            if (cls2 == Byte.TYPE) {
                cls2 = Byte.class;
            } else if (cls2 == Short.TYPE) {
                cls2 = Short.class;
            } else if (cls2 == Character.TYPE) {
                cls2 = Character.class;
            } else if (cls2 == Integer.TYPE) {
                cls2 = Integer.class;
            } else if (cls2 == Float.TYPE) {
                cls2 = Float.class;
            } else if (cls2 == Long.TYPE) {
                cls2 = Long.class;
            } else if (cls2 == Double.TYPE) {
                cls2 = Double.class;
            }
        }
        Set<Class> setM28659if = j.m28659if(cls, cls2);
        setM28659if.retainAll(j.m28659if(cls2, cls));
        if (setM28659if.isEmpty()) {
            return Object.class;
        }
        ArrayList arrayList = new ArrayList();
        for (Class cls3 : setM28659if) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    arrayList.add(cls3);
                    break;
                }
                Class cls4 = (Class) it.next();
                if (j.m28655else(cls4, cls3, false, 0) != 0) {
                    break;
                }
                if (j.m28655else(cls3, cls4, false, 0) != 0) {
                    it.remove();
                }
            }
        }
        if (arrayList.size() > 1) {
            if (this.f24666try) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Class cls5 = (Class) it2.next();
                    if (!cls5.isInterface()) {
                        if (cls5 != Object.class) {
                            return cls5;
                        }
                        it2.remove();
                    }
                }
                arrayList.remove(Cloneable.class);
                if (arrayList.size() > 1) {
                    arrayList.remove(Serializable.class);
                    if (arrayList.size() > 1) {
                        arrayList.remove(Comparable.class);
                    }
                }
            }
            return Object.class;
        }
        return (Class) arrayList.get(0);
    }

    /* renamed from: this, reason: not valid java name */
    public Class[][] m28737this() {
        return this.f24662do;
    }

    /* renamed from: try */
    public abstract Cextends mo28490try(List list, Ctry ctry) throws k52;
}
