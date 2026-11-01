package freemarker.core;

import android.support.v4.k52;
import android.support.v4.ul2;
import freemarker.core.h0;
import freemarker.template.Creturn;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.ListIterator;

/* loaded from: classes.dex */
final class r0 extends h0 {

    /* renamed from: break, reason: not valid java name */
    private final int f24094break;

    /* renamed from: goto, reason: not valid java name */
    private final ArrayList f24095goto;

    /* renamed from: this, reason: not valid java name */
    private final ArrayList f24096this;

    /* renamed from: freemarker.core.r0$do, reason: invalid class name */
    public class Cdo implements TemplateHashModelEx2 {

        /* renamed from: do, reason: not valid java name */
        private HashMap f24097do;

        /* renamed from: for, reason: not valid java name */
        private TemplateCollectionModel f24098for;

        /* renamed from: if, reason: not valid java name */
        private TemplateCollectionModel f24099if;

        /* renamed from: freemarker.core.r0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0244do implements TemplateHashModelEx2.KeyValuePairIterator {

            /* renamed from: do, reason: not valid java name */
            private final TemplateModelIterator f24101do;

            /* renamed from: if, reason: not valid java name */
            private final TemplateModelIterator f24103if;

            /* renamed from: freemarker.core.r0$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0245do implements TemplateHashModelEx2.KeyValuePair {

                /* renamed from: do, reason: not valid java name */
                private final TemplateModel f24104do;

                /* renamed from: if, reason: not valid java name */
                private final TemplateModel f24106if;

                public C0245do() throws k52 {
                    this.f24104do = C0244do.this.f24101do.next();
                    this.f24106if = C0244do.this.f24103if.next();
                }

                @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
                public TemplateModel getKey() throws k52 {
                    return this.f24104do;
                }

                @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
                public TemplateModel getValue() throws k52 {
                    return this.f24106if;
                }
            }

            public C0244do() throws k52 {
                this.f24101do = Cdo.this.keys().iterator();
                this.f24103if = Cdo.this.values().iterator();
            }

            @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
            public boolean hasNext() throws k52 {
                return this.f24101do.hasNext();
            }

            @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
            public TemplateHashModelEx2.KeyValuePair next() throws k52 {
                return new C0245do();
            }
        }

        public Cdo(d0 d0Var) throws TemplateException {
            int i = 0;
            if (ul2.m8514super(r0.this) >= ul2.f6937new) {
                this.f24097do = new LinkedHashMap();
                while (i < r0.this.f24094break) {
                    h0 h0Var = (h0) r0.this.f24095goto.get(i);
                    h0 h0Var2 = (h0) r0.this.f24096this.get(i);
                    String strMo28045default = h0Var.mo28045default(d0Var);
                    TemplateModel templateModelM28055throws = h0Var2.m28055throws(d0Var);
                    if (d0Var == null || !d0Var.y()) {
                        h0Var2.m28052public(templateModelM28055throws, d0Var);
                    }
                    this.f24097do.put(strMo28045default, templateModelM28055throws);
                    i++;
                }
                return;
            }
            this.f24097do = new HashMap();
            ArrayList arrayList = new ArrayList(r0.this.f24094break);
            ArrayList arrayList2 = new ArrayList(r0.this.f24094break);
            while (i < r0.this.f24094break) {
                h0 h0Var3 = (h0) r0.this.f24095goto.get(i);
                h0 h0Var4 = (h0) r0.this.f24096this.get(i);
                String strMo28045default2 = h0Var3.mo28045default(d0Var);
                TemplateModel templateModelM28055throws2 = h0Var4.m28055throws(d0Var);
                if (d0Var == null || !d0Var.y()) {
                    h0Var4.m28052public(templateModelM28055throws2, d0Var);
                }
                this.f24097do.put(strMo28045default2, templateModelM28055throws2);
                arrayList.add(strMo28045default2);
                arrayList2.add(templateModelM28055throws2);
                i++;
            }
            this.f24099if = new m(new Creturn(arrayList));
            this.f24098for = new m(new Creturn(arrayList2));
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) {
            return (TemplateModel) this.f24097do.get(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return r0.this.f24094break == 0;
        }

        @Override // freemarker.template.TemplateHashModelEx2
        public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() throws k52 {
            return new C0244do();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() {
            if (this.f24099if == null) {
                this.f24099if = new m(new Creturn(this.f24097do.keySet()));
            }
            return this.f24099if;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() {
            return r0.this.f24094break;
        }

        public String toString() {
            return r0.this.mo27815for();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() {
            if (this.f24098for == null) {
                this.f24098for = new m(new Creturn(this.f24097do.values()));
            }
            return this.f24098for;
        }
    }

    public r0(ArrayList arrayList, ArrayList arrayList2) {
        this.f24095goto = arrayList;
        this.f24096this = arrayList2;
        this.f24094break = arrayList.size();
        arrayList.trimToSize();
        arrayList2.trimToSize();
    }

    private void g(int i) {
        if (i >= this.f24094break * 2) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "{...}";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return this.f24094break * 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        StringBuilder sb = new StringBuilder("{");
        for (int i = 0; i < this.f24094break; i++) {
            h0 h0Var = (h0) this.f24095goto.get(i);
            h0 h0Var2 = (h0) this.f24096this.get(i);
            sb.append(h0Var.mo27815for());
            sb.append(": ");
            sb.append(h0Var2.mo27815for());
            if (i != this.f24094break - 1) {
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        g(i);
        return i % 2 == 0 ? f3.f23756else : f3.f23750case;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        if (this.f23810else != null) {
            return true;
        }
        for (int i = 0; i < this.f24094break; i++) {
            h0 h0Var = (h0) this.f24095goto.get(i);
            h0 h0Var2 = (h0) this.f24096this.get(i);
            if (!h0Var.mo27817instanceof() || !h0Var2.mo27817instanceof()) {
                return false;
            }
        }
        return true;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return new Cdo(d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        ArrayList arrayList = (ArrayList) this.f24095goto.clone();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(((h0) listIterator.next()).m28053return(str, h0Var, cdo));
        }
        ArrayList arrayList2 = (ArrayList) this.f24096this.clone();
        ListIterator listIterator2 = arrayList2.listIterator();
        while (listIterator2.hasNext()) {
            listIterator2.set(((h0) listIterator2.next()).m28053return(str, h0Var, cdo));
        }
        return new r0(arrayList, arrayList2);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        g(i);
        return (i % 2 == 0 ? this.f24095goto : this.f24096this).get(i / 2);
    }
}
