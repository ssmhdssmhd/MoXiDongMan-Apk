package freemarker.ext.beans;

import android.support.v4.ul2;
import android.support.v4.we2;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: freemarker.ext.beans.const, reason: invalid class name */
/* loaded from: classes.dex */
final class Cconst implements Cloneable {

    /* renamed from: else, reason: not valid java name */
    private static final Map f24516else = new HashMap();

    /* renamed from: goto, reason: not valid java name */
    private static final ReferenceQueue f24517goto = new ReferenceQueue();

    /* renamed from: case, reason: not valid java name */
    private MethodSorter f24518case;

    /* renamed from: do, reason: not valid java name */
    private final boolean f24519do;

    /* renamed from: for, reason: not valid java name */
    private boolean f24520for;

    /* renamed from: if, reason: not valid java name */
    private int f24521if;

    /* renamed from: new, reason: not valid java name */
    private boolean f24522new;

    /* renamed from: try, reason: not valid java name */
    private MethodAppearanceFineTuner f24523try;

    public Cconst(Cclass cclass) {
        this.f24521if = 1;
        this.f24519do = cclass.f24496case;
        this.f24521if = cclass.f24500do;
        this.f24520for = cclass.f24505if;
        this.f24522new = cclass.f24509try;
        this.f24523try = cclass.f24503for;
        this.f24518case = cclass.f24506new;
    }

    /* renamed from: break, reason: not valid java name */
    private static void m28552break() {
        while (true) {
            Reference referencePoll = f24517goto.poll();
            if (referencePoll == null) {
                return;
            }
            Map map = f24516else;
            synchronized (map) {
                Iterator it = map.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next() == referencePoll) {
                        it.remove();
                        break;
                    }
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m28553if() {
        Map map = f24516else;
        synchronized (map) {
            map.clear();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Map m28554try() {
        return f24516else;
    }

    /* renamed from: case, reason: not valid java name */
    public MethodAppearanceFineTuner m28555case() {
        return this.f24523try;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m28556catch(boolean z) {
        this.f24520for = z;
    }

    /* renamed from: class, reason: not valid java name */
    public void m28557class(int i) {
        if (i >= 0 && i <= 3) {
            this.f24521if = i;
            return;
        }
        throw new IllegalArgumentException("Illegal exposure level: " + i);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Failed to clone ClassIntrospectorBuilder", e);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m28558const(MethodAppearanceFineTuner methodAppearanceFineTuner) {
        this.f24523try = methodAppearanceFineTuner;
    }

    /* renamed from: do, reason: not valid java name */
    public Cclass m28559do() {
        MethodSorter methodSorter;
        Cclass cclass;
        MethodAppearanceFineTuner methodAppearanceFineTuner = this.f24523try;
        if ((methodAppearanceFineTuner != null && !(methodAppearanceFineTuner instanceof SingletonCustomizer)) || ((methodSorter = this.f24518case) != null && !(methodSorter instanceof SingletonCustomizer))) {
            return new Cclass(this, new Object(), true, false);
        }
        Map map = f24516else;
        synchronized (map) {
            Reference reference = (Reference) map.get(this);
            cclass = reference != null ? (Cclass) reference.get() : null;
            if (cclass == null) {
                Cconst cconst = (Cconst) clone();
                Cclass cclass2 = new Cclass(cconst, new Object(), true, true);
                map.put(cconst, new WeakReference(cclass2, f24517goto));
                cclass = cclass2;
            }
        }
        m28552break();
        return cclass;
    }

    /* renamed from: else, reason: not valid java name */
    public MethodSorter m28560else() {
        return this.f24518case;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cconst.class != obj.getClass()) {
            return false;
        }
        Cconst cconst = (Cconst) obj;
        return this.f24519do == cconst.f24519do && this.f24520for == cconst.f24520for && this.f24522new == cconst.f24522new && this.f24521if == cconst.f24521if && this.f24523try == cconst.f24523try && this.f24518case == cconst.f24518case;
    }

    /* renamed from: final, reason: not valid java name */
    public void m28561final(MethodSorter methodSorter) {
        this.f24518case = methodSorter;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m28562for() {
        return this.f24520for;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m28563goto() {
        return this.f24522new;
    }

    public int hashCode() {
        return (((((((((((this.f24519do ? 1231 : 1237) + 31) * 31) + (this.f24520for ? 1231 : 1237)) * 31) + (this.f24522new ? 1231 : 1237)) * 31) + this.f24521if) * 31) + System.identityHashCode(this.f24523try)) * 31) + System.identityHashCode(this.f24518case);
    }

    /* renamed from: new, reason: not valid java name */
    public int m28564new() {
        return this.f24521if;
    }

    /* renamed from: super, reason: not valid java name */
    public void m28565super(boolean z) {
        this.f24522new = z;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m28566this() {
        return this.f24519do;
    }

    public Cconst(we2 we2Var) {
        this.f24521if = 1;
        this.f24519do = Ctry.m28684strictfp(we2Var);
        this.f24522new = we2Var.intValue() >= ul2.f6938this;
    }
}
