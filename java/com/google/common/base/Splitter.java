package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@ki0(emulated = true)
/* loaded from: classes.dex */
public final class Splitter {

    /* renamed from: do, reason: not valid java name */
    private final com.google.common.base.Cnew f13619do;

    /* renamed from: for, reason: not valid java name */
    private final Strategy f13620for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f13621if;

    /* renamed from: new, reason: not valid java name */
    private final int f13622new;

    public interface Strategy {
        Iterator<String> iterator(Splitter splitter, CharSequence charSequence);
    }

    @o8
    /* renamed from: com.google.common.base.Splitter$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: for, reason: not valid java name */
        private static final String f13623for = "Chunk [%s] is not a valid entry";

        /* renamed from: do, reason: not valid java name */
        private final Splitter f13624do;

        /* renamed from: if, reason: not valid java name */
        private final Splitter f13625if;

        public /* synthetic */ Ccase(Splitter splitter, Splitter splitter2, Cdo cdo) {
            this(splitter, splitter2);
        }

        /* renamed from: do, reason: not valid java name */
        public Map<String, String> m15004do(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.f13624do.m14997final(charSequence)) {
                Iterator itM14993throw = this.f13625if.m14993throw(str);
                af1.m225return(itM14993throw.hasNext(), f13623for, str);
                String str2 = (String) itM14993throw.next();
                af1.m225return(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                af1.m225return(itM14993throw.hasNext(), f13623for, str);
                linkedHashMap.put(str2, (String) itM14993throw.next());
                af1.m225return(!itM14993throw.hasNext(), f13623for, str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }

        private Ccase(Splitter splitter, Splitter splitter2) {
            this.f13624do = splitter;
            this.f13625if = (Splitter) af1.m205continue(splitter2);
        }
    }

    /* renamed from: com.google.common.base.Splitter$do, reason: invalid class name */
    public static class Cdo implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ com.google.common.base.Cnew f13626do;

        /* renamed from: com.google.common.base.Splitter$do$do, reason: invalid class name and collision with other inner class name */
        public class C0073do extends Celse {
            public C0073do(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: case, reason: not valid java name */
            public int mo15006case(int i) {
                return Cdo.this.f13626do.mo15155super(this.f13630for, i);
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: try, reason: not valid java name */
            public int mo15007try(int i) {
                return i + 1;
            }
        }

        public Cdo(com.google.common.base.Cnew cnew) {
            this.f13626do = cnew;
        }

        @Override // com.google.common.base.Splitter.Strategy
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse iterator(Splitter splitter, CharSequence charSequence) {
            return new C0073do(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$else, reason: invalid class name */
    public static abstract class Celse extends com.google.common.base.Cif<String> {

        /* renamed from: case, reason: not valid java name */
        public int f13628case = 0;

        /* renamed from: else, reason: not valid java name */
        public int f13629else;

        /* renamed from: for, reason: not valid java name */
        public final CharSequence f13630for;

        /* renamed from: new, reason: not valid java name */
        public final com.google.common.base.Cnew f13631new;

        /* renamed from: try, reason: not valid java name */
        public final boolean f13632try;

        public Celse(Splitter splitter, CharSequence charSequence) {
            this.f13631new = splitter.f13619do;
            this.f13632try = splitter.f13621if;
            this.f13629else = splitter.f13622new;
            this.f13630for = charSequence;
        }

        /* renamed from: case */
        public abstract int mo15006case(int i);

        @Override // com.google.common.base.Cif
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public String mo15008do() {
            int iMo15006case;
            int i = this.f13628case;
            while (true) {
                int i2 = this.f13628case;
                if (i2 == -1) {
                    return m15108if();
                }
                iMo15006case = mo15006case(i2);
                if (iMo15006case == -1) {
                    iMo15006case = this.f13630for.length();
                    this.f13628case = -1;
                } else {
                    this.f13628case = mo15007try(iMo15006case);
                }
                int i3 = this.f13628case;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.f13628case = i4;
                    if (i4 > this.f13630for.length()) {
                        this.f13628case = -1;
                    }
                } else {
                    while (i < iMo15006case && this.f13631new.mo15151package(this.f13630for.charAt(i))) {
                        i++;
                    }
                    while (iMo15006case > i && this.f13631new.mo15151package(this.f13630for.charAt(iMo15006case - 1))) {
                        iMo15006case--;
                    }
                    if (!this.f13632try || i != iMo15006case) {
                        break;
                    }
                    i = this.f13628case;
                }
            }
            int i5 = this.f13629else;
            if (i5 == 1) {
                iMo15006case = this.f13630for.length();
                this.f13628case = -1;
                while (iMo15006case > i && this.f13631new.mo15151package(this.f13630for.charAt(iMo15006case - 1))) {
                    iMo15006case--;
                }
            } else {
                this.f13629else = i5 - 1;
            }
            return this.f13630for.subSequence(i, iMo15006case).toString();
        }

        /* renamed from: try */
        public abstract int mo15007try(int i);
    }

    /* renamed from: com.google.common.base.Splitter$for, reason: invalid class name */
    public static class Cfor implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ com.google.common.base.Ccase f13633do;

        /* renamed from: com.google.common.base.Splitter$for$do, reason: invalid class name */
        public class Cdo extends Celse {

            /* renamed from: goto, reason: not valid java name */
            public final /* synthetic */ com.google.common.base.Ctry f13634goto;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(Splitter splitter, CharSequence charSequence, com.google.common.base.Ctry ctry) {
                super(splitter, charSequence);
                this.f13634goto = ctry;
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: case */
            public int mo15006case(int i) {
                if (this.f13634goto.mo15029for(i)) {
                    return this.f13634goto.mo15027case();
                }
                return -1;
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: try */
            public int mo15007try(int i) {
                return this.f13634goto.mo15028do();
            }
        }

        public Cfor(com.google.common.base.Ccase ccase) {
            this.f13633do = ccase;
        }

        @Override // com.google.common.base.Splitter.Strategy
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse iterator(Splitter splitter, CharSequence charSequence) {
            return new Cdo(splitter, charSequence, this.f13633do.matcher(charSequence));
        }
    }

    /* renamed from: com.google.common.base.Splitter$if, reason: invalid class name */
    public static class Cif implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f13636do;

        /* renamed from: com.google.common.base.Splitter$if$do, reason: invalid class name */
        public class Cdo extends Celse {
            public Cdo(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
            
                r6 = r6 + 1;
             */
            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: case */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public int mo15006case(int i) {
                int length = Cif.this.f13636do.length();
                int length2 = this.f13630for.length() - length;
                while (i <= length2) {
                    for (int i2 = 0; i2 < length; i2++) {
                        if (this.f13630for.charAt(i2 + i) != Cif.this.f13636do.charAt(i2)) {
                            break;
                        }
                    }
                    return i;
                }
                return -1;
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: try */
            public int mo15007try(int i) {
                return i + Cif.this.f13636do.length();
            }
        }

        public Cif(String str) {
            this.f13636do = str;
        }

        @Override // com.google.common.base.Splitter.Strategy
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse iterator(Splitter splitter, CharSequence charSequence) {
            return new Cdo(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$new, reason: invalid class name */
    public static class Cnew implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f13638do;

        /* renamed from: com.google.common.base.Splitter$new$do, reason: invalid class name */
        public class Cdo extends Celse {
            public Cdo(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: case */
            public int mo15006case(int i) {
                int i2 = i + Cnew.this.f13638do;
                if (i2 < this.f13630for.length()) {
                    return i2;
                }
                return -1;
            }

            @Override // com.google.common.base.Splitter.Celse
            /* renamed from: try */
            public int mo15007try(int i) {
                return i;
            }
        }

        public Cnew(int i) {
            this.f13638do = i;
        }

        @Override // com.google.common.base.Splitter.Strategy
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse iterator(Splitter splitter, CharSequence charSequence) {
            return new Cdo(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$try, reason: invalid class name */
    public class Ctry implements Iterable<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CharSequence f13640do;

        public Ctry(CharSequence charSequence) {
            this.f13640do = charSequence;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return Splitter.this.m14993throw(this.f13640do);
        }

        public String toString() {
            Cfinal cfinalM15071throw = Cfinal.m15071throw(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder sbM15072case = cfinalM15071throw.m15072case(sb, this);
            sbM15072case.append(']');
            return sbM15072case.toString();
        }
    }

    private Splitter(Strategy strategy) {
        this(strategy, false, com.google.common.base.Cnew.m15142volatile(), Integer.MAX_VALUE);
    }

    /* renamed from: break, reason: not valid java name */
    private static Splitter m14983break(com.google.common.base.Ccase ccase) {
        af1.m225return(!ccase.matcher("").mo15031new(), "The pattern may not match the empty string: %s", ccase);
        return new Splitter(new Cfor(ccase));
    }

    /* renamed from: catch, reason: not valid java name */
    public static Splitter m14984catch(String str) {
        af1.m235try(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? m14989goto(str.charAt(0)) : new Splitter(new Cif(str));
    }

    @li0
    /* renamed from: class, reason: not valid java name */
    public static Splitter m14985class(Pattern pattern) {
        return m14983break(new Cconst(pattern));
    }

    @li0
    /* renamed from: const, reason: not valid java name */
    public static Splitter m14986const(String str) {
        return m14983break(Cnative.m15117if(str));
    }

    /* renamed from: goto, reason: not valid java name */
    public static Splitter m14989goto(char c) {
        return m14992this(com.google.common.base.Cnew.m15143while(c));
    }

    /* renamed from: this, reason: not valid java name */
    public static Splitter m14992this(com.google.common.base.Cnew cnew) {
        af1.m205continue(cnew);
        return new Splitter(new Cdo(cnew));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public Iterator<String> m14993throw(CharSequence charSequence) {
        return this.f13620for.iterator(this, charSequence);
    }

    /* renamed from: try, reason: not valid java name */
    public static Splitter m14994try(int i) {
        af1.m235try(i > 0, "The length may not be less than 1");
        return new Splitter(new Cnew(i));
    }

    /* renamed from: case, reason: not valid java name */
    public Splitter m14995case(int i) {
        af1.m202catch(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.f13620for, this.f13621if, this.f13619do, i);
    }

    /* renamed from: else, reason: not valid java name */
    public Splitter m14996else() {
        return new Splitter(this.f13620for, true, this.f13619do, this.f13622new);
    }

    /* renamed from: final, reason: not valid java name */
    public Iterable<String> m14997final(CharSequence charSequence) {
        af1.m205continue(charSequence);
        return new Ctry(charSequence);
    }

    /* renamed from: import, reason: not valid java name */
    public Splitter m14998import(com.google.common.base.Cnew cnew) {
        af1.m205continue(cnew);
        return new Splitter(this.f13620for, this.f13621if, cnew, this.f13622new);
    }

    @o8
    /* renamed from: native, reason: not valid java name */
    public Ccase m14999native(char c) {
        return m15000public(m14989goto(c));
    }

    @o8
    /* renamed from: public, reason: not valid java name */
    public Ccase m15000public(Splitter splitter) {
        return new Ccase(this, splitter, null);
    }

    @o8
    /* renamed from: return, reason: not valid java name */
    public Ccase m15001return(String str) {
        return m15000public(m14984catch(str));
    }

    /* renamed from: super, reason: not valid java name */
    public List<String> m15002super(CharSequence charSequence) {
        af1.m205continue(charSequence);
        Iterator<String> itM14993throw = m14993throw(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itM14993throw.hasNext()) {
            arrayList.add(itM14993throw.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: while, reason: not valid java name */
    public Splitter m15003while() {
        return m14998import(com.google.common.base.Cnew.k());
    }

    private Splitter(Strategy strategy, boolean z, com.google.common.base.Cnew cnew, int i) {
        this.f13620for = strategy;
        this.f13621if = z;
        this.f13619do = cnew;
        this.f13622new = i;
    }
}
