package freemarker.template.utility;

import android.support.v4.az1;
import android.support.v4.k52;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.io.Serializable;
import java.util.NoSuchElementException;

/* renamed from: freemarker.template.utility.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: break, reason: not valid java name */
    public static final TemplateHashModelEx f25204break;

    /* renamed from: catch, reason: not valid java name */
    public static final TemplateHashModelEx2.KeyValuePairIterator f25206catch;

    /* renamed from: else, reason: not valid java name */
    public static final TemplateModelIterator f25208else;

    /* renamed from: goto, reason: not valid java name */
    public static final TemplateCollectionModel f25210goto;

    /* renamed from: this, reason: not valid java name */
    public static final TemplateSequenceModel f25213this;

    /* renamed from: do, reason: not valid java name */
    public static final TemplateBooleanModel f25207do = TemplateBooleanModel.TRUE;

    /* renamed from: if, reason: not valid java name */
    public static final TemplateBooleanModel f25211if = TemplateBooleanModel.FALSE;

    /* renamed from: for, reason: not valid java name */
    public static final TemplateScalarModel f25209for = (TemplateScalarModel) TemplateScalarModel.EMPTY_STRING;

    /* renamed from: new, reason: not valid java name */
    public static final TemplateNumberModel f25212new = new az1(0);

    /* renamed from: try, reason: not valid java name */
    public static final TemplateNumberModel f25214try = new az1(1);

    /* renamed from: case, reason: not valid java name */
    public static final TemplateNumberModel f25205case = new az1(-1);

    /* renamed from: freemarker.template.utility.for$case, reason: invalid class name */
    public static class Ccase implements TemplateSequenceModel, Serializable {
        private Ccase() {
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            return null;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return 0;
        }
    }

    /* renamed from: freemarker.template.utility.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0263for implements TemplateHashModelEx2, Serializable {
        private C0263for() {
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            return null;
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() throws k52 {
            return true;
        }

        @Override // freemarker.template.TemplateHashModelEx2
        public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() throws k52 {
            return Cfor.f25206catch;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() throws k52 {
            return Cfor.f25210goto;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() throws k52 {
            return 0;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() throws k52 {
            return Cfor.f25210goto;
        }
    }

    /* renamed from: freemarker.template.utility.for$if, reason: invalid class name */
    public static class Cif implements TemplateCollectionModel, Serializable {
        private Cif() {
        }

        @Override // freemarker.template.TemplateCollectionModel
        public TemplateModelIterator iterator() throws k52 {
            return Cfor.f25208else;
        }
    }

    /* renamed from: freemarker.template.utility.for$new, reason: invalid class name */
    public static class Cnew implements TemplateModelIterator, Serializable {
        private Cnew() {
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            return false;
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            throw new k52("The collection has no more elements.");
        }
    }

    /* renamed from: freemarker.template.utility.for$try, reason: invalid class name */
    public static class Ctry implements TemplateHashModelEx2.KeyValuePairIterator {
        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
        public boolean hasNext() throws k52 {
            return false;
        }

        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
        public TemplateHashModelEx2.KeyValuePair next() throws k52 {
            throw new NoSuchElementException("Can't retrieve element from empty key-value pair iterator.");
        }

        private Ctry() {
        }
    }

    static {
        f25208else = new Cnew();
        f25210goto = new Cif();
        f25213this = new Ccase();
        f25204break = new C0263for();
        f25206catch = new Ctry();
    }
}
