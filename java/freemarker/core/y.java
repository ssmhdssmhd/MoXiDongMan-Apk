package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.j52;
import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Cif;

/* loaded from: classes.dex */
public class y extends p4 {

    /* renamed from: break, reason: not valid java name */
    public static final String f24285break = "[…]";

    /* renamed from: catch, reason: not valid java name */
    public static final j52 f24286catch;

    /* renamed from: class, reason: not valid java name */
    public static final double f24287class = 0.75d;

    /* renamed from: const, reason: not valid java name */
    private static final int f24288const = 3;

    /* renamed from: final, reason: not valid java name */
    public static final y f24289final;

    /* renamed from: super, reason: not valid java name */
    public static final y f24290super;

    /* renamed from: this, reason: not valid java name */
    public static final String f24291this = "[...]";

    /* renamed from: case, reason: not valid java name */
    private final boolean f24292case;

    /* renamed from: do, reason: not valid java name */
    private final TemplateScalarModel f24293do;

    /* renamed from: else, reason: not valid java name */
    private final double f24294else;

    /* renamed from: for, reason: not valid java name */
    private final boolean f24295for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f24296goto;

    /* renamed from: if, reason: not valid java name */
    private final int f24297if;

    /* renamed from: new, reason: not valid java name */
    private final TemplateMarkupOutputModel<?> f24298new;

    /* renamed from: try, reason: not valid java name */
    private final Integer f24299try;

    /* renamed from: freemarker.core.y$do, reason: invalid class name */
    public enum Cdo {
        CHAR_BOUNDARY,
        WORD_BOUNDARY,
        AUTO
    }

    static {
        try {
            j52 j52VarMo28198else = q0.f24076do.mo28198else("<span class='truncateTerminator'>[&#8230;]</span>");
            f24286catch = j52VarMo28198else;
            f24289final = new y(f24291this, j52VarMo28198else, true);
            f24290super = new y(f24285break, j52VarMo28198else, true);
        } catch (k52 e) {
            throw new IllegalStateException(e);
        }
    }

    public y(String str, TemplateMarkupOutputModel<?> templateMarkupOutputModel, boolean z) {
        this(str, null, null, templateMarkupOutputModel, null, null, z, null);
    }

    /* renamed from: abstract, reason: not valid java name */
    private TemplateModel m28348abstract(String str, int i, TemplateModel templateModel, Integer num, Cdo cdo, boolean z) throws TemplateException {
        Boolean boolValueOf;
        if (str.length() <= i) {
            return new ez1(str);
        }
        if (i < 0) {
            throw new IllegalArgumentException("maxLength can't be negative");
        }
        if (templateModel != null) {
            if (num == null) {
                num = Integer.valueOf(m28354native(templateModel));
            } else if (num.intValue() < 0) {
                throw new IllegalArgumentException("terminatorLength can't be negative");
            }
            boolValueOf = null;
        } else if (!z || (templateModel = this.f24298new) == null) {
            templateModel = this.f24293do;
            num = Integer.valueOf(this.f24297if);
            boolValueOf = Boolean.valueOf(this.f24295for);
        } else {
            num = this.f24299try;
            boolValueOf = Boolean.valueOf(this.f24292case);
        }
        StringBuilder sbM28349continue = m28349continue(str, i, templateModel, num.intValue(), boolValueOf, cdo);
        if (sbM28349continue == null || sbM28349continue.length() == 0) {
            return templateModel;
        }
        if (templateModel instanceof TemplateScalarModel) {
            sbM28349continue.append(((TemplateScalarModel) templateModel).getAsString());
            return new ez1(sbM28349continue.toString());
        }
        if (templateModel instanceof TemplateMarkupOutputModel) {
            TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) templateModel;
            y1 outputFormat = templateMarkupOutputModel.getOutputFormat();
            return outputFormat.mo28208try(outputFormat.mo28200goto(sbM28349continue.toString()), templateMarkupOutputModel);
        }
        throw new IllegalArgumentException("Unsupported terminator type: " + Cif.m29271case(templateModel));
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b8, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0118 A[PHI: r9
      0x0118: PHI (r9v4 java.lang.Boolean) = (r9v3 java.lang.Boolean), (r9v6 java.lang.Boolean), (r9v3 java.lang.Boolean) binds: [B:71:0x00f0, B:79:0x010a, B:75:0x00fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: continue, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private StringBuilder m28349continue(String str, int i, TemplateModel templateModel, int i2, Boolean bool, Cdo cdo) throws k52 {
        Boolean boolValueOf;
        StringBuilder sb;
        boolean z;
        int iMax;
        StringBuilder sb2;
        int i3 = (i - i2) - 1;
        int iM28356private = m28356private(str, i3);
        if (iM28356private < 0) {
            return null;
        }
        Cdo cdo2 = Cdo.AUTO;
        if ((cdo != cdo2 || this.f24294else >= 1.0d) && cdo != Cdo.WORD_BOUNDARY) {
            boolValueOf = bool;
        } else {
            int i4 = this.f24296goto ? i2 + 1 : i2;
            if (cdo == cdo2) {
                double d = i;
                double d2 = this.f24294else;
                Double.isNaN(d);
                iMax = Math.max((((int) Math.ceil(d * d2)) - i4) - 1, 0);
            } else {
                iMax = 0;
            }
            int iMin = Math.min((i - i4) - 1, iM28356private);
            int i5 = iMin + 1;
            boolean zIsWhitespace = str.length() > i5 ? Character.isWhitespace(str.charAt(i5)) : true;
            while (true) {
                if (iMin < iMax) {
                    boolValueOf = bool;
                    break;
                }
                char cCharAt = str.charAt(iMin);
                boolean zIsWhitespace2 = Character.isWhitespace(cCharAt);
                if (zIsWhitespace2 || !zIsWhitespace) {
                    iMin--;
                    zIsWhitespace = zIsWhitespace2;
                } else {
                    if (!this.f24296goto && m28358switch(cCharAt)) {
                        boolValueOf = bool == null ? Boolean.valueOf(m28357public(templateModel)) : bool;
                        if (boolValueOf.booleanValue()) {
                            while (iMin >= iMax && m28350default(str.charAt(iMin))) {
                                iMin--;
                            }
                            if (iMin < iMax) {
                                break;
                            }
                        }
                    } else {
                        boolValueOf = bool;
                    }
                    int i6 = iMin + 1;
                    sb2 = new StringBuilder(i4 + i6);
                    sb2.append((CharSequence) str, 0, i6);
                    if (this.f24296goto) {
                        sb2.append(' ');
                    }
                }
            }
            if (sb2 != null || cdo == Cdo.WORD_BOUNDARY || (cdo == Cdo.AUTO && this.f24294else == 0.0d)) {
                return sb2;
            }
        }
        if (iM28356private == i3 && this.f24296goto && m28353finally(str, iM28356private) && iM28356private - 1 < 0) {
            return null;
        }
        StringBuilder sb3 = null;
        while (true) {
            int iM28356private2 = m28356private(str, iM28356private);
            if (iM28356private2 < 0) {
                return sb3;
            }
            if (!m28358switch(str.charAt(iM28356private2)) || (this.f24296goto && m28353finally(str, iM28356private2))) {
                sb = null;
                iM28356private = iM28356private2;
                z = false;
            } else {
                if (boolValueOf == null) {
                    boolValueOf = Boolean.valueOf(m28357public(templateModel));
                }
                if (boolValueOf.booleanValue()) {
                    int iM28355package = m28355package(str, iM28356private2);
                    if (iM28355package < 0) {
                        return null;
                    }
                    sb = null;
                    iM28356private = iM28355package;
                    z = true;
                }
            }
            if (!z) {
                int i7 = (this.f24296goto && m28353finally(str, iM28356private)) ? 1 : 0;
                int i8 = iM28356private + 1;
                StringBuilder sb4 = new StringBuilder(i8 + i7 + i2);
                sb4.append((CharSequence) str, 0, i8);
                if (i7 != 0) {
                    sb4.append(' ');
                }
                return sb4;
            }
            sb3 = sb;
        }
    }

    /* renamed from: default, reason: not valid java name */
    private static boolean m28350default(char c) {
        return m28358switch(c) || Character.isWhitespace(c);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m28351else(String str) {
        int i;
        char cCharAt;
        int i2;
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 != '<') {
                if (cCharAt2 != '&') {
                    return m28358switch(cCharAt2);
                }
                int i5 = i4;
                while (i5 < length && str.charAt(i5) != ';') {
                    i5++;
                }
                return m28361throws(str.substring(i4, i5));
            }
            if (str.startsWith("!--", i4)) {
                int i6 = i4 + 3;
                while (true) {
                    int i7 = i6 + 2;
                    if (i7 >= length || (str.charAt(i6) == '-' && str.charAt(i6 + 1) == '-' && str.charAt(i7) == '>')) {
                        break;
                    }
                    i6++;
                }
                i = i6 + 3;
                if (i >= length) {
                    break;
                }
                i3 = i;
            } else if (str.startsWith("![CDATA[", i4)) {
                int i8 = i4 + 8;
                if (i8 < length && ((cCharAt = str.charAt(i8)) != ']' || (i2 = i8 + 2) >= length || str.charAt(i8 + 1) != ']' || str.charAt(i2) != '>')) {
                    return m28358switch(cCharAt);
                }
                i = i8 + 3;
                if (i >= length) {
                    break;
                }
                i3 = i;
            } else {
                while (i4 < length && str.charAt(i4) != '>') {
                    i4++;
                }
                i = i4 + 1;
                if (i >= length) {
                    break;
                }
                i3 = i;
            }
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m28352extends(y1<?> y1Var) {
        return (y1Var instanceof q0) || (y1Var instanceof v4);
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m28353finally(String str, int i) {
        int i2 = i + 1;
        return i2 >= str.length() || Character.isWhitespace(str.charAt(i2));
    }

    /* renamed from: native, reason: not valid java name */
    private int m28354native(TemplateModel templateModel) throws k52 {
        return templateModel instanceof TemplateScalarModel ? ((TemplateScalarModel) templateModel).getAsString().length() : m28372while((TemplateMarkupOutputModel) templateModel);
    }

    /* renamed from: package, reason: not valid java name */
    private int m28355package(String str, int i) {
        while (i >= 0 && m28358switch(str.charAt(i))) {
            i--;
        }
        return i;
    }

    /* renamed from: private, reason: not valid java name */
    private int m28356private(String str, int i) {
        while (i >= 0 && Character.isWhitespace(str.charAt(i))) {
            i--;
        }
        return i;
    }

    /* renamed from: public, reason: not valid java name */
    private boolean m28357public(TemplateModel templateModel) throws k52 {
        return templateModel instanceof TemplateScalarModel ? m28369return(((TemplateScalarModel) templateModel).getAsString()) : m28368import((TemplateMarkupOutputModel) templateModel);
    }

    /* renamed from: switch, reason: not valid java name */
    private static boolean m28358switch(char c) {
        return c == '.' || c == 8230;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m28359this(String str) {
        int i;
        int i2;
        char cCharAt = str.charAt(1);
        int i3 = 0;
        boolean z = cCharAt == 'x' || cCharAt == 'X';
        for (int i4 = z ? 2 : 1; i4 < str.length(); i4++) {
            char cCharAt2 = str.charAt(i4);
            int i5 = i3 * (z ? 16 : 10);
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                if (z && cCharAt2 >= 'a' && cCharAt2 <= 'f') {
                    i = cCharAt2 - 'a';
                } else {
                    if (!z || cCharAt2 < 'A' || cCharAt2 > 'F') {
                        return -1;
                    }
                    i = cCharAt2 - 'A';
                }
                i2 = i + 10;
            } else {
                i2 = cCharAt2 - '0';
            }
            i3 = i5 + i2;
        }
        return i3;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m28360throw(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt != '<') {
                if (cCharAt == '&') {
                    while (i4 < length && str.charAt(i4) != ';') {
                        i4++;
                    }
                    i4++;
                    i3++;
                    if (i4 >= length) {
                        break;
                    }
                } else {
                    i3++;
                }
                i2 = i4;
            } else if (str.startsWith("!--", i4)) {
                int i5 = i4 + 3;
                while (true) {
                    int i6 = i5 + 2;
                    if (i6 >= length || (str.charAt(i5) == '-' && str.charAt(i5 + 1) == '-' && str.charAt(i6) == '>')) {
                        break;
                    }
                    i5++;
                }
                i4 = i5 + 3;
                if (i4 >= length) {
                    break;
                }
                i2 = i4;
            } else if (str.startsWith("![CDATA[", i4)) {
                int i7 = i4 + 8;
                while (i7 < length && (str.charAt(i7) != ']' || (i = i7 + 2) >= length || str.charAt(i7 + 1) != ']' || str.charAt(i) != '>')) {
                    i3++;
                    i7++;
                }
                i4 = i7 + 3;
                if (i4 >= length) {
                    break;
                }
                i2 = i4;
            } else {
                while (i4 < length && str.charAt(i4) != '>') {
                    i4++;
                }
                i4++;
                if (i4 >= length) {
                    break;
                }
                i2 = i4;
            }
        }
        return i3;
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m28361throws(String str) {
        if (str.length() <= 2 || str.charAt(0) != '#') {
            return str.equals("hellip") || str.equals("period");
        }
        int iM28359this = m28359this(str);
        return iM28359this == 8230 || iM28359this == 46;
    }

    /* renamed from: break, reason: not valid java name */
    public TemplateMarkupOutputModel<?> m28362break() {
        return this.f24298new;
    }

    @Override // freemarker.core.p4
    /* renamed from: case */
    public TemplateModel mo28212case(String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
        return m28348abstract(str, i, templateModel, num, Cdo.WORD_BOUNDARY, true);
    }

    /* renamed from: catch, reason: not valid java name */
    public Integer m28363catch() {
        return this.f24299try;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m28364class() {
        return this.f24292case;
    }

    /* renamed from: const, reason: not valid java name */
    public String m28365const() {
        try {
            return this.f24293do.getAsString();
        } catch (k52 e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // freemarker.core.p4
    /* renamed from: do */
    public TemplateScalarModel mo28213do(String str, int i, TemplateScalarModel templateScalarModel, Integer num, d0 d0Var) throws TemplateException {
        return (TemplateScalarModel) m28348abstract(str, i, templateScalarModel, num, Cdo.AUTO, false);
    }

    /* renamed from: final, reason: not valid java name */
    public int m28366final() {
        return this.f24297if;
    }

    @Override // freemarker.core.p4
    /* renamed from: for */
    public TemplateModel mo28214for(String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
        return m28348abstract(str, i, templateModel, num, Cdo.CHAR_BOUNDARY, true);
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m28367goto() {
        return this.f24296goto;
    }

    @Override // freemarker.core.p4
    /* renamed from: if */
    public TemplateScalarModel mo28215if(String str, int i, TemplateScalarModel templateScalarModel, Integer num, d0 d0Var) throws TemplateException {
        return (TemplateScalarModel) m28348abstract(str, i, templateScalarModel, num, Cdo.CHAR_BOUNDARY, false);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m28368import(TemplateMarkupOutputModel templateMarkupOutputModel) throws k52 {
        if (m28352extends(templateMarkupOutputModel.getOutputFormat())) {
            return m28351else(templateMarkupOutputModel.getOutputFormat().mo28206this(templateMarkupOutputModel));
        }
        return true;
    }

    @Override // freemarker.core.p4
    /* renamed from: new */
    public TemplateModel mo28216new(String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
        return m28348abstract(str, i, templateModel, num, Cdo.AUTO, true);
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m28369return(String str) throws k52 {
        return str.startsWith(".") || str.startsWith("…");
    }

    /* renamed from: static, reason: not valid java name */
    public double m28370static() {
        return this.f24294else;
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m28371super() {
        return this.f24295for;
    }

    @Override // freemarker.core.p4
    /* renamed from: try */
    public TemplateScalarModel mo28217try(String str, int i, TemplateScalarModel templateScalarModel, Integer num, d0 d0Var) throws TemplateException {
        return (TemplateScalarModel) m28348abstract(str, i, templateScalarModel, num, Cdo.WORD_BOUNDARY, false);
    }

    /* renamed from: while, reason: not valid java name */
    public int m28372while(TemplateMarkupOutputModel<?> templateMarkupOutputModel) throws k52 {
        y1<?> outputFormat = templateMarkupOutputModel.getOutputFormat();
        if (m28352extends(outputFormat)) {
            return m28360throw(outputFormat.mo28206this(templateMarkupOutputModel));
        }
        return 3;
    }

    public y(String str, boolean z) {
        this(str, null, null, null, null, null, z, null);
    }

    public y(String str, Integer num, Boolean bool, TemplateMarkupOutputModel<?> templateMarkupOutputModel, Integer num2, Boolean bool2, boolean z, Double d) {
        int length;
        boolean zM28369return;
        int iM28372while;
        boolean zM28368import;
        w41.check("defaultTerminator", str);
        this.f24293do = new ez1(str);
        try {
            if (num != null) {
                length = num.intValue();
            } else {
                length = str.length();
            }
            this.f24297if = length;
            if (bool != null) {
                zM28369return = bool.booleanValue();
            } else {
                zM28369return = m28369return(str);
            }
            this.f24295for = zM28369return;
            this.f24298new = templateMarkupOutputModel;
            if (templateMarkupOutputModel != null) {
                try {
                    if (num2 != null) {
                        iM28372while = num2.intValue();
                    } else {
                        iM28372while = m28372while(templateMarkupOutputModel);
                    }
                    this.f24299try = Integer.valueOf(iM28372while);
                    if (bool2 != null) {
                        zM28368import = bool2.booleanValue();
                    } else {
                        zM28368import = m28368import(templateMarkupOutputModel);
                    }
                    this.f24292case = zM28368import;
                } catch (k52 e) {
                    throw new IllegalArgumentException("Failed to examine defaultMTerminator", e);
                }
            } else {
                this.f24299try = null;
                this.f24292case = false;
            }
            if (d == null) {
                d = Double.valueOf(0.75d);
            } else if (d.doubleValue() < 0.0d || d.doubleValue() > 1.0d) {
                throw new IllegalArgumentException("wordBoundaryMinLength must be between 0.0 and 1.0 (inclusive)");
            }
            this.f24294else = d.doubleValue();
            this.f24296goto = z;
        } catch (k52 e2) {
            throw new IllegalArgumentException("Failed to examine defaultTerminator", e2);
        }
    }
}
