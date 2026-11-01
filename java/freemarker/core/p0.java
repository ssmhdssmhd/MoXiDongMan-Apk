package freemarker.core;

import android.support.v4.bl2;
import android.support.v4.fl2;
import android.support.v4.fx0;
import android.support.v4.k52;
import android.support.v4.vl2;
import android.support.v4.zk2;
import freemarker.template.Cnative;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Cthrow;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class p0 implements TemplateMethodModelEx {

    /* renamed from: case, reason: not valid java name */
    private static final String f24046case = "include";

    /* renamed from: else, reason: not valid java name */
    private static final String f24047else = "import";

    /* renamed from: goto, reason: not valid java name */
    private static final String f24049goto = "exists";

    /* renamed from: new, reason: not valid java name */
    private static final String f24051new = "encoding";

    /* renamed from: try, reason: not valid java name */
    private static final String f24052try = "parse";

    /* renamed from: do, reason: not valid java name */
    private final String f24053do;

    /* renamed from: if, reason: not valid java name */
    public static final p0 f24050if = new p0(k.e);

    /* renamed from: for, reason: not valid java name */
    public static final p0 f24048for = new p0(k.f);

    /* renamed from: freemarker.core.p0$do, reason: invalid class name */
    public class Cdo implements TemplateDirectiveModel {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cstatic f24054do;

        public Cdo(Cstatic cstatic) {
            this.f24054do = cstatic;
        }

        @Override // freemarker.template.TemplateDirectiveModel
        public void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
            if (!map.isEmpty()) {
                throw new TemplateException("This directive supports no parameters.", d0Var);
            }
            if (templateModelArr.length != 0) {
                throw new TemplateException("This directive supports no loop variables.", d0Var);
            }
            if (templateDirectiveBody != null) {
                throw new TemplateException("This directive supports no nested content.", d0Var);
            }
            d0Var.K2(this.f24054do);
        }
    }

    /* renamed from: freemarker.core.p0$if, reason: invalid class name */
    public class Cif implements TemplateMethodModelEx {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ d0 f24056do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cstatic f24058if;

        public Cif(d0 d0Var, Cstatic cstatic) {
            this.f24056do = d0Var;
            this.f24058if = cstatic;
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (!list.isEmpty()) {
                throw new k52("This method supports no parameters.");
            }
            try {
                return this.f24056do.F2(this.f24058if, null);
            } catch (TemplateException e) {
                throw new vl2(e, "Failed to import loaded template; see cause exception");
            } catch (IOException e2) {
                throw new vl2(e2, "Failed to import loaded template; see cause exception");
            }
        }
    }

    private p0(String str) {
        this.f24053do = "." + str;
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m28210do(String str, TemplateModel templateModel) throws k52 {
        if (templateModel instanceof TemplateBooleanModel) {
            return ((TemplateBooleanModel) templateModel).getAsBoolean();
        }
        throw b5.m27872static(this.f24053do, 1, "The value of the ", new fl2(str), " option must be a boolean, but it was ", new zk2(new bl2(templateModel)), ".");
    }

    /* renamed from: if, reason: not valid java name */
    private String m28211if(String str, TemplateModel templateModel) throws k52 {
        if (templateModel instanceof TemplateScalarModel) {
            return f0.m28018native((TemplateScalarModel) templateModel, null, null);
        }
        throw b5.m27872static(this.f24053do, 1, "The value of the ", new fl2(str), " option must be a string, but it was ", new zk2(new bl2(templateModel)), ".");
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        TemplateHashModelEx templateHashModelEx;
        boolean zM28210do;
        int size = list.size();
        if (size < 1 || size > 2) {
            throw b5.m27874super(this.f24053do, size, 1, 2);
        }
        d0 d0VarW1 = d0.w1();
        if (d0VarW1 == null) {
            throw new IllegalStateException("No freemarer.core.Environment is associated to the current thread.");
        }
        TemplateModel templateModel = (TemplateModel) list.get(0);
        if (!(templateModel instanceof TemplateScalarModel)) {
            throw b5.m27868package(this.f24053do, 0, templateModel);
        }
        String strM28211if = null;
        try {
            String strX3 = d0VarW1.x3(d0VarW1.A1().h1(), f0.m28018native((TemplateScalarModel) templateModel, null, d0VarW1));
            if (size > 1) {
                TemplateModel templateModel2 = (TemplateModel) list.get(1);
                if (!(templateModel2 instanceof TemplateHashModelEx)) {
                    throw b5.m27878throws(this.f24053do, 1, templateModel2);
                }
                templateHashModelEx = (TemplateHashModelEx) templateModel2;
            } else {
                templateHashModelEx = null;
            }
            if (templateHashModelEx != null) {
                TemplateHashModelEx2.KeyValuePairIterator keyValuePairIteratorM29339do = Cthrow.m29339do(templateHashModelEx);
                zM28210do = true;
                while (keyValuePairIteratorM29339do.hasNext()) {
                    TemplateHashModelEx2.KeyValuePair next = keyValuePairIteratorM29339do.next();
                    TemplateModel key = next.getKey();
                    if (!(key instanceof TemplateScalarModel)) {
                        throw b5.m27872static(this.f24053do, 1, "All keys in the options hash must be strings, but found ", new zk2(new bl2(key)));
                    }
                    String asString = ((TemplateScalarModel) key).getAsString();
                    TemplateModel value = next.getValue();
                    if (f24051new.equals(asString)) {
                        strM28211if = m28211if(f24051new, value);
                    } else {
                        if (!f24052try.equals(asString)) {
                            throw b5.m27872static(this.f24053do, 1, "Unsupported option ", new fl2(asString), "; valid names are: ", new fl2(f24051new), ", ", new fl2(f24052try), ".");
                        }
                        zM28210do = m28210do(f24052try, value);
                    }
                }
            } else {
                zM28210do = true;
            }
            try {
                Cstatic cstaticU2 = d0VarW1.u2(strX3, strM28211if, zM28210do, true);
                Cnative cnative = new Cnative(d0VarW1.m28258implements());
                cnative.put(f24049goto, cstaticU2 != null);
                if (cstaticU2 != null) {
                    cnative.put(f24046case, new Cdo(cstaticU2));
                    cnative.put(f24047else, new Cif(d0VarW1, cstaticU2));
                }
                return cnative;
            } catch (IOException e) {
                throw new vl2(e, "I/O error when trying to load optional template ", new fl2(strX3), "; see cause exception");
            }
        } catch (fx0 e2) {
            throw new vl2(e2, "Failed to convert template path to full path; see cause exception.");
        }
    }
}
