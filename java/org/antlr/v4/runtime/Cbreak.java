package org.antlr.v4.runtime;

import android.support.v4.rn0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: org.antlr.v4.runtime.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f28501case = 0;

    /* renamed from: new, reason: not valid java name */
    public static final String f28502new = "default";

    /* renamed from: try, reason: not valid java name */
    public static final int f28503try = 100;

    /* renamed from: do, reason: not valid java name */
    public final TokenStream f28504do;

    /* renamed from: for, reason: not valid java name */
    public final Map<String, Integer> f28505for;

    /* renamed from: if, reason: not valid java name */
    public final Map<String, List<Cnew>> f28506if;

    /* renamed from: org.antlr.v4.runtime.break$do, reason: invalid class name */
    public class Cdo extends Cif {
        public Cdo(int i, Object obj) {
            super(i + 1, obj);
        }
    }

    /* renamed from: org.antlr.v4.runtime.break$for, reason: invalid class name */
    public class Cfor extends Cnew {

        /* renamed from: try, reason: not valid java name */
        public int f28509try;

        public Cfor(int i, int i2, Object obj) {
            super(i, obj);
            this.f28509try = i2;
        }

        @Override // org.antlr.v4.runtime.Cbreak.Cnew
        /* renamed from: do, reason: not valid java name */
        public int mo31959do(StringBuilder sb) {
            Object obj = this.f28512for;
            if (obj != null) {
                sb.append(obj);
            }
            return this.f28509try + 1;
        }

        @Override // org.antlr.v4.runtime.Cbreak.Cnew
        public String toString() {
            if (this.f28512for == null) {
                return "<DeleteOp@" + Cbreak.this.f28504do.get(this.f28513if) + ".." + Cbreak.this.f28504do.get(this.f28509try) + ">";
            }
            return "<ReplaceOp@" + Cbreak.this.f28504do.get(this.f28513if) + ".." + Cbreak.this.f28504do.get(this.f28509try) + ":\"" + this.f28512for + "\">";
        }
    }

    /* renamed from: org.antlr.v4.runtime.break$if, reason: invalid class name */
    public class Cif extends Cnew {
        public Cif(int i, Object obj) {
            super(i, obj);
        }

        @Override // org.antlr.v4.runtime.Cbreak.Cnew
        /* renamed from: do */
        public int mo31959do(StringBuilder sb) {
            sb.append(this.f28512for);
            if (Cbreak.this.f28504do.get(this.f28513if).getType() != -1) {
                sb.append(Cbreak.this.f28504do.get(this.f28513if).getText());
            }
            return this.f28513if + 1;
        }
    }

    public Cbreak(TokenStream tokenStream) {
        this.f28504do = tokenStream;
        HashMap map = new HashMap();
        this.f28506if = map;
        map.put("default", new ArrayList(100));
        this.f28505for = new HashMap();
    }

    /* renamed from: native, reason: not valid java name */
    private List<Cnew> m31922native(String str) {
        ArrayList arrayList = new ArrayList(100);
        this.f28506if.put(str, arrayList);
        return arrayList;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m31923abstract(int i, Object obj) {
        m31929continue("default", i, i, obj);
    }

    /* renamed from: break, reason: not valid java name */
    public <T extends Cnew> List<? extends T> m31924break(List<? extends Cnew> list, Class<T> cls, int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i && i2 < list.size(); i2++) {
            Cnew cnew = list.get(i2);
            if (cnew != null && cls.isInstance(cnew)) {
                arrayList.add(cls.cast(cnew));
            }
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public void m31925case(Token token) {
        m31956try("default", token, token);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m31926catch() {
        return m31927class("default");
    }

    /* renamed from: class, reason: not valid java name */
    public int m31927class(String str) {
        Integer num = this.f28505for.get(str);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    /* renamed from: const, reason: not valid java name */
    public List<Cnew> m31928const(String str) {
        List<Cnew> list = this.f28506if.get(str);
        return list == null ? m31922native(str) : list;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m31929continue(String str, int i, int i2, Object obj) {
        if (i <= i2 && i >= 0 && i2 >= 0 && i2 < this.f28504do.size()) {
            Cfor cfor = new Cfor(i, i2, obj);
            List<Cnew> listM31928const = m31928const(str);
            cfor.f28511do = listM31928const.size();
            listM31928const.add(cfor);
            return;
        }
        throw new IllegalArgumentException("replace: range invalid: " + i + ".." + i2 + "(size=" + this.f28504do.size() + ")");
    }

    /* renamed from: default, reason: not valid java name */
    public void m31930default(String str, int i, Object obj) {
        Cif cif = new Cif(i, obj);
        List<Cnew> listM31928const = m31928const(str);
        cif.f28511do = listM31928const.size();
        listM31928const.add(cif);
    }

    /* renamed from: do, reason: not valid java name */
    public String m31931do(Object obj, Object obj2) {
        return (obj != null ? obj.toString() : "") + (obj2 != null ? obj2.toString() : "");
    }

    /* renamed from: else, reason: not valid java name */
    public void m31932else(Token token, Token token2) {
        m31956try("default", token, token2);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m31933extends(String str, Token token, Object obj) {
        m31930default(str, token.getTokenIndex(), obj);
    }

    /* renamed from: final, reason: not valid java name */
    public String m31934final() {
        return m31958while("default", rn0.m7059case(0, this.f28504do.size() - 1));
    }

    /* renamed from: finally, reason: not valid java name */
    public void m31935finally(Token token, Object obj) {
        m31933extends("default", token, obj);
    }

    /* renamed from: for, reason: not valid java name */
    public void m31936for(int i, int i2) {
        m31942new("default", i, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m31937goto() {
        m31952this("default");
    }

    /* renamed from: if, reason: not valid java name */
    public void m31938if(int i) {
        m31942new("default", i, i);
    }

    /* renamed from: implements, reason: not valid java name */
    public void m31939implements(String str, int i) {
        this.f28505for.put(str, Integer.valueOf(i));
    }

    /* renamed from: import, reason: not valid java name */
    public final TokenStream m31940import() {
        return this.f28504do;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m31941interface(Token token, Token token2, Object obj) {
        m31949strictfp("default", token, token2, obj);
    }

    /* renamed from: new, reason: not valid java name */
    public void m31942new(String str, int i, int i2) {
        m31929continue(str, i, i2, null);
    }

    /* renamed from: package, reason: not valid java name */
    public Map<Integer, Cnew> m31943package(List<Cnew> list) {
        for (int i = 0; i < list.size(); i++) {
            Cnew cnew = list.get(i);
            if (cnew != null && (cnew instanceof Cfor)) {
                Cfor cfor = (Cfor) list.get(i);
                for (Cif cif : m31924break(list, Cif.class, i)) {
                    int i2 = cif.f28513if;
                    int i3 = cfor.f28513if;
                    if (i2 == i3) {
                        list.set(cif.f28511do, null);
                        StringBuilder sb = new StringBuilder();
                        sb.append(cif.f28512for.toString());
                        Object obj = cfor.f28512for;
                        sb.append(obj != null ? obj.toString() : "");
                        cfor.f28512for = sb.toString();
                    } else if (i2 > i3 && i2 <= cfor.f28509try) {
                        list.set(cif.f28511do, null);
                    }
                }
                for (Cfor cfor2 : m31924break(list, Cfor.class, i)) {
                    int i4 = cfor2.f28513if;
                    int i5 = cfor.f28513if;
                    if (i4 < i5 || cfor2.f28509try > cfor.f28509try) {
                        boolean z = cfor2.f28509try < i5 || i4 > cfor.f28509try;
                        if (cfor2.f28512for == null && cfor.f28512for == null && !z) {
                            list.set(cfor2.f28511do, null);
                            cfor.f28513if = Math.min(cfor2.f28513if, cfor.f28513if);
                            cfor.f28509try = Math.max(cfor2.f28509try, cfor.f28509try);
                            System.out.println("new rop " + cfor);
                        } else if (!z) {
                            throw new IllegalArgumentException("replace op boundaries of " + cfor + " overlap with previous " + cfor2);
                        }
                    } else {
                        list.set(cfor2.f28511do, null);
                    }
                }
            }
        }
        for (int i6 = 0; i6 < list.size(); i6++) {
            Cnew cnew2 = list.get(i6);
            if (cnew2 != null && (cnew2 instanceof Cif)) {
                Cif cif2 = (Cif) list.get(i6);
                for (Cif cif3 : m31924break(list, Cif.class, i6)) {
                    if (cif3.f28513if == cif2.f28513if) {
                        if (Cdo.class.isInstance(cif3)) {
                            cif2.f28512for = m31931do(cif3.f28512for, cif2.f28512for);
                            list.set(cif3.f28511do, null);
                        } else if (Cif.class.isInstance(cif3)) {
                            cif2.f28512for = m31931do(cif2.f28512for, cif3.f28512for);
                            list.set(cif3.f28511do, null);
                        }
                    }
                }
                for (Cfor cfor3 : m31924break(list, Cfor.class, i6)) {
                    int i7 = cif2.f28513if;
                    int i8 = cfor3.f28513if;
                    if (i7 == i8) {
                        cfor3.f28512for = m31931do(cif2.f28512for, cfor3.f28512for);
                        list.set(i6, null);
                    } else if (i7 >= i8 && i7 <= cfor3.f28509try) {
                        throw new IllegalArgumentException("insert op " + cif2 + " within boundaries of previous " + cfor3);
                    }
                }
            }
        }
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < list.size(); i9++) {
            Cnew cnew3 = list.get(i9);
            if (cnew3 != null) {
                if (map.get(Integer.valueOf(cnew3.f28513if)) != null) {
                    throw new Error("should only be one op per index");
                }
                map.put(Integer.valueOf(cnew3.f28513if), cnew3);
            }
        }
        return map;
    }

    /* renamed from: private, reason: not valid java name */
    public void m31944private(int i, int i2, Object obj) {
        m31929continue("default", i, i2, obj);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m31945protected(int i) {
        m31955transient("default", i);
    }

    /* renamed from: public, reason: not valid java name */
    public void m31946public(int i, Object obj) {
        m31947return("default", i, obj);
    }

    /* renamed from: return, reason: not valid java name */
    public void m31947return(String str, int i, Object obj) {
        Cdo cdo = new Cdo(i, obj);
        List<Cnew> listM31928const = m31928const(str);
        cdo.f28511do = listM31928const.size();
        listM31928const.add(cdo);
    }

    /* renamed from: static, reason: not valid java name */
    public void m31948static(String str, Token token, Object obj) {
        m31947return(str, token.getTokenIndex(), obj);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m31949strictfp(String str, Token token, Token token2, Object obj) {
        m31929continue(str, token.getTokenIndex(), token2.getTokenIndex(), obj);
    }

    /* renamed from: super, reason: not valid java name */
    public String m31950super(rn0 rn0Var) {
        return m31958while("default", rn0Var);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m31951switch(Token token, Object obj) {
        m31948static("default", token, obj);
    }

    /* renamed from: this, reason: not valid java name */
    public void m31952this(String str) {
        m31955transient(str, 0);
    }

    /* renamed from: throw, reason: not valid java name */
    public String m31953throw(String str) {
        return m31958while(str, rn0.m7059case(0, this.f28504do.size() - 1));
    }

    /* renamed from: throws, reason: not valid java name */
    public void m31954throws(int i, Object obj) {
        m31930default("default", i, obj);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m31955transient(String str, int i) {
        List<Cnew> list = this.f28506if.get(str);
        if (list != null) {
            this.f28506if.put(str, list.subList(0, i));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m31956try(String str, Token token, Token token2) {
        m31949strictfp(str, token, token2, null);
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m31957volatile(Token token, Object obj) {
        m31949strictfp("default", token, token, obj);
    }

    /* renamed from: while, reason: not valid java name */
    public String m31958while(String str, rn0 rn0Var) {
        List<Cnew> list = this.f28506if.get(str);
        int iMo31959do = rn0Var.f5888do;
        int size = rn0Var.f5889if;
        if (size > this.f28504do.size() - 1) {
            size = this.f28504do.size() - 1;
        }
        if (iMo31959do < 0) {
            iMo31959do = 0;
        }
        if (list == null || list.isEmpty()) {
            return this.f28504do.getText(rn0Var);
        }
        StringBuilder sb = new StringBuilder();
        Map<Integer, Cnew> mapM31943package = m31943package(list);
        while (iMo31959do <= size && iMo31959do < this.f28504do.size()) {
            Cnew cnew = mapM31943package.get(Integer.valueOf(iMo31959do));
            mapM31943package.remove(Integer.valueOf(iMo31959do));
            Token token = this.f28504do.get(iMo31959do);
            if (cnew == null) {
                if (token.getType() != -1) {
                    sb.append(token.getText());
                }
                iMo31959do++;
            } else {
                iMo31959do = cnew.mo31959do(sb);
            }
        }
        if (size == this.f28504do.size() - 1) {
            for (Cnew cnew2 : mapM31943package.values()) {
                if (cnew2.f28513if >= this.f28504do.size() - 1) {
                    sb.append(cnew2.f28512for);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: org.antlr.v4.runtime.break$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f28511do;

        /* renamed from: for, reason: not valid java name */
        public Object f28512for;

        /* renamed from: if, reason: not valid java name */
        public int f28513if;

        public Cnew(int i) {
            this.f28513if = i;
        }

        /* renamed from: do */
        public int mo31959do(StringBuilder sb) {
            return this.f28513if;
        }

        public String toString() {
            String name = getClass().getName();
            return "<" + name.substring(name.indexOf(36) + 1, name.length()) + "@" + Cbreak.this.f28504do.get(this.f28513if) + ":\"" + this.f28512for + "\">";
        }

        public Cnew(int i, Object obj) {
            this.f28513if = i;
            this.f28512for = obj;
        }
    }
}
