package android.support.v4;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.antlr.v4.runtime.atn.Cbreak;
import org.antlr.v4.runtime.atn.Cif;

/* loaded from: classes3.dex */
public class au {

    /* renamed from: case, reason: not valid java name */
    public Cif f235case;

    /* renamed from: do, reason: not valid java name */
    public int f236do;

    /* renamed from: else, reason: not valid java name */
    public boolean f237else;

    /* renamed from: for, reason: not valid java name */
    public au[] f238for;

    /* renamed from: goto, reason: not valid java name */
    public Cdo[] f239goto;

    /* renamed from: if, reason: not valid java name */
    public Cthrows f240if;

    /* renamed from: new, reason: not valid java name */
    public boolean f241new;

    /* renamed from: try, reason: not valid java name */
    public int f242try;

    /* renamed from: android.support.v4.au$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Cbreak f243do;

        /* renamed from: if, reason: not valid java name */
        public int f244if;

        public Cdo(Cbreak cbreak, int i) {
            this.f244if = i;
            this.f243do = cbreak;
        }

        public String toString() {
            return "(" + this.f243do + ", " + this.f244if + ")";
        }
    }

    public au() {
        this.f236do = -1;
        this.f240if = new Cthrows();
        this.f241new = false;
    }

    /* renamed from: do, reason: not valid java name */
    public Set<Integer> m327do() {
        HashSet hashSet = new HashSet();
        Cthrows cthrows = this.f240if;
        if (cthrows != null) {
            Iterator<Cswitch> it = cthrows.iterator();
            while (it.hasNext()) {
                hashSet.add(Integer.valueOf(it.next().f6325if));
            }
        }
        if (hashSet.isEmpty()) {
            return null;
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof au) {
            return this.f240if.equals(((au) obj).f240if);
        }
        return false;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9667new(7), this.f240if.hashCode()), 1);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f236do);
        sb.append(":");
        sb.append(this.f240if);
        if (this.f241new) {
            sb.append("=>");
            Cdo[] cdoArr = this.f239goto;
            if (cdoArr != null) {
                sb.append(Arrays.toString(cdoArr));
            } else {
                sb.append(this.f242try);
            }
        }
        return sb.toString();
    }

    public au(int i) {
        this.f236do = -1;
        this.f240if = new Cthrows();
        this.f241new = false;
        this.f236do = i;
    }

    public au(Cthrows cthrows) {
        this.f236do = -1;
        this.f240if = new Cthrows();
        this.f241new = false;
        this.f240if = cthrows;
    }
}
