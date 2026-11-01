package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.ul2;
import android.support.v4.vl2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.h0;
import freemarker.template.Creturn;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.utility.Cfor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
final class b0 extends h0 {

    /* renamed from: catch, reason: not valid java name */
    private static final int f23491catch = -1;

    /* renamed from: class, reason: not valid java name */
    private static Class[] f23492class;

    /* renamed from: break, reason: not valid java name */
    private boolean f23493break;

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23494goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23495this;

    /* renamed from: freemarker.core.b0$do, reason: invalid class name */
    public class Cdo implements TemplateModelIterator {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ TemplateModelIterator f23496case;

        /* renamed from: do, reason: not valid java name */
        private boolean f23497do;

        /* renamed from: else, reason: not valid java name */
        public final /* synthetic */ int f23498else;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f23499for;

        /* renamed from: if, reason: not valid java name */
        private int f23501if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f23502new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ boolean f23503try;

        public Cdo(boolean z, int i, boolean z2, TemplateModelIterator templateModelIterator, int i2) {
            this.f23499for = z;
            this.f23502new = i;
            this.f23503try = z2;
            this.f23496case = templateModelIterator;
            this.f23498else = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public void m27823do() throws k52 {
            if (this.f23497do) {
                return;
            }
            b0.this.m(this.f23496case, this.f23498else);
            this.f23501if = this.f23498else;
            this.f23497do = true;
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            m27823do();
            return (this.f23499for || this.f23501if <= this.f23502new) && (!this.f23503try || this.f23496case.hasNext());
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            m27823do();
            if (!this.f23499for && this.f23501if > this.f23502new) {
                throw new vl2("Iterator has no more elements (at index ", Integer.valueOf(this.f23501if), ")");
            }
            if (!this.f23503try && !this.f23496case.hasNext()) {
                throw b0.this.l(this.f23501if, this.f23502new);
            }
            TemplateModel next = this.f23496case.next();
            this.f23501if++;
            return next;
        }
    }

    static {
        Class[] clsArr = new Class[u2.STRING_COERCABLE_TYPES.length + 1];
        f23492class = clsArr;
        int i = 0;
        clsArr[0] = TemplateSequenceModel.class;
        while (true) {
            Class[] clsArr2 = u2.STRING_COERCABLE_TYPES;
            if (i >= clsArr2.length) {
                return;
            }
            int i2 = i + 1;
            f23492class[i2] = clsArr2[i];
            i = i2;
        }
    }

    public b0(h0 h0Var, h0 h0Var2) {
        this.f23495this = h0Var;
        this.f23494goto = h0Var2;
        h0Var.mo27808switch();
    }

    private TemplateModel f(TemplateModel templateModel, int i, d0 d0Var) throws TemplateException {
        int size;
        if (templateModel instanceof TemplateSequenceModel) {
            TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) templateModel;
            try {
                size = templateSequenceModel.size();
            } catch (Exception unused) {
                size = Integer.MAX_VALUE;
            }
            if (i < size) {
                return templateSequenceModel.get(i);
            }
            return null;
        }
        int i2 = 0;
        if (templateModel instanceof i1) {
            i1 i1Var = (i1) templateModel;
            if (i1Var.m28081if()) {
                if (i < 0) {
                    return null;
                }
                TemplateModelIterator it = i1Var.iterator();
                while (it.hasNext()) {
                    TemplateModel next = it.next();
                    if (i == i2) {
                        return next;
                    }
                    i2++;
                }
                return null;
            }
        }
        try {
            String strMo28045default = this.f23495this.mo28045default(d0Var);
            try {
                return new ez1(strMo28045default.substring(i, i + 1));
            } catch (IndexOutOfBoundsException e) {
                if (i < 0) {
                    throw new nl2("Negative index not allowed: ", Integer.valueOf(i));
                }
                if (i >= strMo28045default.length()) {
                    throw new nl2("String index out of range: The index was ", Integer.valueOf(i), " (0-based), but the length of the string is only ", Integer.valueOf(strMo28045default.length()), ".");
                }
                throw new RuntimeException("Can't explain exception", e);
            }
        } catch (u2 unused2) {
            throw new r4(this.f23495this, templateModel, "sequence or string or something automatically convertible to string (number, date or boolean)", f23492class, templateModel instanceof TemplateHashModel ? "You had a numberical value inside the []. Currently that's only supported for sequences (lists) and strings. To get a Map item with a non-string key, use myMap?api.get(myKey)." : null, d0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TemplateModel g(TemplateModel templateModel, l3 l3Var, d0 d0Var) throws TemplateException {
        String strMo28045default;
        TemplateSequenceModel templateSequenceModel;
        i1 i1Var;
        boolean zIsRightUnbounded;
        int begining;
        int size;
        boolean z;
        int size2;
        int i;
        if (templateModel instanceof TemplateSequenceModel) {
            templateSequenceModel = (TemplateSequenceModel) templateModel;
            strMo28045default = null;
        } else {
            try {
                if (templateModel instanceof i1) {
                    i1 i1Var2 = (i1) templateModel;
                    if (i1Var2.m28081if()) {
                        i1Var = i1Var2;
                        strMo28045default = null;
                        templateSequenceModel = null;
                        int size3 = l3Var.size();
                        zIsRightUnbounded = l3Var.isRightUnbounded();
                        boolean zIsRightAdaptive = l3Var.isRightAdaptive();
                        if (zIsRightUnbounded && size3 == 0) {
                            return i(templateSequenceModel != null);
                        }
                        begining = l3Var.getBegining();
                        if (begining >= 0) {
                            throw new nl2(this.f23494goto, "Negative range start index (", Integer.valueOf(begining), ") isn't allowed for a range used for slicing.");
                        }
                        int step = l3Var.getStep();
                        if (strMo28045default != null) {
                            size2 = strMo28045default.length();
                        } else if (templateSequenceModel != null) {
                            size2 = templateSequenceModel.size();
                        } else {
                            if (i1Var instanceof TemplateCollectionModelEx) {
                                size = ((TemplateCollectionModelEx) i1Var).size();
                                z = true;
                                String str = TypedValues.Custom.S_STRING;
                                if (!z && (!(zIsRightAdaptive && step == 1) ? begining < size : begining <= size)) {
                                    h0 h0Var = this.f23494goto;
                                    Object[] objArr = new Object[10];
                                    objArr[0] = "Range start index ";
                                    objArr[1] = Integer.valueOf(begining);
                                    objArr[2] = " is out of bounds, because the sliced ";
                                    if (strMo28045default == null) {
                                        str = "sequence";
                                    }
                                    objArr[3] = str;
                                    objArr[4] = " has only ";
                                    objArr[5] = Integer.valueOf(size);
                                    objArr[6] = Cclass.f28652do;
                                    objArr[7] = strMo28045default == null ? "element(s)" : "character(s)";
                                    objArr[8] = ". ";
                                    objArr[9] = "(Note that indices are 0-based).";
                                    throw new nl2(h0Var, objArr);
                                }
                                if (zIsRightUnbounded) {
                                    size3 = z ? size - begining : -1;
                                } else {
                                    int i2 = ((size3 - 1) * step) + begining;
                                    if (i2 < 0) {
                                        if (!zIsRightAdaptive) {
                                            throw new nl2(this.f23494goto, "Negative range end index (", Integer.valueOf(i2), ") isn't allowed for a range used for slicing.");
                                        }
                                        size3 = begining + 1;
                                    } else if (z && i2 >= size) {
                                        if (!zIsRightAdaptive) {
                                            h0 h0Var2 = this.f23494goto;
                                            Object[] objArr2 = new Object[9];
                                            objArr2[0] = "Range end index ";
                                            objArr2[1] = Integer.valueOf(i2);
                                            objArr2[2] = " is out of bounds, because the sliced ";
                                            if (strMo28045default == null) {
                                                str = "sequence";
                                            }
                                            objArr2[3] = str;
                                            objArr2[4] = " has only ";
                                            objArr2[5] = Integer.valueOf(size);
                                            objArr2[6] = Cclass.f28652do;
                                            objArr2[7] = strMo28045default == null ? "element(s)" : "character(s)";
                                            objArr2[8] = ". (Note that indices are 0-based).";
                                            throw new nl2(h0Var2, objArr2);
                                        }
                                        size3 = Math.abs(size - begining);
                                    }
                                }
                                if (size3 == 0) {
                                    return i(templateSequenceModel != null);
                                }
                                if (templateSequenceModel != null) {
                                    ArrayList arrayList = new ArrayList(size3);
                                    for (int i3 = 0; i3 < size3; i3++) {
                                        arrayList.add(templateSequenceModel.get(begining));
                                        begining += step;
                                    }
                                    return new Creturn(arrayList, (ObjectWrapper) null);
                                }
                                if (i1Var != null) {
                                    if (step == 1) {
                                        return j(i1Var.iterator(), l3Var, size3, z);
                                    }
                                    if (step == -1) {
                                        return k(i1Var.iterator(), l3Var, size3);
                                    }
                                    throw new AssertionError();
                                }
                                if (step >= 0 || size3 <= 1) {
                                    i = size3 + begining;
                                } else {
                                    if (!l3Var.isAffectedByStringSlicingBug() || size3 != 2) {
                                        throw new nl2(this.f23494goto, "Decreasing ranges aren't allowed for slicing strings (as it would give reversed text). The index range was: first = ", Integer.valueOf(begining), ", last = ", Integer.valueOf(begining + ((size3 - 1) * step)));
                                    }
                                    i = begining;
                                }
                                return new ez1(strMo28045default.substring(begining, i));
                            }
                            size = Integer.MAX_VALUE;
                            z = false;
                            String str2 = TypedValues.Custom.S_STRING;
                            if (!z) {
                            }
                            if (zIsRightUnbounded) {
                            }
                            if (size3 == 0) {
                            }
                        }
                        size = size2;
                        z = true;
                        String str22 = TypedValues.Custom.S_STRING;
                        if (!z) {
                        }
                        if (zIsRightUnbounded) {
                        }
                        if (size3 == 0) {
                        }
                    }
                }
                strMo28045default = this.f23495this.mo28045default(d0Var);
                templateSequenceModel = null;
            } catch (u2 unused) {
                h0 h0Var3 = this.f23495this;
                throw new r4(h0Var3, h0Var3.m28055throws(d0Var), "sequence or string or something automatically convertible to string (number, date or boolean)", f23492class, d0Var);
            }
        }
        i1Var = null;
        int size32 = l3Var.size();
        zIsRightUnbounded = l3Var.isRightUnbounded();
        boolean zIsRightAdaptive2 = l3Var.isRightAdaptive();
        if (zIsRightUnbounded) {
        }
        begining = l3Var.getBegining();
        if (begining >= 0) {
        }
    }

    private TemplateModel h(TemplateModel templateModel, String str, d0 d0Var) throws TemplateException {
        if (templateModel instanceof TemplateHashModel) {
            return ((TemplateHashModel) templateModel).get(str);
        }
        throw new l2(this.f23495this, templateModel, d0Var);
    }

    private TemplateModel i(boolean z) {
        return z ? ul2.m8514super(this) < ul2.f6937new ? new Creturn(Collections.EMPTY_LIST, (ObjectWrapper) null) : Cfor.f25213this : TemplateScalarModel.EMPTY_STRING;
    }

    private TemplateModel j(TemplateModelIterator templateModelIterator, l3 l3Var, int i, boolean z) throws k52 {
        int begining = l3Var.getBegining();
        int size = begining + (l3Var.size() - 1);
        boolean zIsRightAdaptive = l3Var.isRightAdaptive();
        boolean zIsRightUnbounded = l3Var.isRightUnbounded();
        if (this.f23493break) {
            Cdo cdo = new Cdo(zIsRightUnbounded, size, zIsRightAdaptive, templateModelIterator, begining);
            return (i == -1 || !z) ? new n1(cdo, true) : new k1(cdo, i, true);
        }
        ArrayList arrayList = i != -1 ? new ArrayList(i) : new ArrayList();
        m(templateModelIterator, begining);
        while (true) {
            if (!zIsRightUnbounded && begining > size) {
                break;
            }
            if (templateModelIterator.hasNext()) {
                arrayList.add(templateModelIterator.next());
                begining++;
            } else if (!zIsRightAdaptive) {
                throw l(begining, size);
            }
        }
        return new Creturn(arrayList, (ObjectWrapper) null);
    }

    private TemplateModel k(TemplateModelIterator templateModelIterator, l3 l3Var, int i) throws TemplateException {
        int begining = l3Var.getBegining();
        int i2 = 0;
        int iMax = Math.max(begining - (l3Var.size() - 1), 0);
        int i3 = (begining - iMax) + 1;
        TemplateModel[] templateModelArr = new TemplateModel[i3];
        int i4 = i3 - 1;
        while (i2 <= begining && templateModelIterator.hasNext()) {
            TemplateModel next = templateModelIterator.next();
            if (i2 >= iMax) {
                templateModelArr[i4] = next;
                i4--;
            }
            i2++;
        }
        if (i4 == -1) {
            return new Creturn(Arrays.asList(templateModelArr), (ObjectWrapper) null);
        }
        throw new nl2(this, "Range top index " + begining + " (0-based) is outside the sliced sequence of length " + i2 + ".");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public vl2 l(int i, int i2) {
        return new vl2(this.f23494goto, "Range end index ", Integer.valueOf(i2), " is out of bounds, as sliced sequence only has ", Integer.valueOf(i), " elements.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(TemplateModelIterator templateModelIterator, int i) throws k52 {
        for (int i2 = 0; i2 < i; i2++) {
            if (!templateModelIterator.hasNext()) {
                throw new vl2(this.f23494goto, "Range start index ", Integer.valueOf(i), " is out of bounds, as the sliced sequence only has ", Integer.valueOf(i2), " elements.");
            }
            templateModelIterator.next();
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "...[...]";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23495this.mo27815for() + "[" + this.f23494goto.mo27815for() + "]";
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return i == 0 ? f3.f23760for : f3.f23782try;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f23495this.mo27817instanceof() && this.f23494goto.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f23495this.m28055throws(d0Var);
        if (templateModelM28055throws == null) {
            if (d0Var.y()) {
                return null;
            }
            throw b1.getInstance(this.f23495this, d0Var);
        }
        TemplateModel templateModelM28055throws2 = this.f23494goto.m28055throws(d0Var);
        if (templateModelM28055throws2 == null) {
            if (d0Var.y()) {
                templateModelM28055throws2 = TemplateScalarModel.EMPTY_STRING;
            } else {
                this.f23494goto.m28052public(null, d0Var);
            }
        }
        TemplateModel templateModel = templateModelM28055throws2;
        if (templateModel instanceof TemplateNumberModel) {
            return f(templateModelM28055throws, this.f23494goto.c(templateModel, d0Var).intValue(), d0Var);
        }
        if (templateModel instanceof TemplateScalarModel) {
            return h(templateModelM28055throws, f0.m28018native((TemplateScalarModel) templateModel, this.f23494goto, d0Var), d0Var);
        }
        if (templateModel instanceof l3) {
            return g(templateModelM28055throws, (l3) templateModel, d0Var);
        }
        throw new r4(this.f23494goto, templateModel, "number, range, or string", new Class[]{TemplateNumberModel.class, TemplateScalarModel.class, k3.class}, d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new b0(this.f23495this.m28053return(str, h0Var, cdo), this.f23494goto.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h0
    /* renamed from: switch */
    public void mo27808switch() {
        this.f23493break = true;
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        return i == 0 ? this.f23495this : this.f23494goto;
    }
}
