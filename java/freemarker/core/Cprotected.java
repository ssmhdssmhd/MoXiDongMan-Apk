package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.fl2;
import android.support.v4.ic2;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.ul2;
import android.support.v4.vl2;
import android.support.v4.wy1;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.DateUtil;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* renamed from: freemarker.core.protected, reason: invalid class name */
/* loaded from: classes.dex */
class Cprotected {

    /* renamed from: freemarker.core.protected$do, reason: invalid class name */
    public static abstract class Cdo extends Cswitch {

        /* renamed from: final, reason: not valid java name */
        public final Boolean f24064final;

        /* renamed from: super, reason: not valid java name */
        public final int f24065super;

        public Cdo(Boolean bool, int i) {
            this.f24064final = bool;
            this.f24065super = i;
        }

        public void t(int i) throws TemplateException {
            if (i == 0) {
                throw new nl2(new z4("The value of the following has unknown date type, but ?", this.f24115this, " needs a value where it's known if it's a date (no time part), time, or date-time value:").m28401if(this.f24114goto).m28402this(b5.f23522for));
            }
        }

        public boolean u(Date date, int i, d0 d0Var) {
            if (i == 2) {
                return false;
            }
            Boolean bool = this.f24064final;
            return bool != null ? bool.booleanValue() : !(date instanceof Time) || ul2.m8514super(this) < ul2.f6937new;
        }
    }

    /* renamed from: freemarker.core.protected$for, reason: invalid class name */
    public static class Cfor extends Cdo {

        /* renamed from: freemarker.core.protected$for$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final Date f24066do;

            /* renamed from: for, reason: not valid java name */
            private final d0 f24067for;

            /* renamed from: if, reason: not valid java name */
            private final int f24068if;

            public Cdo(Date date, int i, d0 d0Var) {
                this.f24066do = date;
                this.f24068if = i;
                this.f24067for = d0Var;
            }

            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object exec(List list) throws k52 {
                TimeZone timeZoneM29248try;
                Cfor.this.f(list, 1);
                TemplateModel templateModel = (TemplateModel) list.get(0);
                if (templateModel instanceof AdapterTemplateModel) {
                    Object adaptedObject = ((AdapterTemplateModel) templateModel).getAdaptedObject(TimeZone.class);
                    if (adaptedObject instanceof TimeZone) {
                        timeZoneM29248try = (TimeZone) adaptedObject;
                    } else {
                        if (!(templateModel instanceof TemplateScalarModel)) {
                            throw b5.m27849abstract("?" + Cfor.this.f24115this, 0, "string or java.util.TimeZone", templateModel);
                        }
                        String strM28018native = f0.m28018native((TemplateScalarModel) templateModel, null, null);
                        try {
                            timeZoneM29248try = DateUtil.m29248try(strM28018native);
                        } catch (ic2 unused) {
                            throw new vl2("The time zone string specified for ?", Cfor.this.f24115this, "(...) is not recognized as a valid time zone name: ", new fl2(strM28018native));
                        }
                    }
                }
                TimeZone timeZone = timeZoneM29248try;
                Date date = this.f24066do;
                int i = this.f24068if;
                return new ez1(DateUtil.m29241if(date, i != 1, i != 2, Cfor.this.u(date, i, this.f24067for), Cfor.this.f24065super, timeZone, this.f24067for.L1()));
            }
        }

        public Cfor(Boolean bool, int i) {
            super(bool, i);
        }

        @Override // freemarker.core.Cswitch
        public TemplateModel r(Date date, int i, d0 d0Var) throws TemplateException {
            t(i);
            return new Cdo(date, i, d0Var);
        }
    }

    /* renamed from: freemarker.core.protected$if, reason: invalid class name */
    public static class Cif extends Creturn {

        /* renamed from: final, reason: not valid java name */
        private final int f24070final;

        public Cif(int i) {
            this.f24070final = i;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (!(templateModelM28055throws instanceof TemplateDateModel)) {
                throw Cswitch.s(d0Var, templateModelM28055throws, this.f24114goto);
            }
            TemplateDateModel templateDateModel = (TemplateDateModel) templateModelM28055throws;
            return templateDateModel.getDateType() != 0 ? templateDateModel : new wy1(f0.m28026while(templateDateModel, this.f24114goto), this.f24070final);
        }

        public TemplateModel r(Date date, int i, d0 d0Var) throws TemplateException {
            return null;
        }
    }

    /* renamed from: freemarker.core.protected$new, reason: invalid class name */
    public static class Cnew extends Cdo {

        /* renamed from: throw, reason: not valid java name */
        private final boolean f24071throw;

        public Cnew(Boolean bool, int i, boolean z) {
            super(bool, i);
            this.f24071throw = z;
        }

        @Override // freemarker.core.Cswitch
        public TemplateModel r(Date date, int i, d0 d0Var) throws TemplateException {
            t(i);
            return new ez1(DateUtil.m29241if(date, i != 1, i != 2, u(date, i, d0Var), this.f24065super, this.f24071throw ? DateUtil.f25128case : d0Var.v3(date.getClass()) ? d0Var.a() : d0Var.h(), d0Var.L1()));
        }
    }

    private Cprotected() {
    }
}
