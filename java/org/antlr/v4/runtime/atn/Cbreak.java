package org.antlr.v4.runtime.atn;

import android.support.v4.vo1;
import android.support.v4.y01;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.antlr.v4.runtime.Cthis;

/* renamed from: org.antlr.v4.runtime.atn.break, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f28443do = new Ctry();

    /* renamed from: org.antlr.v4.runtime.atn.break$do, reason: invalid class name */
    public static class Cdo extends Cfor {

        /* renamed from: if, reason: not valid java name */
        public final Cbreak[] f28444if;

        public Cdo(Cbreak cbreak, Cbreak cbreak2) {
            HashSet hashSet = new HashSet();
            if (cbreak instanceof Cdo) {
                hashSet.addAll(Arrays.asList(((Cdo) cbreak).f28444if));
            } else {
                hashSet.add(cbreak);
            }
            if (cbreak2 instanceof Cdo) {
                hashSet.addAll(Arrays.asList(((Cdo) cbreak2).f28444if));
            } else {
                hashSet.add(cbreak2);
            }
            List listM31865try = Cbreak.m31865try(hashSet);
            if (!listM31865try.isEmpty()) {
                hashSet.add((Cnew) Collections.min(listM31865try));
            }
            this.f28444if = (Cbreak[]) hashSet.toArray(new Cbreak[hashSet.size()]);
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak.Cfor
        /* renamed from: else, reason: not valid java name */
        public Collection<Cbreak> mo31868else() {
            return Arrays.asList(this.f28444if);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cdo) {
                return Arrays.equals(this.f28444if, ((Cdo) obj).f28444if);
            }
            return false;
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: for */
        public boolean mo31866for(Cthis<?, ?> cthis, vo1 vo1Var) {
            for (Cbreak cbreak : this.f28444if) {
                if (!cbreak.mo31866for(cthis, vo1Var)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return y01.m9666if(this.f28444if, Cdo.class.hashCode());
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: new */
        public Cbreak mo31867new(Cthis<?, ?> cthis, vo1 vo1Var) {
            ArrayList arrayList = new ArrayList();
            Cbreak[] cbreakArr = this.f28444if;
            int length = cbreakArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= length) {
                    if (i2 == 0) {
                        return this;
                    }
                    if (arrayList.isEmpty()) {
                        return Cbreak.f28443do;
                    }
                    Cbreak cbreakM31864if = (Cbreak) arrayList.get(0);
                    while (i < arrayList.size()) {
                        cbreakM31864if = Cbreak.m31864if(cbreakM31864if, (Cbreak) arrayList.get(i));
                        i++;
                    }
                    return cbreakM31864if;
                }
                Cbreak cbreak = cbreakArr[i];
                Cbreak cbreakMo31867new = cbreak.mo31867new(cthis, vo1Var);
                i2 |= cbreakMo31867new == cbreak ? 0 : 1;
                if (cbreakMo31867new == null) {
                    return null;
                }
                if (cbreakMo31867new != Cbreak.f28443do) {
                    arrayList.add(cbreakMo31867new);
                }
                i++;
            }
        }

        public String toString() {
            return org.antlr.v4.runtime.misc.Cfor.m32043new(Arrays.asList(this.f28444if).iterator(), "&&");
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.break$for, reason: invalid class name */
    public static abstract class Cfor extends Cbreak {
        /* renamed from: else */
        public abstract Collection<Cbreak> mo31868else();
    }

    /* renamed from: org.antlr.v4.runtime.atn.break$if, reason: invalid class name */
    public static class Cif extends Cfor {

        /* renamed from: if, reason: not valid java name */
        public final Cbreak[] f28445if;

        public Cif(Cbreak cbreak, Cbreak cbreak2) {
            HashSet hashSet = new HashSet();
            if (cbreak instanceof Cif) {
                hashSet.addAll(Arrays.asList(((Cif) cbreak).f28445if));
            } else {
                hashSet.add(cbreak);
            }
            if (cbreak2 instanceof Cif) {
                hashSet.addAll(Arrays.asList(((Cif) cbreak2).f28445if));
            } else {
                hashSet.add(cbreak2);
            }
            List listM31865try = Cbreak.m31865try(hashSet);
            if (!listM31865try.isEmpty()) {
                hashSet.add((Cnew) Collections.max(listM31865try));
            }
            this.f28445if = (Cbreak[]) hashSet.toArray(new Cbreak[hashSet.size()]);
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak.Cfor
        /* renamed from: else */
        public Collection<Cbreak> mo31868else() {
            return Arrays.asList(this.f28445if);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cif) {
                return Arrays.equals(this.f28445if, ((Cif) obj).f28445if);
            }
            return false;
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: for */
        public boolean mo31866for(Cthis<?, ?> cthis, vo1 vo1Var) {
            for (Cbreak cbreak : this.f28445if) {
                if (cbreak.mo31866for(cthis, vo1Var)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return y01.m9666if(this.f28445if, Cif.class.hashCode());
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: new */
        public Cbreak mo31867new(Cthis<?, ?> cthis, vo1 vo1Var) {
            ArrayList arrayList = new ArrayList();
            Cbreak[] cbreakArr = this.f28445if;
            int length = cbreakArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= length) {
                    if (i2 == 0) {
                        return this;
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    Cbreak cbreakM31862case = (Cbreak) arrayList.get(0);
                    while (i < arrayList.size()) {
                        cbreakM31862case = Cbreak.m31862case(cbreakM31862case, (Cbreak) arrayList.get(i));
                        i++;
                    }
                    return cbreakM31862case;
                }
                Cbreak cbreak = cbreakArr[i];
                Cbreak cbreakMo31867new = cbreak.mo31867new(cthis, vo1Var);
                i2 |= cbreakMo31867new == cbreak ? 0 : 1;
                Cbreak cbreak2 = Cbreak.f28443do;
                if (cbreakMo31867new == cbreak2) {
                    return cbreak2;
                }
                if (cbreakMo31867new != null) {
                    arrayList.add(cbreakMo31867new);
                }
                i++;
            }
        }

        public String toString() {
            return org.antlr.v4.runtime.misc.Cfor.m32043new(Arrays.asList(this.f28445if).iterator(), "||");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Cbreak m31862case(Cbreak cbreak, Cbreak cbreak2) {
        if (cbreak == null) {
            return cbreak2;
        }
        if (cbreak2 == null) {
            return cbreak;
        }
        Cbreak cbreak3 = f28443do;
        Cbreak cbreak4 = cbreak3;
        cbreak4 = cbreak3;
        if (cbreak != cbreak3 && cbreak2 != cbreak3) {
            Cif cif = new Cif(cbreak, cbreak2);
            Cbreak[] cbreakArr = cif.f28445if;
            cbreak4 = cif;
            if (cbreakArr.length == 1) {
                return cbreakArr[0];
            }
        }
        return cbreak4;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cbreak m31864if(Cbreak cbreak, Cbreak cbreak2) {
        Cbreak cbreak3;
        if (cbreak == null || cbreak == (cbreak3 = f28443do)) {
            return cbreak2;
        }
        if (cbreak2 == null || cbreak2 == cbreak3) {
            return cbreak;
        }
        Cdo cdo = new Cdo(cbreak, cbreak2);
        Cbreak[] cbreakArr = cdo.f28444if;
        return cbreakArr.length == 1 ? cbreakArr[0] : cdo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static List<Cnew> m31865try(Collection<? extends Cbreak> collection) {
        Iterator<? extends Cbreak> it = collection.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            Cbreak next = it.next();
            if (next instanceof Cnew) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((Cnew) next);
                it.remove();
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo31866for(Cthis<?, ?> cthis, vo1 vo1Var);

    /* renamed from: new, reason: not valid java name */
    public Cbreak mo31867new(Cthis<?, ?> cthis, vo1 vo1Var) {
        return this;
    }

    /* renamed from: org.antlr.v4.runtime.atn.break$new, reason: invalid class name */
    public static class Cnew extends Cbreak implements Comparable<Cnew> {

        /* renamed from: if, reason: not valid java name */
        public final int f28446if;

        public Cnew() {
            this.f28446if = 0;
        }

        @Override // java.lang.Comparable
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(Cnew cnew) {
            return this.f28446if - cnew.f28446if;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cnew) {
                return this == obj || this.f28446if == ((Cnew) obj).f28446if;
            }
            return false;
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: for */
        public boolean mo31866for(Cthis<?, ?> cthis, vo1 vo1Var) {
            return cthis.mo32004public(vo1Var, this.f28446if);
        }

        public int hashCode() {
            return 31 + this.f28446if;
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: new */
        public Cbreak mo31867new(Cthis<?, ?> cthis, vo1 vo1Var) {
            if (cthis.mo32004public(vo1Var, this.f28446if)) {
                return Cbreak.f28443do;
            }
            return null;
        }

        public String toString() {
            return "{" + this.f28446if + ">=prec}?";
        }

        public Cnew(int i) {
            this.f28446if = i;
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.break$try, reason: invalid class name */
    public static class Ctry extends Cbreak {

        /* renamed from: for, reason: not valid java name */
        public final int f28447for;

        /* renamed from: if, reason: not valid java name */
        public final int f28448if;

        /* renamed from: new, reason: not valid java name */
        public final boolean f28449new;

        public Ctry() {
            this.f28448if = -1;
            this.f28447for = -1;
            this.f28449new = false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Ctry)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            Ctry ctry = (Ctry) obj;
            return this.f28448if == ctry.f28448if && this.f28447for == ctry.f28447for && this.f28449new == ctry.f28449new;
        }

        @Override // org.antlr.v4.runtime.atn.Cbreak
        /* renamed from: for */
        public boolean mo31866for(Cthis<?, ?> cthis, vo1 vo1Var) {
            if (!this.f28449new) {
                vo1Var = null;
            }
            return cthis.m32081switch(vo1Var, this.f28448if, this.f28447for);
        }

        public int hashCode() {
            return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9668try(y01.m9665for(), this.f28448if), this.f28447for), this.f28449new ? 1 : 0), 3);
        }

        public String toString() {
            return "{" + this.f28448if + ":" + this.f28447for + "}?";
        }

        public Ctry(int i, int i2, boolean z) {
            this.f28448if = i;
            this.f28447for = i2;
            this.f28449new = z;
        }
    }
}
