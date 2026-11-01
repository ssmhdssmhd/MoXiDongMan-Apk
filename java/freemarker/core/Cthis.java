package freemarker.core;

import android.support.v4.mc;
import android.support.v4.yk2;
import freemarker.core.d0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;

/* renamed from: freemarker.core.this, reason: invalid class name */
/* loaded from: classes.dex */
final class Cthis extends b4 {

    /* renamed from: import, reason: not valid java name */
    private static final int f24217import = 65537;

    /* renamed from: native, reason: not valid java name */
    private static final int f24218native = 65538;

    /* renamed from: public, reason: not valid java name */
    private static final int f24219public = 65539;

    /* renamed from: return, reason: not valid java name */
    public static final int f24220return = 1;

    /* renamed from: static, reason: not valid java name */
    public static final int f24221static = 2;

    /* renamed from: switch, reason: not valid java name */
    public static final int f24222switch = 3;

    /* renamed from: throws, reason: not valid java name */
    private static final Number f24223throws = 1;

    /* renamed from: while, reason: not valid java name */
    private static final int f24224while = 65536;

    /* renamed from: class, reason: not valid java name */
    private final int f24225class;

    /* renamed from: const, reason: not valid java name */
    private final String f24226const;

    /* renamed from: final, reason: not valid java name */
    private final int f24227final;

    /* renamed from: super, reason: not valid java name */
    private final h0 f24228super;

    /* renamed from: throw, reason: not valid java name */
    private h0 f24229throw;

    public Cthis(String str, int i, h0 h0Var, int i2) {
        this.f24225class = i2;
        this.f24226const = str;
        if (i == 105) {
            this.f24227final = 65536;
        } else {
            switch (i) {
                case 108:
                    this.f24227final = f24217import;
                    break;
                case 109:
                    this.f24227final = 0;
                    break;
                case 110:
                    this.f24227final = 1;
                    break;
                case 111:
                    this.f24227final = 2;
                    break;
                case 112:
                    this.f24227final = 3;
                    break;
                case 113:
                    this.f24227final = f24218native;
                    break;
                case 114:
                    this.f24227final = f24219public;
                    break;
                default:
                    throw new mc();
            }
        }
        this.f24228super = h0Var;
    }

    public static String r(int i) {
        return i == 2 ? "#local" : i == 3 ? "#global" : i == 1 ? "#assign" : "#{unknown_assignment_type}";
    }

    private String s() {
        int i = this.f24227final;
        if (i == 65536) {
            return "=";
        }
        if (i == f24217import) {
            return "+=";
        }
        if (i == f24218native) {
            return "++";
        }
        if (i == f24219public) {
            return "--";
        }
        return Cgoto.e(this.f24227final) + "=";
    }

    public static String t(int i) {
        if (i == 1) {
            return "template namespace";
        }
        if (i == 2) {
            return "local scope";
        }
        if (i == 3) {
            return "global scope";
        }
        throw new AssertionError("Unsupported scope: " + i);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return r(this.f24225class);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 5;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23761goto;
        }
        if (i == 1) {
            return f3.f23778this;
        }
        if (i == 2) {
            return f3.f23749break;
        }
        if (i == 3) {
            return f3.f23751catch;
        }
        if (i == 4) {
            return f3.f23752class;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException {
        d0.Cthis cthisY1;
        TemplateModel templateModelE;
        h0 h0Var = this.f24229throw;
        if (h0Var == null) {
            int i = this.f24225class;
            if (i == 1) {
                cthisY1 = d0Var.y1();
            } else if (i == 2) {
                cthisY1 = null;
            } else {
                if (i != 3) {
                    throw new mc("Unexpected scope type: " + this.f24225class);
                }
                cthisY1 = d0Var.I1();
            }
        } else {
            TemplateModel templateModelM28055throws = h0Var.m28055throws(d0Var);
            try {
                cthisY1 = (d0.Cthis) templateModelM28055throws;
                if (cthisY1 == null) {
                    throw b1.getInstance(this.f24229throw, d0Var);
                }
            } catch (ClassCastException unused) {
                throw new p2(this.f24229throw, templateModelM28055throws, d0Var);
            }
        }
        if (this.f24227final == 65536) {
            templateModelE = this.f24228super.m28055throws(d0Var);
            if (templateModelE == null) {
                if (!d0Var.y()) {
                    throw b1.getInstance(this.f24228super, d0Var);
                }
                templateModelE = TemplateScalarModel.EMPTY_STRING;
            }
        } else {
            TemplateModel templateModelS1 = cthisY1 == null ? d0Var.S1(this.f24226const) : cthisY1.get(this.f24226const);
            if (this.f24227final == f24217import) {
                if (templateModelS1 == null) {
                    if (!d0Var.y()) {
                        throw b1.getInstance(this.f24225class, this.f24226const, s(), d0Var);
                    }
                    templateModelS1 = TemplateScalarModel.EMPTY_STRING;
                }
                TemplateModel templateModel = templateModelS1;
                TemplateModel templateModelM28055throws2 = this.f24228super.m28055throws(d0Var);
                if (templateModelM28055throws2 == null) {
                    if (!d0Var.y()) {
                        throw b1.getInstance(this.f24228super, d0Var);
                    }
                    templateModelM28055throws2 = TemplateScalarModel.EMPTY_STRING;
                }
                templateModelE = Cif.d(d0Var, this.f24229throw, null, templateModel, this.f24228super, templateModelM28055throws2);
            } else {
                if (!(templateModelS1 instanceof TemplateNumberModel)) {
                    if (templateModelS1 == null) {
                        throw b1.getInstance(this.f24225class, this.f24226const, s(), d0Var);
                    }
                    throw new r2(this.f24226const, templateModelS1, (String[]) null, d0Var);
                }
                Number numberM28017import = f0.m28017import((TemplateNumberModel) templateModelS1, null);
                int i2 = this.f24227final;
                templateModelE = i2 == f24218native ? Cif.e(d0Var, m27847synchronized(), numberM28017import, f24223throws) : i2 == f24219public ? Cgoto.d(d0Var, m27847synchronized(), numberM28017import, 0, f24223throws) : Cgoto.d(d0Var, this, numberM28017import, this.f24227final, this.f24228super.m28051protected(d0Var));
            }
        }
        if (cthisY1 == null) {
            d0Var.r3(this.f24226const, templateModelE);
        } else {
            cthisY1.put(this.f24226const, templateModelE);
        }
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        String strMo27813case = m27847synchronized() instanceof Cbreak ? null : mo27813case();
        if (strMo27813case != null) {
            if (z) {
                sb.append("<");
            }
            sb.append(strMo27813case);
            sb.append(' ');
        }
        sb.append(yk2.m9890else(this.f24226const));
        if (this.f24228super != null) {
            sb.append(' ');
        }
        sb.append(s());
        if (this.f24228super != null) {
            sb.append(' ');
            sb.append(this.f24228super.mo27815for());
        }
        if (strMo27813case != null) {
            if (this.f24229throw != null) {
                sb.append(" in ");
                sb.append(this.f24229throw.mo27815for());
            }
            if (z) {
                sb.append(">");
            }
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24226const;
        }
        if (i == 1) {
            return s();
        }
        if (i == 2) {
            return this.f24228super;
        }
        if (i == 3) {
            return Integer.valueOf(this.f24225class);
        }
        if (i == 4) {
            return this.f24229throw;
        }
        throw new IndexOutOfBoundsException();
    }

    public void u(h0 h0Var) {
        if (this.f24225class != 1 && h0Var != null) {
            throw new mc();
        }
        this.f24229throw = h0Var;
    }
}
