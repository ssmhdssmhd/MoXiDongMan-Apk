package freemarker.core;

import android.support.v4.az1;
import android.support.v4.bl2;
import android.support.v4.ca2;
import android.support.v4.nl2;
import android.support.v4.yk2;
import android.support.v4.zk2;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.utility.Cfor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes.dex */
final class d1 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final h0 f23585class;

    /* renamed from: const, reason: not valid java name */
    private final String f23586const;

    /* renamed from: final, reason: not valid java name */
    private final String f23587final;

    /* renamed from: super, reason: not valid java name */
    private final boolean f23588super;

    /* renamed from: throw, reason: not valid java name */
    private final boolean f23589throw;

    /* renamed from: freemarker.core.d1$do, reason: invalid class name */
    public class Cdo implements LocalContext {

        /* renamed from: const, reason: not valid java name */
        private static final String f23590const = "_has_next";

        /* renamed from: final, reason: not valid java name */
        private static final String f23591final = "_index";

        /* renamed from: break, reason: not valid java name */
        private String f23592break;

        /* renamed from: case, reason: not valid java name */
        private boolean f23593case;

        /* renamed from: catch, reason: not valid java name */
        private final TemplateModel f23594catch;

        /* renamed from: do, reason: not valid java name */
        private Object f23596do;

        /* renamed from: else, reason: not valid java name */
        private Collection<String> f23597else = null;

        /* renamed from: for, reason: not valid java name */
        private TemplateModel f23598for;

        /* renamed from: goto, reason: not valid java name */
        private String f23599goto;

        /* renamed from: if, reason: not valid java name */
        private boolean f23600if;

        /* renamed from: new, reason: not valid java name */
        private TemplateModel f23601new;

        /* renamed from: this, reason: not valid java name */
        private String f23602this;

        /* renamed from: try, reason: not valid java name */
        private int f23603try;

        public Cdo(TemplateModel templateModel, String str, String str2) {
            this.f23594catch = templateModel;
            this.f23599goto = str;
            this.f23592break = str2;
        }

        /* renamed from: for, reason: not valid java name */
        private boolean m27944for(d0 d0Var, b4[] b4VarArr) throws TemplateException, IOException {
            TemplateModel templateModel = this.f23594catch;
            if (templateModel instanceof TemplateCollectionModel) {
                TemplateCollectionModel templateCollectionModel = (TemplateCollectionModel) templateModel;
                Object obj = this.f23596do;
                TemplateModelIterator it = obj == null ? templateCollectionModel.iterator() : (TemplateModelIterator) obj;
                boolean zHasNext = it.hasNext();
                if (zHasNext) {
                    if (this.f23599goto != null) {
                        while (true) {
                            this.f23598for = it.next();
                            this.f23600if = it.hasNext();
                            try {
                                this.f23602this = this.f23599goto;
                                d0Var.A3(b4VarArr);
                            } catch (Cpublic e) {
                                if (e == Cpublic.BREAK_INSTANCE) {
                                    break;
                                }
                            } finally {
                            }
                            this.f23603try++;
                            if (!this.f23600if) {
                                break;
                            }
                        }
                        this.f23596do = null;
                    } else {
                        this.f23596do = it;
                        d0Var.A3(b4VarArr);
                    }
                }
                return zHasNext;
            }
            if (!(templateModel instanceof TemplateSequenceModel)) {
                if (!d0Var.y()) {
                    TemplateModel templateModel2 = this.f23594catch;
                    if (!(templateModel2 instanceof TemplateHashModelEx) || t2.isWrappedIterable(templateModel2)) {
                        throw new t2(d1.this.f23585class, this.f23594catch, d0Var);
                    }
                    throw new t2(d0Var, new z4("The value you try to list is ", new zk2(new bl2(this.f23594catch)), ", thus you must specify two loop variables after the \"as\"; one for the key, and another for the value, like ", "<#... as k, v>", ")."));
                }
                String str = this.f23599goto;
                if (str != null) {
                    this.f23598for = this.f23594catch;
                    this.f23600if = false;
                }
                try {
                    this.f23602this = str;
                    d0Var.A3(b4VarArr);
                } catch (Cpublic unused) {
                } catch (Throwable th) {
                    throw th;
                }
                return true;
            }
            TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) templateModel;
            int size = templateSequenceModel.size();
            boolean z = size != 0;
            if (z) {
                if (this.f23599goto != null) {
                    this.f23603try = 0;
                    while (true) {
                        int i = this.f23603try;
                        if (i >= size) {
                            break;
                        }
                        this.f23598for = templateSequenceModel.get(i);
                        this.f23600if = size > this.f23603try + 1;
                        try {
                            this.f23602this = this.f23599goto;
                            d0Var.A3(b4VarArr);
                        } catch (Cpublic e2) {
                            if (e2 == Cpublic.BREAK_INSTANCE) {
                                break;
                            }
                        } finally {
                        }
                        this.f23603try++;
                    }
                } else {
                    d0Var.A3(b4VarArr);
                }
            }
            return z;
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m27945if(d0 d0Var, b4[] b4VarArr) throws TemplateException, IOException {
            return !d1.this.f23588super ? m27944for(d0Var, b4VarArr) : m27946new(d0Var, b4VarArr);
        }

        /* renamed from: new, reason: not valid java name */
        private boolean m27946new(d0 d0Var, b4[] b4VarArr) throws TemplateException, IOException {
            TemplateModel templateModel = this.f23594catch;
            if (!(templateModel instanceof TemplateHashModelEx)) {
                if ((templateModel instanceof TemplateCollectionModel) || (templateModel instanceof TemplateSequenceModel)) {
                    throw new t2(d0Var, new z4("The value you try to list is ", new zk2(new bl2(this.f23594catch)), ", thus you must specify only one loop variable after the \"as\" (there's no separate key and value)."));
                }
                throw new j2(d1.this.f23585class, this.f23594catch, d0Var);
            }
            TemplateHashModelEx templateHashModelEx = (TemplateHashModelEx) templateModel;
            if (!(templateHashModelEx instanceof TemplateHashModelEx2)) {
                TemplateModelIterator it = templateHashModelEx.keys().iterator();
                boolean zHasNext = it.hasNext();
                if (zHasNext) {
                    if (this.f23599goto != null) {
                        while (true) {
                            TemplateModel next = it.next();
                            this.f23598for = next;
                            if (!(next instanceof TemplateScalarModel)) {
                                throw b5.m27870public(next, (TemplateHashModelEx) this.f23594catch);
                            }
                            this.f23601new = templateHashModelEx.get(((TemplateScalarModel) next).getAsString());
                            this.f23600if = it.hasNext();
                            try {
                                this.f23602this = this.f23599goto;
                                d0Var.A3(b4VarArr);
                            } catch (Cpublic e) {
                                if (e == Cpublic.BREAK_INSTANCE) {
                                    break;
                                }
                            } finally {
                            }
                            this.f23603try++;
                            if (!this.f23600if) {
                                break;
                            }
                        }
                    } else {
                        d0Var.A3(b4VarArr);
                    }
                }
                return zHasNext;
            }
            Object obj = this.f23596do;
            TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator = obj == null ? ((TemplateHashModelEx2) templateHashModelEx).keyValuePairIterator() : (TemplateHashModelEx2.KeyValuePairIterator) obj;
            boolean zHasNext2 = keyValuePairIterator.hasNext();
            if (!zHasNext2) {
                return zHasNext2;
            }
            if (this.f23599goto == null) {
                this.f23596do = keyValuePairIterator;
                d0Var.A3(b4VarArr);
                return zHasNext2;
            }
            while (true) {
                TemplateHashModelEx2.KeyValuePair next2 = keyValuePairIterator.next();
                this.f23598for = next2.getKey();
                this.f23601new = next2.getValue();
                this.f23600if = keyValuePairIterator.hasNext();
                try {
                    this.f23602this = this.f23599goto;
                    d0Var.A3(b4VarArr);
                } catch (Cpublic e2) {
                    if (e2 == Cpublic.BREAK_INSTANCE) {
                        break;
                    }
                } finally {
                }
                this.f23603try++;
                if (!this.f23600if) {
                    break;
                }
            }
            this.f23596do = null;
            return zHasNext2;
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m27947case() {
            return this.f23600if;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m27948do(d0 d0Var) throws TemplateException, IOException {
            return m27945if(d0Var, d1.this.m27837finally());
        }

        /* renamed from: else, reason: not valid java name */
        public boolean m27949else(String str) {
            String str2 = this.f23602this;
            if (str2 == null) {
                return false;
            }
            return str.equals(str2) || str.equals(this.f23592break);
        }

        @Override // freemarker.core.LocalContext
        public TemplateModel getLocalVariable(String str) {
            String str2 = this.f23602this;
            if (str2 == null) {
                return null;
            }
            if (str.startsWith(str2)) {
                int length = str.length() - str2.length();
                if (length == 0) {
                    TemplateModel templateModel = this.f23598for;
                    if (templateModel != null) {
                        return templateModel;
                    }
                    if (d1.this.getTemplate().b1().y1()) {
                        return null;
                    }
                    return y2.f24308do;
                }
                if (length != 6) {
                    if (length == 9 && str.endsWith(f23590const)) {
                        return this.f23600if ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
                    }
                } else if (str.endsWith(f23591final)) {
                    return new az1(this.f23603try);
                }
            }
            if (!str.equals(this.f23592break)) {
                return null;
            }
            TemplateModel templateModel2 = this.f23601new;
            if (templateModel2 != null) {
                return templateModel2;
            }
            if (d1.this.getTemplate().b1().y1()) {
                return null;
            }
            return y2.f24308do;
        }

        @Override // freemarker.core.LocalContext
        public Collection<String> getLocalVariableNames() {
            String str = this.f23602this;
            if (str == null) {
                return Collections.emptyList();
            }
            if (this.f23597else == null) {
                ArrayList arrayList = new ArrayList(3);
                this.f23597else = arrayList;
                arrayList.add(str);
                this.f23597else.add(str + f23591final);
                this.f23597else.add(str + f23590const);
            }
            return this.f23597else;
        }

        /* renamed from: goto, reason: not valid java name */
        public void m27950goto(d0 d0Var, b4[] b4VarArr, String str, String str2) throws TemplateException, IOException {
            try {
                if (this.f23593case) {
                    throw new nl2(d0Var, "The #items directive was already entered earlier for this listing.");
                }
                this.f23593case = true;
                this.f23599goto = str;
                this.f23592break = str2;
                m27945if(d0Var, b4VarArr);
            } finally {
                this.f23599goto = null;
                this.f23592break = null;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public int m27951try() {
            return this.f23603try;
        }
    }

    public d1(h0 h0Var, String str, String str2, c4 c4Var, boolean z, boolean z2) {
        this.f23585class = h0Var;
        this.f23586const = str;
        this.f23587final = str2;
        p(c4Var);
        this.f23588super = z;
        this.f23589throw = z2;
        h0Var.mo27808switch();
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f23589throw ? "#foreach" : "#list";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return (this.f23586const != null ? 1 : 0) + 1 + (this.f23587final != null ? 1 : 0);
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return this.f23586const != null;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23772public;
        }
        if (i == 1) {
            if (this.f23586const != null) {
                return f3.f23773return;
            }
            throw new IndexOutOfBoundsException();
        }
        if (i != 2) {
            throw new IndexOutOfBoundsException();
        }
        if (this.f23587final != null) {
            return f3.f23773return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        r(d0Var);
        return null;
    }

    public boolean r(d0 d0Var) throws TemplateException, IOException {
        TemplateModel templateModelM28055throws = this.f23585class.m28055throws(d0Var);
        if (templateModelM28055throws == null) {
            if (d0Var.y()) {
                templateModelM28055throws = Cfor.f25213this;
            } else {
                this.f23585class.m28052public(null, d0Var);
            }
        }
        return d0Var.F3(new Cdo(templateModelM28055throws, this.f23586const, this.f23587final));
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        sb.append(' ');
        if (this.f23589throw) {
            sb.append(yk2.m9888case(this.f23586const));
            sb.append(" in ");
            sb.append(this.f23585class.mo27815for());
        } else {
            sb.append(this.f23585class.mo27815for());
            if (this.f23586const != null) {
                sb.append(" as ");
                sb.append(yk2.m9888case(this.f23586const));
                if (this.f23587final != null) {
                    sb.append(", ");
                    sb.append(yk2.m9888case(this.f23587final));
                }
            }
        }
        if (z) {
            sb.append(">");
            sb.append(m27841private());
            if (!(m27847synchronized() instanceof s1)) {
                sb.append("</");
                sb.append(mo27813case());
                sb.append(ca2.f702try);
            }
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23585class;
        }
        if (i == 1) {
            String str = this.f23586const;
            if (str != null) {
                return str;
            }
            throw new IndexOutOfBoundsException();
        }
        if (i != 2) {
            throw new IndexOutOfBoundsException();
        }
        String str2 = this.f23587final;
        if (str2 != null) {
            return str2;
        }
        throw new IndexOutOfBoundsException();
    }

    public boolean u() {
        return this.f23588super;
    }
}
