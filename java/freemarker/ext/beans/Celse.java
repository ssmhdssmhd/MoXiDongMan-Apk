package freemarker.ext.beans;

import android.support.v4.ul2;
import android.support.v4.we2;
import freemarker.template.ObjectWrapper;

/* renamed from: freemarker.ext.beans.else, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Celse implements Cloneable {

    /* renamed from: case, reason: not valid java name */
    private ObjectWrapper f24535case;

    /* renamed from: do, reason: not valid java name */
    private final we2 f24536do;

    /* renamed from: else, reason: not valid java name */
    private boolean f24537else;

    /* renamed from: for, reason: not valid java name */
    private boolean f24538for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f24539goto;

    /* renamed from: if, reason: not valid java name */
    private Cconst f24540if;

    /* renamed from: new, reason: not valid java name */
    private boolean f24541new;

    /* renamed from: try, reason: not valid java name */
    private int f24542try;

    public Celse(we2 we2Var, boolean z) {
        this.f24538for = false;
        this.f24542try = 0;
        this.f24535case = null;
        this.f24537else = false;
        this.f24539goto = false;
        ul2.m8507if(we2Var);
        we2Var = z ? we2Var : Ctry.c(we2Var);
        this.f24536do = we2Var;
        this.f24541new = we2Var.intValue() < ul2.f6927break;
        this.f24540if = new Cconst(we2Var);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m28582break() {
        return this.f24541new;
    }

    /* renamed from: case, reason: not valid java name */
    public we2 m28583case() {
        return this.f24536do;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m28584catch() {
        return this.f24540if.m28563goto();
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m28585class() {
        return this.f24539goto;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m28586const() {
        return this.f24538for;
    }

    /* renamed from: default, reason: not valid java name */
    public void m28587default(boolean z) {
        this.f24539goto = z;
    }

    /* renamed from: do, reason: not valid java name */
    public Object m28588do(boolean z) {
        try {
            Celse celse = (Celse) super.clone();
            if (z) {
                celse.f24540if = (Cconst) this.f24540if.clone();
            }
            return celse;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Failed to clone BeansWrapperConfiguration", e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public MethodAppearanceFineTuner m28589else() {
        return this.f24540if.m28555case();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Celse celse = (Celse) obj;
        return this.f24536do.equals(celse.f24536do) && this.f24538for == celse.f24538for && this.f24541new == celse.f24541new && this.f24542try == celse.f24542try && this.f24535case == celse.f24535case && this.f24537else == celse.f24537else && this.f24539goto == celse.f24539goto && this.f24540if.equals(celse.f24540if);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m28590final() {
        return this.f24537else;
    }

    /* renamed from: for, reason: not valid java name */
    public int m28591for() {
        return this.f24542try;
    }

    /* renamed from: goto, reason: not valid java name */
    public MethodSorter m28592goto() {
        return this.f24540if.m28560else();
    }

    public int hashCode() {
        int iHashCode = (((((((this.f24536do.hashCode() + 31) * 31) + (this.f24538for ? 1231 : 1237)) * 31) + (this.f24541new ? 1231 : 1237)) * 31) + this.f24542try) * 31;
        ObjectWrapper objectWrapper = this.f24535case;
        return ((((((iHashCode + (objectWrapper != null ? objectWrapper.hashCode() : 0)) * 31) + (this.f24537else ? 1231 : 1237)) * 31) + (this.f24539goto ? 1231 : 1237)) * 31) + this.f24540if.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public Cconst m28593if() {
        return this.f24540if;
    }

    /* renamed from: import, reason: not valid java name */
    public void m28594import(MethodAppearanceFineTuner methodAppearanceFineTuner) {
        this.f24540if.m28558const(methodAppearanceFineTuner);
    }

    /* renamed from: native, reason: not valid java name */
    public void m28595native(MethodSorter methodSorter) {
        this.f24540if.m28561final(methodSorter);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m28596new() {
        return this.f24540if.m28562for();
    }

    /* renamed from: public, reason: not valid java name */
    public void m28597public(ObjectWrapper objectWrapper) {
        this.f24535case = objectWrapper;
    }

    /* renamed from: return, reason: not valid java name */
    public void m28598return(boolean z) {
        this.f24541new = z;
    }

    /* renamed from: static, reason: not valid java name */
    public void m28599static(boolean z) {
        this.f24538for = z;
    }

    /* renamed from: super, reason: not valid java name */
    public void m28600super(int i) {
        this.f24542try = i;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m28601switch(boolean z) {
        this.f24537else = z;
    }

    /* renamed from: this, reason: not valid java name */
    public ObjectWrapper m28602this() {
        return this.f24535case;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m28603throw(boolean z) {
        this.f24540if.m28556catch(z);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m28604throws(boolean z) {
        this.f24540if.m28565super(z);
    }

    /* renamed from: try, reason: not valid java name */
    public int m28605try() {
        return this.f24540if.m28564new();
    }

    /* renamed from: while, reason: not valid java name */
    public void m28606while(int i) {
        this.f24540if.m28557class(i);
    }

    public Celse(we2 we2Var) {
        this(we2Var, false);
    }
}
