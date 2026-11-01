package freemarker.core;

import android.support.v4.nl2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class j {

    /* renamed from: freemarker.core.j$do, reason: invalid class name */
    public static class Cdo extends Cinterface {

        /* renamed from: final, reason: not valid java name */
        private List<h0> f23868final;

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28048interface = this.f24114goto.m28048interface(d0Var);
            List<h0> list = this.f23868final;
            int size = list.size();
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i2 >= size) {
                    int i3 = size;
                    if (i3 % 2 != 0) {
                        return list.get(i3 - 1).m28048interface(d0Var);
                    }
                    throw new nl2(this.f24114goto, "The value before ?", this.f24115this, "(case1, value1, case2, value2, ...) didn't match any of the case parameters, and there was no default value parameter (an additional last parameter) eithter. ");
                }
                h0 h0Var = list.get(i);
                int i4 = i;
                int i5 = size;
                if (f0.m28008catch(templateModelM28048interface, this.f24114goto, 1, "==", h0Var.m28048interface(d0Var), h0Var, this, true, false, false, false, d0Var)) {
                    return list.get(i2).m28048interface(d0Var);
                }
                i = i4 + 2;
                size = i5;
            }
        }

        @Override // freemarker.core.Cinterface
        public void r(List<h0> list, m4 m4Var, m4 m4Var2) throws h3 {
            if (list.size() < 2) {
                throw y("must have at least 2", m4Var, m4Var2);
            }
            this.f23868final = list;
        }

        @Override // freemarker.core.Cinterface
        public void t(h0 h0Var, String str, h0 h0Var2, h0.Cdo cdo) {
            ArrayList arrayList = new ArrayList(this.f23868final.size());
            Iterator<h0> it = this.f23868final.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m28053return(str, h0Var2, cdo));
            }
            ((Cdo) h0Var).f23868final = arrayList;
        }

        @Override // freemarker.core.Cinterface
        public h0 u(int i) {
            return this.f23868final.get(i);
        }

        @Override // freemarker.core.Cinterface
        public List<h0> v() {
            return this.f23868final;
        }

        @Override // freemarker.core.Cinterface
        public int w() {
            return this.f23868final.size();
        }
    }

    /* renamed from: freemarker.core.j$if, reason: invalid class name */
    public static class Cif extends Cinterface {

        /* renamed from: final, reason: not valid java name */
        private h0 f23869final;

        /* renamed from: super, reason: not valid java name */
        private h0 f23870super;

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return (this.f24114goto.mo27884continue(d0Var) ? this.f23869final : this.f23870super).m28048interface(d0Var);
        }

        @Override // freemarker.core.Cinterface
        public void r(List<h0> list, m4 m4Var, m4 m4Var2) throws h3 {
            if (list.size() != 2) {
                throw y("requires exactly 2", m4Var, m4Var2);
            }
            this.f23869final = list.get(0);
            this.f23870super = list.get(1);
        }

        @Override // freemarker.core.Cinterface
        public void t(h0 h0Var, String str, h0 h0Var2, h0.Cdo cdo) {
            Cif cif = (Cif) h0Var;
            cif.f23869final = this.f23869final.m28053return(str, h0Var2, cdo);
            cif.f23870super = this.f23870super.m28053return(str, h0Var2, cdo);
        }

        @Override // freemarker.core.Cinterface
        public h0 u(int i) {
            if (i == 0) {
                return this.f23869final;
            }
            if (i == 1) {
                return this.f23870super;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // freemarker.core.Cinterface
        public List<h0> v() {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(this.f23869final);
            arrayList.add(this.f23870super);
            return arrayList;
        }

        @Override // freemarker.core.Cinterface
        public int w() {
            return 2;
        }
    }

    private j() {
    }
}
