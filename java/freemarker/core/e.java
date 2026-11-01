package freemarker.core;

import android.support.v4.az1;
import android.support.v4.bl2;
import android.support.v4.dl2;
import android.support.v4.el2;
import android.support.v4.ez1;
import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.l52;
import android.support.v4.mc;
import android.support.v4.vl2;
import android.support.v4.zk2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.IntermediateStreamOperationLikeBuiltIn;
import freemarker.template.Creturn;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.io.Serializable;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes.dex */
class e {

    /* renamed from: freemarker.core.e$break, reason: invalid class name */
    public static class Cbreak extends IntermediateStreamOperationLikeBuiltIn {

        /* renamed from: freemarker.core.e$break$do, reason: invalid class name */
        public class Cdo implements TemplateModelIterator {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ TemplateModelIterator f23612do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ d0 f23613for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ IntermediateStreamOperationLikeBuiltIn.ElementTransformer f23614if;

            public Cdo(TemplateModelIterator templateModelIterator, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) {
                this.f23612do = templateModelIterator;
                this.f23614if = elementTransformer;
                this.f23613for = d0Var;
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() throws k52 {
                return this.f23612do.hasNext();
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                try {
                    return Cbreak.this.E(this.f23612do, this.f23614if, this.f23613for);
                } catch (TemplateException e) {
                    throw new vl2(e, this.f23613for, "Failed to transform element");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TemplateModel E(TemplateModelIterator templateModelIterator, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            TemplateModel templateModelTransformElement = elementTransformer.transformElement(templateModelIterator.next(), d0Var);
            if (templateModelTransformElement != null) {
                return templateModelTransformElement;
            }
            throw new vl2(B(), d0Var, "The element mapper function has returned no return value (has returned null).");
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn
        public TemplateModel z(TemplateModelIterator templateModelIterator, TemplateModel templateModel, boolean z, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            if (C()) {
                Cdo cdo = new Cdo(templateModelIterator, elementTransformer, d0Var);
                return templateModel instanceof TemplateCollectionModelEx ? new l1(cdo, (TemplateCollectionModelEx) templateModel, z) : templateModel instanceof TemplateSequenceModel ? new m1(cdo, (TemplateSequenceModel) templateModel) : new n1(cdo, z);
            }
            if (!z) {
                throw b5.m27871return(this);
            }
            ArrayList arrayList = new ArrayList();
            while (templateModelIterator.hasNext()) {
                arrayList.add(E(templateModelIterator, elementTransformer, d0Var));
            }
            return new l52(arrayList);
        }
    }

    /* renamed from: freemarker.core.e$case, reason: invalid class name */
    public static class Ccase extends Cif {

        /* renamed from: freemarker.core.e$case$do, reason: invalid class name */
        public class Cdo implements TemplateModelIterator {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ d0 f23616case;

            /* renamed from: do, reason: not valid java name */
            public boolean f23617do;

            /* renamed from: for, reason: not valid java name */
            public boolean f23619for;

            /* renamed from: if, reason: not valid java name */
            public TemplateModel f23620if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ TemplateModelIterator f23621new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ IntermediateStreamOperationLikeBuiltIn.ElementTransformer f23622try;

            public Cdo(TemplateModelIterator templateModelIterator, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) {
                this.f23621new = templateModelIterator;
                this.f23622try = elementTransformer;
                this.f23616case = d0Var;
            }

            /* renamed from: do, reason: not valid java name */
            private void m27961do() throws k52 {
                if (this.f23617do) {
                    return;
                }
                boolean z = false;
                do {
                    if (this.f23621new.hasNext()) {
                        TemplateModel next = this.f23621new.next();
                        try {
                            if (Ccase.this.D(next, this.f23622try, this.f23616case)) {
                                this.f23620if = next;
                            }
                        } catch (TemplateException e) {
                            throw new vl2(e, this.f23616case, "Failed to transform element");
                        }
                    } else {
                        this.f23619for = true;
                        this.f23620if = null;
                    }
                    z = true;
                } while (!z);
                this.f23617do = true;
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() throws k52 {
                m27961do();
                return !this.f23619for;
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                m27961do();
                if (this.f23619for) {
                    throw new IllegalStateException("next() was called when hasNext() is false");
                }
                this.f23617do = false;
                return this.f23620if;
            }
        }

        public Ccase() {
            super();
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn
        public TemplateModel z(TemplateModelIterator templateModelIterator, TemplateModel templateModel, boolean z, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            if (C()) {
                return new n1(new Cdo(templateModelIterator, elementTransformer, d0Var), z);
            }
            if (!z) {
                throw b5.m27871return(this);
            }
            ArrayList arrayList = new ArrayList();
            while (templateModelIterator.hasNext()) {
                TemplateModel next = templateModelIterator.next();
                if (D(next, elementTransformer, d0Var)) {
                    arrayList.add(next);
                }
            }
            return new l52(arrayList);
        }
    }

    /* renamed from: freemarker.core.e$catch, reason: invalid class name */
    public static class Ccatch extends Cfor {
        public Ccatch() {
            super(4);
        }
    }

    /* renamed from: freemarker.core.e$class, reason: invalid class name */
    public static class Cclass extends Cfor {
        public Cclass() {
            super(3);
        }
    }

    /* renamed from: freemarker.core.e$const, reason: invalid class name */
    public static class Cconst extends Ccontinue {

        /* renamed from: freemarker.core.e$const$do, reason: invalid class name */
        public static class Cdo implements TemplateSequenceModel {

            /* renamed from: do, reason: not valid java name */
            private final TemplateSequenceModel f23623do;

            public Cdo(TemplateSequenceModel templateSequenceModel) {
                this.f23623do = templateSequenceModel;
            }

            @Override // freemarker.template.TemplateSequenceModel
            public TemplateModel get(int i) throws k52 {
                return this.f23623do.get((r0.size() - 1) - i);
            }

            @Override // freemarker.template.TemplateSequenceModel
            public int size() throws k52 {
                return this.f23623do.size();
            }
        }

        @Override // freemarker.core.Ccontinue
        public TemplateModel r(TemplateSequenceModel templateSequenceModel) {
            return templateSequenceModel instanceof Cdo ? ((Cdo) templateSequenceModel).f23623do : new Cdo(templateSequenceModel);
        }
    }

    /* renamed from: freemarker.core.e$else, reason: invalid class name */
    public static class Celse extends Creturn {
        private TemplateModel r(TemplateCollectionModel templateCollectionModel) throws k52 {
            TemplateModelIterator it = templateCollectionModel.iterator();
            if (it.hasNext()) {
                return it.next();
            }
            return null;
        }

        private TemplateModel s(TemplateSequenceModel templateSequenceModel) throws k52 {
            if (templateSequenceModel.size() == 0) {
                return null;
            }
            return templateSequenceModel.get(0);
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if ((templateModelM28055throws instanceof TemplateSequenceModel) && !e.m27960try(templateModelM28055throws)) {
                return s((TemplateSequenceModel) templateModelM28055throws);
            }
            if (templateModelM28055throws instanceof TemplateCollectionModel) {
                return r((TemplateCollectionModel) templateModelM28055throws);
            }
            throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
        }

        @Override // freemarker.core.Creturn
        public void q(h0 h0Var) {
            super.q(h0Var);
            h0Var.mo27808switch();
        }
    }

    /* renamed from: freemarker.core.e$final, reason: invalid class name */
    public static class Cfinal extends Cvolatile {

        /* renamed from: freemarker.core.e$final$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private TemplateCollectionModel f23624do;

            /* renamed from: if, reason: not valid java name */
            private d0 f23626if;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cfinal.this.f(list, 1);
                int i = 0;
                TemplateModel templateModel = (TemplateModel) list.get(0);
                TemplateModelIterator it = this.f23624do.iterator();
                while (it.hasNext()) {
                    if (e.m27955case(i, it.next(), templateModel, this.f23626if)) {
                        return TemplateBooleanModel.TRUE;
                    }
                    i++;
                }
                return TemplateBooleanModel.FALSE;
            }

            private Cdo(TemplateCollectionModel templateCollectionModel, d0 d0Var) {
                this.f23624do = templateCollectionModel;
                this.f23626if = d0Var;
            }
        }

        /* renamed from: freemarker.core.e$final$if, reason: invalid class name */
        public class Cif implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private TemplateSequenceModel f23627do;

            /* renamed from: if, reason: not valid java name */
            private d0 f23629if;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cfinal.this.f(list, 1);
                TemplateModel templateModel = (TemplateModel) list.get(0);
                int size = this.f23627do.size();
                for (int i = 0; i < size; i++) {
                    if (e.m27955case(i, this.f23627do.get(i), templateModel, this.f23629if)) {
                        return TemplateBooleanModel.TRUE;
                    }
                }
                return TemplateBooleanModel.FALSE;
            }

            private Cif(TemplateSequenceModel templateSequenceModel, d0 d0Var) {
                this.f23627do = templateSequenceModel;
                this.f23629if = d0Var;
            }
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if ((templateModelM28055throws instanceof TemplateSequenceModel) && !e.m27960try(templateModelM28055throws)) {
                return new Cif((TemplateSequenceModel) templateModelM28055throws, d0Var);
            }
            if (templateModelM28055throws instanceof TemplateCollectionModel) {
                return new Cdo((TemplateCollectionModel) templateModelM28055throws, d0Var);
            }
            throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
        }

        @Override // freemarker.core.Cvolatile
        public void r() {
            this.f24114goto.mo27808switch();
        }
    }

    /* renamed from: freemarker.core.e$for, reason: invalid class name */
    public static abstract class Cfor extends Creturn {

        /* renamed from: final, reason: not valid java name */
        private final int f23630final;

        public Cfor(int i) {
            this.f23630final = i;
        }

        private TemplateModel r(TemplateCollectionModel templateCollectionModel, d0 d0Var) throws TemplateException {
            TemplateModelIterator it = templateCollectionModel.iterator();
            TemplateModel templateModel = null;
            while (it.hasNext()) {
                TemplateModel next = it.next();
                if (next != null && (templateModel == null || f0.m28008catch(next, null, this.f23630final, null, templateModel, null, this, true, false, false, false, d0Var))) {
                    templateModel = next;
                }
            }
            return templateModel;
        }

        private TemplateModel s(TemplateSequenceModel templateSequenceModel, d0 d0Var) throws TemplateException {
            TemplateModel templateModel = null;
            for (int i = 0; i < templateSequenceModel.size(); i++) {
                TemplateModel templateModel2 = templateSequenceModel.get(i);
                if (templateModel2 != null && (templateModel == null || f0.m28008catch(templateModel2, null, this.f23630final, null, templateModel, null, this, true, false, false, false, d0Var))) {
                    templateModel = templateModel2;
                }
            }
            return templateModel;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateCollectionModel) {
                e.m27959new(templateModelM28055throws);
                return r((TemplateCollectionModel) templateModelM28055throws, d0Var);
            }
            if (templateModelM28055throws instanceof TemplateSequenceModel) {
                return s((TemplateSequenceModel) templateModelM28055throws, d0Var);
            }
            throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
        }

        @Override // freemarker.core.Creturn
        public void q(h0 h0Var) {
            super.q(h0Var);
            h0Var.mo27808switch();
        }
    }

    /* renamed from: freemarker.core.e$goto, reason: invalid class name */
    public static class Cgoto extends Cvolatile {

        /* renamed from: freemarker.core.e$goto$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final d0 f23631do;

            /* renamed from: if, reason: not valid java name */
            private final TemplateCollectionModel f23633if;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cgoto.this.g(list, 1, 3);
                String strK = Cgoto.this.k(list, 0);
                String strJ = Cgoto.this.j(list, 1);
                String strJ2 = Cgoto.this.j(list, 2);
                StringBuilder sb = new StringBuilder();
                TemplateModelIterator it = this.f23633if.iterator();
                boolean z = false;
                int i = 0;
                while (it.hasNext()) {
                    TemplateModel next = it.next();
                    if (next != null) {
                        if (z) {
                            sb.append(strK);
                        } else {
                            z = true;
                        }
                        try {
                            sb.append(f0.m28012else(next, null, null, this.f23631do));
                        } catch (TemplateException e) {
                            throw new vl2(e, "\"?", Cgoto.this.f24115this, "\" failed at index ", Integer.valueOf(i), " with this error:\n\n", b5.f23525try, new el2(e), b5.f23520case);
                        }
                    }
                    i++;
                }
                if (z) {
                    if (strJ2 != null) {
                        sb.append(strJ2);
                    }
                } else if (strJ != null) {
                    sb.append(strJ);
                }
                return new ez1(sb.toString());
            }

            private Cdo(d0 d0Var, TemplateCollectionModel templateCollectionModel) {
                this.f23631do = d0Var;
                this.f23633if = templateCollectionModel;
            }
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateCollectionModel) {
                e.m27959new(templateModelM28055throws);
                return new Cdo(d0Var, (TemplateCollectionModel) templateModelM28055throws);
            }
            if (templateModelM28055throws instanceof TemplateSequenceModel) {
                return new Cdo(d0Var, new m((TemplateSequenceModel) templateModelM28055throws));
            }
            throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
        }

        @Override // freemarker.core.Cvolatile
        public void r() {
            this.f24114goto.mo27808switch();
        }
    }

    /* renamed from: freemarker.core.e$if, reason: invalid class name */
    public static abstract class Cif extends IntermediateStreamOperationLikeBuiltIn {
        private Cif() {
        }

        public final boolean D(TemplateModel templateModel, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            TemplateModel templateModelTransformElement = elementTransformer.transformElement(templateModel, d0Var);
            if (templateModelTransformElement instanceof TemplateBooleanModel) {
                return ((TemplateBooleanModel) templateModelTransformElement).getAsBoolean();
            }
            if (templateModelTransformElement == null) {
                throw new vl2(B(), d0Var, "The filter expression has returned no value (has returned null), rather than a boolean.");
            }
            throw new vl2(B(), d0Var, "The filter expression had to return a boolean value, but it returned ", new zk2(new bl2(templateModelTransformElement)), " instead.");
        }
    }

    /* renamed from: freemarker.core.e$import, reason: invalid class name */
    public static class Cimport extends Cwhile {

        /* renamed from: freemarker.core.e$import$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            public TemplateSequenceModel f23634do;

            public Cdo(TemplateSequenceModel templateSequenceModel) {
                this.f23634do = templateSequenceModel;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                String[] strArr;
                if (list.size() < 1) {
                    throw b5.m27860final("?" + Cimport.this.f24115this, list.size(), 1);
                }
                Object obj = list.get(0);
                if (obj instanceof TemplateScalarModel) {
                    strArr = new String[]{((TemplateScalarModel) obj).getAsString()};
                } else {
                    if (!(obj instanceof TemplateSequenceModel)) {
                        throw new vl2("The argument to ?", Cimport.this.f24115this, "(key) must be a string (the name of the subvariable), or a sequence of strings (the \"path\" to the subvariable).");
                    }
                    TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) obj;
                    int size = templateSequenceModel.size();
                    String[] strArr2 = new String[size];
                    for (int i = 0; i < size; i++) {
                        TemplateModel templateModel = templateSequenceModel.get(i);
                        try {
                            strArr2[i] = ((TemplateScalarModel) templateModel).getAsString();
                        } catch (ClassCastException unused) {
                            if (!(templateModel instanceof TemplateScalarModel)) {
                                throw new vl2("The argument to ?", Cimport.this.f24115this, "(key), when it's a sequence, must be a sequence of strings, but the item at index ", Integer.valueOf(i), " is not a string.");
                            }
                        }
                    }
                    strArr = strArr2;
                }
                return Cwhile.t(this.f23634do, strArr);
            }
        }

        @Override // freemarker.core.e.Cwhile, freemarker.core.Ccontinue
        public TemplateModel r(TemplateSequenceModel templateSequenceModel) {
            return new Cdo(templateSequenceModel);
        }
    }

    /* renamed from: freemarker.core.e$native, reason: invalid class name */
    public static class Cnative extends Cif {

        /* renamed from: freemarker.core.e$native$do, reason: invalid class name */
        public class Cdo implements TemplateModelIterator {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ d0 f23636case;

            /* renamed from: do, reason: not valid java name */
            public boolean f23637do;

            /* renamed from: for, reason: not valid java name */
            public boolean f23639for;

            /* renamed from: if, reason: not valid java name */
            public TemplateModel f23640if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ TemplateModelIterator f23641new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ IntermediateStreamOperationLikeBuiltIn.ElementTransformer f23642try;

            public Cdo(TemplateModelIterator templateModelIterator, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) {
                this.f23641new = templateModelIterator;
                this.f23642try = elementTransformer;
                this.f23636case = d0Var;
            }

            /* renamed from: do, reason: not valid java name */
            private void m27963do() throws k52 {
                if (this.f23637do) {
                    return;
                }
                if (this.f23641new.hasNext()) {
                    TemplateModel next = this.f23641new.next();
                    try {
                        if (Cnative.this.D(next, this.f23642try, this.f23636case)) {
                            this.f23640if = next;
                        } else {
                            this.f23639for = true;
                            this.f23640if = null;
                        }
                    } catch (TemplateException e) {
                        throw new vl2(e, this.f23636case, "Failed to transform element");
                    }
                } else {
                    this.f23639for = true;
                    this.f23640if = null;
                }
                this.f23637do = true;
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() throws k52 {
                m27963do();
                return !this.f23639for;
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                m27963do();
                if (this.f23639for) {
                    throw new IllegalStateException("next() was called when hasNext() is false");
                }
                this.f23637do = false;
                return this.f23640if;
            }
        }

        public Cnative() {
            super();
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn
        public TemplateModel z(TemplateModelIterator templateModelIterator, TemplateModel templateModel, boolean z, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            if (C()) {
                return new n1(new Cdo(templateModelIterator, elementTransformer, d0Var), z);
            }
            if (!z) {
                throw b5.m27871return(this);
            }
            ArrayList arrayList = new ArrayList();
            while (templateModelIterator.hasNext()) {
                TemplateModel next = templateModelIterator.next();
                if (!D(next, elementTransformer, d0Var)) {
                    break;
                }
                arrayList.add(next);
            }
            return new l52(arrayList);
        }
    }

    /* renamed from: freemarker.core.e$new, reason: invalid class name */
    public static class Cnew extends Ccontinue {

        /* renamed from: freemarker.core.e$new$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final TemplateSequenceModel f23643do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cnew.this.g(list, 1, 2);
                int iIntValue = Cnew.this.h(list, 0).intValue();
                if (iIntValue < 1) {
                    throw new vl2("The 1st argument to ?", Cnew.this.f24115this, " (...) must be at least 1.");
                }
                return new Cif(this.f23643do, iIntValue, list.size() > 1 ? (TemplateModel) list.get(1) : null);
            }

            private Cdo(TemplateSequenceModel templateSequenceModel) {
                this.f23643do = templateSequenceModel;
            }
        }

        /* renamed from: freemarker.core.e$new$if, reason: invalid class name */
        public static class Cif implements TemplateSequenceModel {

            /* renamed from: do, reason: not valid java name */
            private final TemplateSequenceModel f23645do;

            /* renamed from: for, reason: not valid java name */
            private final TemplateModel f23646for;

            /* renamed from: if, reason: not valid java name */
            private final int f23647if;

            /* renamed from: new, reason: not valid java name */
            private final int f23648new;

            /* renamed from: freemarker.core.e$new$if$do, reason: invalid class name */
            public class Cdo implements TemplateSequenceModel {

                /* renamed from: do, reason: not valid java name */
                private final int f23649do;

                /* renamed from: if, reason: not valid java name */
                public final /* synthetic */ int f23651if;

                public Cdo(int i) {
                    this.f23651if = i;
                    this.f23649do = i * Cif.this.f23647if;
                }

                @Override // freemarker.template.TemplateSequenceModel
                public TemplateModel get(int i) throws k52 {
                    int i2 = this.f23649do + i;
                    if (i2 < Cif.this.f23645do.size()) {
                        return Cif.this.f23645do.get(i2);
                    }
                    if (i2 < Cif.this.f23648new * Cif.this.f23647if) {
                        return Cif.this.f23646for;
                    }
                    return null;
                }

                @Override // freemarker.template.TemplateSequenceModel
                public int size() throws k52 {
                    return (Cif.this.f23646for != null || this.f23651if + 1 < Cif.this.f23648new) ? Cif.this.f23647if : Cif.this.f23645do.size() - this.f23649do;
                }
            }

            @Override // freemarker.template.TemplateSequenceModel
            public TemplateModel get(int i) throws k52 {
                if (i >= this.f23648new) {
                    return null;
                }
                return new Cdo(i);
            }

            @Override // freemarker.template.TemplateSequenceModel
            public int size() throws k52 {
                return this.f23648new;
            }

            private Cif(TemplateSequenceModel templateSequenceModel, int i, TemplateModel templateModel) throws k52 {
                this.f23645do = templateSequenceModel;
                this.f23647if = i;
                this.f23646for = templateModel;
                this.f23648new = ((templateSequenceModel.size() + i) - 1) / i;
            }
        }

        @Override // freemarker.core.Ccontinue
        public TemplateModel r(TemplateSequenceModel templateSequenceModel) throws k52 {
            return new Cdo(templateSequenceModel);
        }
    }

    /* renamed from: freemarker.core.e$super, reason: invalid class name */
    public static class Csuper extends Cvolatile {

        /* renamed from: final, reason: not valid java name */
        private boolean f23652final;

        /* renamed from: freemarker.core.e$super$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            public final TemplateSequenceModel f23653do;

            /* renamed from: for, reason: not valid java name */
            public final d0 f23654for;

            /* renamed from: if, reason: not valid java name */
            public final TemplateCollectionModel f23655if;

            /* renamed from: case, reason: not valid java name */
            private int m27968case(TemplateModel templateModel, int i, int i2) throws k52 {
                if (Csuper.this.f23652final) {
                    while (i < i2) {
                        if (e.m27955case(i, this.f23653do.get(i), templateModel, this.f23654for)) {
                            return i;
                        }
                        i++;
                    }
                    return -1;
                }
                while (i >= 0) {
                    if (e.m27955case(i, this.f23653do.get(i), templateModel, this.f23654for)) {
                        return i;
                    }
                    i--;
                }
                return -1;
            }

            /* renamed from: try, reason: not valid java name */
            private int m27969try(TemplateModel templateModel, int i) throws k52 {
                int size = this.f23653do.size();
                if (!Csuper.this.f23652final) {
                    if (i >= size) {
                        i = size - 1;
                    }
                    if (i < 0) {
                        return -1;
                    }
                } else {
                    if (i >= size) {
                        return -1;
                    }
                    if (i < 0) {
                        i = 0;
                    }
                }
                return m27968case(templateModel, i, size);
            }

            /* renamed from: do, reason: not valid java name */
            public int m27970do(TemplateModel templateModel) throws k52 {
                return m27971for(templateModel, 0, Integer.MAX_VALUE);
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public final Object exec(List list) throws k52 {
                int iM27973new;
                int size = list.size();
                Csuper.this.e(size, 1, 2);
                TemplateModel templateModel = (TemplateModel) list.get(0);
                if (size > 1) {
                    int iIntValue = Csuper.this.h(list, 1).intValue();
                    iM27973new = this.f23653do != null ? m27969try(templateModel, iIntValue) : m27972if(templateModel, iIntValue);
                } else {
                    iM27973new = this.f23653do != null ? m27973new(templateModel) : m27970do(templateModel);
                }
                return iM27973new == -1 ? freemarker.template.utility.Cfor.f25205case : new az1(iM27973new);
            }

            /* renamed from: for, reason: not valid java name */
            public int m27971for(TemplateModel templateModel, int i, int i2) throws k52 {
                int i3 = -1;
                if (i2 < 0) {
                    return -1;
                }
                TemplateModelIterator it = this.f23655if.iterator();
                for (int i4 = 0; it.hasNext() && i4 <= i2; i4++) {
                    TemplateModel next = it.next();
                    if (i4 >= i && e.m27955case(i4, next, templateModel, this.f23654for)) {
                        if (Csuper.this.f23652final) {
                            return i4;
                        }
                        i3 = i4;
                    }
                }
                return i3;
            }

            /* renamed from: if, reason: not valid java name */
            public int m27972if(TemplateModel templateModel, int i) throws k52 {
                return Csuper.this.f23652final ? m27971for(templateModel, i, Integer.MAX_VALUE) : m27971for(templateModel, 0, i);
            }

            /* renamed from: new, reason: not valid java name */
            public int m27973new(TemplateModel templateModel) throws k52 {
                int size = this.f23653do.size();
                return m27968case(templateModel, Csuper.this.f23652final ? 0 : size - 1, size);
            }

            private Cdo(d0 d0Var) throws TemplateException {
                TemplateModel templateModelM28055throws = Csuper.this.f24114goto.m28055throws(d0Var);
                TemplateCollectionModel templateCollectionModel = null;
                TemplateSequenceModel templateSequenceModel = (!(templateModelM28055throws instanceof TemplateSequenceModel) || e.m27960try(templateModelM28055throws)) ? null : (TemplateSequenceModel) templateModelM28055throws;
                this.f23653do = templateSequenceModel;
                if (templateSequenceModel == null && (templateModelM28055throws instanceof TemplateCollectionModel)) {
                    templateCollectionModel = (TemplateCollectionModel) templateModelM28055throws;
                }
                this.f23655if = templateCollectionModel;
                if (templateSequenceModel == null && templateCollectionModel == null) {
                    throw new t2(Csuper.this.f24114goto, templateModelM28055throws, d0Var);
                }
                this.f23654for = d0Var;
            }
        }

        public Csuper(boolean z) {
            this.f23652final = z;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return new Cdo(d0Var);
        }

        @Override // freemarker.core.Cvolatile
        public void r() {
            this.f24114goto.mo27808switch();
        }
    }

    /* renamed from: freemarker.core.e$this, reason: invalid class name */
    public static class Cthis extends Ccontinue {
        @Override // freemarker.core.Ccontinue
        public TemplateModel r(TemplateSequenceModel templateSequenceModel) throws k52 {
            int size = templateSequenceModel.size();
            if (size == 0) {
                return null;
            }
            return templateSequenceModel.get(size - 1);
        }
    }

    /* renamed from: freemarker.core.e$throw, reason: invalid class name */
    public static class Cthrow extends Creturn {

        /* renamed from: final, reason: not valid java name */
        private boolean f23657final;

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if ((templateModelM28055throws instanceof TemplateSequenceModel) && !e.m27960try(templateModelM28055throws)) {
                return templateModelM28055throws;
            }
            if (!(templateModelM28055throws instanceof TemplateCollectionModel)) {
                throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
            }
            TemplateCollectionModel templateCollectionModel = (TemplateCollectionModel) templateModelM28055throws;
            if (this.f23657final) {
                return templateCollectionModel instanceof i1 ? ((i1) templateCollectionModel).m28082new() : templateCollectionModel instanceof TemplateCollectionModelEx ? new l1(new o1(templateCollectionModel), (TemplateCollectionModelEx) templateCollectionModel, true) : new n1(new o1(templateCollectionModel), true);
            }
            Creturn creturn = templateCollectionModel instanceof TemplateCollectionModelEx ? new Creturn(((TemplateCollectionModelEx) templateCollectionModel).size()) : new Creturn();
            TemplateModelIterator it = templateCollectionModel.iterator();
            while (it.hasNext()) {
                creturn.add(it.next());
            }
            return creturn;
        }

        @Override // freemarker.core.Creturn
        public void q(h0 h0Var) {
            super.q(h0Var);
            h0Var.mo27808switch();
        }

        @Override // freemarker.core.h0
        /* renamed from: switch */
        public void mo27808switch() {
            this.f23657final = true;
        }
    }

    /* renamed from: freemarker.core.e$try, reason: invalid class name */
    public static class Ctry extends Cif {

        /* renamed from: freemarker.core.e$try$do, reason: invalid class name */
        public class Cdo implements TemplateModelIterator {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ IntermediateStreamOperationLikeBuiltIn.ElementTransformer f23658case;

            /* renamed from: do, reason: not valid java name */
            public boolean f23659do = true;

            /* renamed from: else, reason: not valid java name */
            public final /* synthetic */ d0 f23660else;

            /* renamed from: for, reason: not valid java name */
            public TemplateModel f23661for;

            /* renamed from: if, reason: not valid java name */
            public boolean f23663if;

            /* renamed from: new, reason: not valid java name */
            public boolean f23664new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ TemplateModelIterator f23665try;

            public Cdo(TemplateModelIterator templateModelIterator, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) {
                this.f23665try = templateModelIterator;
                this.f23658case = elementTransformer;
                this.f23660else = d0Var;
            }

            /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
            
                r7.f23661for = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
            
                r0 = true;
             */
            /* renamed from: do, reason: not valid java name */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            private void m27974do() throws k52 {
                boolean z;
                if (this.f23663if) {
                    return;
                }
                if (this.f23659do) {
                    while (true) {
                        if (!this.f23665try.hasNext()) {
                            z = false;
                            break;
                        }
                        TemplateModel next = this.f23665try.next();
                        try {
                            if (!Ctry.this.D(next, this.f23658case, this.f23660else)) {
                                break;
                            }
                        } catch (TemplateException e) {
                            throw new vl2(e, this.f23660else, "Failed to transform element");
                        }
                    }
                    this.f23659do = false;
                    if (!z) {
                        this.f23664new = true;
                        this.f23661for = null;
                    }
                } else if (this.f23665try.hasNext()) {
                    this.f23661for = this.f23665try.next();
                } else {
                    this.f23664new = true;
                    this.f23661for = null;
                }
                this.f23663if = true;
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() throws k52 {
                m27974do();
                return !this.f23664new;
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                m27974do();
                if (this.f23664new) {
                    throw new IllegalStateException("next() was called when hasNext() is false");
                }
                this.f23663if = false;
                return this.f23661for;
            }
        }

        public Ctry() {
            super();
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn
        public TemplateModel z(TemplateModelIterator templateModelIterator, TemplateModel templateModel, boolean z, IntermediateStreamOperationLikeBuiltIn.ElementTransformer elementTransformer, d0 d0Var) throws TemplateException {
            if (C()) {
                return new n1(new Cdo(templateModelIterator, elementTransformer, d0Var), z);
            }
            if (!z) {
                throw b5.m27871return(this);
            }
            ArrayList arrayList = new ArrayList();
            while (true) {
                if (!templateModelIterator.hasNext()) {
                    break;
                }
                TemplateModel next = templateModelIterator.next();
                if (!D(next, elementTransformer, d0Var)) {
                    arrayList.add(next);
                    while (templateModelIterator.hasNext()) {
                        arrayList.add(templateModelIterator.next());
                    }
                }
            }
            return new l52(arrayList);
        }
    }

    /* renamed from: freemarker.core.e$while, reason: invalid class name */
    public static class Cwhile extends Ccontinue {

        /* renamed from: final, reason: not valid java name */
        public static final int f23666final = 0;

        /* renamed from: import, reason: not valid java name */
        public static final int f23667import = 4;

        /* renamed from: super, reason: not valid java name */
        public static final int f23668super = 1;

        /* renamed from: throw, reason: not valid java name */
        public static final int f23669throw = 2;

        /* renamed from: while, reason: not valid java name */
        public static final int f23670while = 3;

        /* renamed from: freemarker.core.e$while$do, reason: invalid class name */
        public static class Cdo implements Comparator, Serializable {
            private Cdo() {
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                boolean zBooleanValue = ((Boolean) ((Cfor) obj).f23671do).booleanValue();
                boolean zBooleanValue2 = ((Boolean) ((Cfor) obj2).f23671do).booleanValue();
                return zBooleanValue ? !zBooleanValue2 ? 1 : 0 : zBooleanValue2 ? -1 : 0;
            }
        }

        /* renamed from: freemarker.core.e$while$for, reason: invalid class name */
        public static class Cfor {

            /* renamed from: do, reason: not valid java name */
            private Object f23671do;

            /* renamed from: if, reason: not valid java name */
            private Object f23672if;

            private Cfor(Object obj, Object obj2) {
                this.f23671do = obj;
                this.f23672if = obj2;
            }
        }

        /* renamed from: freemarker.core.e$while$if, reason: invalid class name */
        public static class Cif implements Comparator, Serializable {
            private Cif() {
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return ((Date) ((Cfor) obj).f23671do).compareTo((Date) ((Cfor) obj2).f23671do);
            }
        }

        /* renamed from: freemarker.core.e$while$new, reason: invalid class name */
        public static class Cnew implements Comparator {

            /* renamed from: do, reason: not valid java name */
            private Collator f23673do;

            public Cnew(Collator collator) {
                this.f23673do = collator;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                return this.f23673do.compare(((Cfor) obj).f23671do, ((Cfor) obj2).f23671do);
            }
        }

        /* renamed from: freemarker.core.e$while$try, reason: invalid class name */
        public static class Ctry implements Comparator {

            /* renamed from: do, reason: not valid java name */
            private freemarker.core.Celse f23674do;

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                try {
                    return this.f23674do.mo27996new((Number) ((Cfor) obj).f23671do, (Number) ((Cfor) obj2).f23671do);
                } catch (TemplateException e) {
                    throw new ClassCastException("Failed to compare numbers: " + e);
                }
            }

            private Ctry(freemarker.core.Celse celse) {
                this.f23674do = celse;
            }
        }

        public static k52 s(int i, String str, String str2, int i2, TemplateModel templateModel) {
            String str3;
            String str4;
            if (i == 0) {
                str3 = ES6Iterator.VALUE_PROPERTY;
                str4 = "values";
            } else {
                str3 = "key value";
                str4 = "key values";
            }
            return new vl2(v(i, i2), "All ", str4, " in the sequence must be ", str2, ", because the first ", str3, " was that. However, the ", str3, " of the current item isn't a ", str, " but a ", new bl2(templateModel), ".");
        }

        public static TemplateSequenceModel t(TemplateSequenceModel templateSequenceModel, String[] strArr) throws k52 {
            int size = templateSequenceModel.size();
            if (size == 0) {
                return templateSequenceModel;
            }
            ArrayList arrayList = new ArrayList(size);
            int length = strArr == null ? 0 : strArr.length;
            Comparator cdo = null;
            char c = 0;
            for (int i = 0; i < size; i++) {
                TemplateModel templateModel = templateSequenceModel.get(i);
                TemplateModel templateModel2 = templateModel;
                for (int i2 = 0; i2 < length; i2++) {
                    try {
                        templateModel2 = ((TemplateHashModel) templateModel2).get(strArr[i2]);
                        if (templateModel2 == null) {
                            throw new vl2(v(length, i), "The " + freemarker.template.utility.Csuper.m29330synchronized(strArr[i2]), " subvariable was null or missing.");
                        }
                    } catch (ClassCastException e) {
                        if (templateModel2 instanceof TemplateHashModel) {
                            throw e;
                        }
                        Object[] objArr = new Object[6];
                        objArr[0] = v(length, i);
                        objArr[1] = i2 == 0 ? "Sequence items must be hashes when using ?sort_by. " : "The " + freemarker.template.utility.Csuper.m29330synchronized(strArr[i2 - 1]);
                        objArr[2] = " subvariable is not a hash, so ?sort_by ";
                        objArr[3] = "can't proceed with getting the ";
                        objArr[4] = new fl2(strArr[i2]);
                        objArr[5] = " subvariable.";
                        throw new vl2(objArr);
                    }
                }
                if (c == 0) {
                    if (templateModel2 instanceof TemplateScalarModel) {
                        cdo = new Cnew(d0.w1().t1());
                        c = 1;
                    } else if (templateModel2 instanceof TemplateNumberModel) {
                        cdo = new Ctry(d0.w1().getArithmeticEngine());
                        c = 2;
                    } else {
                        if (templateModel2 instanceof TemplateDateModel) {
                            cdo = new Cif();
                            c = 3;
                        } else {
                            if (!(templateModel2 instanceof TemplateBooleanModel)) {
                                throw new vl2(v(length, i), "Values used for sorting must be numbers, strings, date/times or booleans.");
                            }
                            cdo = new Cdo();
                            c = 4;
                        }
                    }
                }
                if (c == 1) {
                    try {
                        arrayList.add(new Cfor(((TemplateScalarModel) templateModel2).getAsString(), templateModel));
                    } catch (ClassCastException e2) {
                        if (templateModel2 instanceof TemplateScalarModel) {
                            throw e2;
                        }
                        throw s(length, TypedValues.Custom.S_STRING, "strings", i, templateModel2);
                    }
                } else if (c == 2) {
                    try {
                        arrayList.add(new Cfor(((TemplateNumberModel) templateModel2).getAsNumber(), templateModel));
                    } catch (ClassCastException unused) {
                        if (!(templateModel2 instanceof TemplateNumberModel)) {
                            throw s(length, "number", "numbers", i, templateModel2);
                        }
                    }
                } else if (c == 3) {
                    try {
                        arrayList.add(new Cfor(((TemplateDateModel) templateModel2).getAsDate(), templateModel));
                    } catch (ClassCastException unused2) {
                        if (!(templateModel2 instanceof TemplateDateModel)) {
                            throw s(length, "date/time", "date/times", i, templateModel2);
                        }
                    }
                } else {
                    if (c != 4) {
                        throw new mc("Unexpected key type");
                    }
                    try {
                        arrayList.add(new Cfor(Boolean.valueOf(((TemplateBooleanModel) templateModel2).getAsBoolean()), templateModel));
                    } catch (ClassCastException unused3) {
                        if (!(templateModel2 instanceof TemplateBooleanModel)) {
                            throw s(length, TypedValues.Custom.S_BOOLEAN, "booleans", i, templateModel2);
                        }
                    }
                }
            }
            try {
                Collections.sort(arrayList, cdo);
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.set(i3, ((Cfor) arrayList.get(i3)).f23672if);
                }
                return new l52(arrayList);
            } catch (Exception e3) {
                throw new vl2(e3, u(length), "Unexpected error while sorting:" + e3);
            }
        }

        public static Object[] u(int i) {
            Object[] objArr = new Object[2];
            objArr[0] = i == 0 ? "?sort" : "?sort_by(...)";
            objArr[1] = " failed: ";
            return objArr;
        }

        public static Object[] v(int i, int i2) {
            Object[] objArr = new Object[4];
            objArr[0] = i == 0 ? "?sort" : "?sort_by(...)";
            objArr[1] = " failed at sequence index ";
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = i2 == 0 ? ": " : " (0-based): ";
            return objArr;
        }

        @Override // freemarker.core.Ccontinue
        public TemplateModel r(TemplateSequenceModel templateSequenceModel) throws k52 {
            return t(templateSequenceModel, null);
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static boolean m27955case(int i, TemplateModel templateModel, TemplateModel templateModel2, d0 d0Var) throws k52 {
        try {
            return f0.m28008catch(templateModel, null, 1, null, templateModel2, null, null, false, true, true, true, d0Var);
        } catch (TemplateException e) {
            throw new vl2(e, "This error has occurred when comparing sequence item at 0-based index ", Integer.valueOf(i), " to the searched item:\n", new dl2(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static void m27959new(TemplateModel templateModel) throws k52 {
        if (templateModel instanceof q3) {
            throw new vl2("The input sequence is a right-unbounded numerical range, thus, it's infinitely long, and can't processed with this built-in.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static boolean m27960try(TemplateModel templateModel) {
        return (templateModel instanceof freemarker.ext.beans.Csuper) && !((freemarker.ext.beans.Csuper) templateModel).m28675break();
    }
}
