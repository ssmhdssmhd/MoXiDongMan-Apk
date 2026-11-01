package freemarker.core;

import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
class l4 extends i4 {

    /* renamed from: freemarker.core.l4$for, reason: invalid class name */
    public static class Cfor extends b4 {
        @Override // freemarker.core.h4
        /* renamed from: case */
        public String mo27813case() {
            return "##threadInterruptionCheck";
        }

        @Override // freemarker.core.h4
        /* renamed from: else */
        public int mo27814else() {
            return 0;
        }

        @Override // freemarker.core.b4
        public boolean f() {
            return false;
        }

        @Override // freemarker.core.h4
        /* renamed from: goto */
        public f3 mo27816goto(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // freemarker.core.b4
        /* renamed from: native */
        public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
            if (Thread.currentThread().isInterrupted()) {
                throw new Cif();
            }
            return null;
        }

        @Override // freemarker.core.b4
        /* renamed from: switch */
        public String mo27846switch(boolean z) {
            if (z) {
                return "";
            }
            return "<#--" + mo27813case() + "--#>";
        }

        @Override // freemarker.core.h4
        /* renamed from: this */
        public Object mo27819this(int i) {
            throw new IndexOutOfBoundsException();
        }

        private Cfor(b4 b4Var) throws h3 {
            Cstatic template = b4Var.getTemplate();
            int i = b4Var.f23823if;
            int i2 = b4Var.f23822for;
            mo28044const(template, i, i2, i, i2);
        }
    }

    /* renamed from: freemarker.core.l4$if, reason: invalid class name */
    public static class Cif extends m0 {
        public Cif() {
            super("Template processing thread \"interrupted\" flag was set.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m28179if(b4 b4Var) throws j4 {
        if (b4Var == null) {
            return;
        }
        int iM27840package = b4Var.m27840package();
        for (int i = 0; i < iM27840package; i++) {
            m28179if(b4Var.m27835default(i));
        }
        if (b4Var.f()) {
            try {
                b4Var.m27843public(0, new Cfor(b4Var));
            } catch (h3 e) {
                throw new j4("Unexpected error; see cause", e);
            }
        }
    }

    @Override // freemarker.core.i4
    /* renamed from: do */
    public void mo28083do(Cstatic cstatic) throws j4 {
        m28179if(cstatic.o1());
    }
}
