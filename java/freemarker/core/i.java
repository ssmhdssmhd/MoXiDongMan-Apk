package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.template.Creturn;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.utility.Csuper;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
class i {

    /* renamed from: freemarker.core.i$do, reason: invalid class name */
    public static class Cdo implements TemplateBooleanModel, TemplateCollectionModel, TemplateSequenceModel {

        /* renamed from: case, reason: not valid java name */
        private ArrayList f23826case;

        /* renamed from: do, reason: not valid java name */
        public final Pattern f23827do;

        /* renamed from: for, reason: not valid java name */
        private Matcher f23828for;

        /* renamed from: if, reason: not valid java name */
        public final String f23829if;

        /* renamed from: new, reason: not valid java name */
        private Boolean f23830new;

        /* renamed from: try, reason: not valid java name */
        private TemplateSequenceModel f23831try;

        /* renamed from: freemarker.core.i$do$do, reason: invalid class name and collision with other inner class name */
        public class C0242do implements TemplateSequenceModel {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Matcher f23832do;

            public C0242do(Matcher matcher) {
                this.f23832do = matcher;
            }

            @Override // freemarker.template.TemplateSequenceModel
            public TemplateModel get(int i) throws k52 {
                try {
                    return new ez1(this.f23832do.group(i));
                } catch (Exception e) {
                    throw new vl2(e, "Failed to read regular expression match group");
                }
            }

            @Override // freemarker.template.TemplateSequenceModel
            public int size() throws k52 {
                try {
                    return this.f23832do.groupCount() + 1;
                } catch (Exception e) {
                    throw new vl2(e, "Failed to get regular expression match group count");
                }
            }
        }

        /* renamed from: freemarker.core.i$do$for, reason: invalid class name */
        public class Cfor implements TemplateModelIterator {

            /* renamed from: do, reason: not valid java name */
            private int f23834do = 0;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ ArrayList f23836if;

            public Cfor(ArrayList arrayList) {
                this.f23836if = arrayList;
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() {
                return this.f23834do < this.f23836if.size();
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                try {
                    ArrayList arrayList = this.f23836if;
                    int i = this.f23834do;
                    this.f23834do = i + 1;
                    return (TemplateModel) arrayList.get(i);
                } catch (IndexOutOfBoundsException e) {
                    throw new vl2(e, "There were no more regular expression matches");
                }
            }
        }

        /* renamed from: freemarker.core.i$do$if, reason: invalid class name */
        public class Cif implements TemplateModelIterator {

            /* renamed from: do, reason: not valid java name */
            private int f23837do = 0;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Matcher f23838for;

            /* renamed from: if, reason: not valid java name */
            public boolean f23839if;

            public Cif(Matcher matcher) {
                this.f23838for = matcher;
                this.f23839if = matcher.find();
            }

            @Override // freemarker.template.TemplateModelIterator
            public boolean hasNext() {
                ArrayList arrayList = Cdo.this.f23826case;
                return arrayList == null ? this.f23839if : this.f23837do < arrayList.size();
            }

            @Override // freemarker.template.TemplateModelIterator
            public TemplateModel next() throws k52 {
                ArrayList arrayList = Cdo.this.f23826case;
                if (arrayList != null) {
                    try {
                        int i = this.f23837do;
                        this.f23837do = i + 1;
                        return (TemplateModel) arrayList.get(i);
                    } catch (IndexOutOfBoundsException e) {
                        throw new vl2(e, "There were no more regular expression matches");
                    }
                }
                if (!this.f23839if) {
                    throw new vl2("There were no more regular expression matches");
                }
                Cnew cnew = new Cnew(Cdo.this.f23829if, this.f23838for);
                this.f23837do++;
                this.f23839if = this.f23838for.find();
                return cnew;
            }
        }

        /* renamed from: freemarker.core.i$do$new, reason: invalid class name */
        public static class Cnew implements TemplateScalarModel {

            /* renamed from: do, reason: not valid java name */
            public final String f23841do;

            /* renamed from: if, reason: not valid java name */
            public final Creturn f23842if;

            public Cnew(String str, Matcher matcher) {
                this.f23841do = str.substring(matcher.start(), matcher.end());
                int iGroupCount = matcher.groupCount() + 1;
                this.f23842if = new Creturn(iGroupCount);
                for (int i = 0; i < iGroupCount; i++) {
                    this.f23842if.add(matcher.group(i));
                }
            }

            @Override // freemarker.template.TemplateScalarModel
            public String getAsString() {
                return this.f23841do;
            }
        }

        public Cdo(Pattern pattern, String str) {
            this.f23827do = pattern;
            this.f23829if = str;
        }

        /* renamed from: for, reason: not valid java name */
        private ArrayList m28077for() throws k52 {
            ArrayList arrayList = new ArrayList();
            Matcher matcher = this.f23827do.matcher(this.f23829if);
            while (matcher.find()) {
                arrayList.add(new Cnew(this.f23829if, matcher));
            }
            this.f23826case = arrayList;
            return arrayList;
        }

        /* renamed from: new, reason: not valid java name */
        private boolean m28078new() {
            Matcher matcher = this.f23827do.matcher(this.f23829if);
            boolean zMatches = matcher.matches();
            this.f23828for = matcher;
            this.f23830new = Boolean.valueOf(zMatches);
            return zMatches;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            ArrayList arrayListM28077for = this.f23826case;
            if (arrayListM28077for == null) {
                arrayListM28077for = m28077for();
            }
            return (TemplateModel) arrayListM28077for.get(i);
        }

        @Override // freemarker.template.TemplateBooleanModel
        public boolean getAsBoolean() {
            Boolean bool = this.f23830new;
            return bool != null ? bool.booleanValue() : m28078new();
        }

        /* renamed from: if, reason: not valid java name */
        public TemplateModel m28079if() {
            TemplateSequenceModel templateSequenceModel = this.f23831try;
            if (templateSequenceModel != null) {
                return templateSequenceModel;
            }
            Matcher matcher = this.f23828for;
            if (matcher == null) {
                m28078new();
                matcher = this.f23828for;
            }
            C0242do c0242do = new C0242do(matcher);
            this.f23831try = c0242do;
            return c0242do;
        }

        @Override // freemarker.template.TemplateCollectionModel
        public TemplateModelIterator iterator() {
            ArrayList arrayList = this.f23826case;
            return arrayList == null ? new Cif(this.f23827do.matcher(this.f23829if)) : new Cfor(arrayList);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            ArrayList arrayListM28077for = this.f23826case;
            if (arrayListM28077for == null) {
                arrayListM28077for = m28077for();
            }
            return arrayListM28077for.size();
        }
    }

    /* renamed from: freemarker.core.i$for, reason: invalid class name */
    public static class Cfor extends Cstrictfp {

        /* renamed from: freemarker.core.i$for$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            public String f23843do;

            public Cdo(String str) throws k52 {
                this.f23843do = str;
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int size = list.size();
                Cfor.this.e(size, 1, 2);
                String str = (String) list.get(0);
                long jM28190case = size > 1 ? o3.m28190case((String) list.get(1)) : 0L;
                if ((o3.f24028class & jM28190case) != 0) {
                    o3.m28195try("?" + Cfor.this.f24115this + " doesn't support the \"f\" flag.");
                }
                return new Cdo(o3.m28192for(str, (int) jM28190case), this.f23843do);
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.i$if, reason: invalid class name */
    public static class Cif extends Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            m28052public(templateModelM28055throws, d0Var);
            if (templateModelM28055throws instanceof Cdo) {
                return ((Cdo) templateModelM28055throws).m28079if();
            }
            if (templateModelM28055throws instanceof Cdo.Cnew) {
                return ((Cdo.Cnew) templateModelM28055throws).f23842if;
            }
            throw new r4(this.f24114goto, templateModelM28055throws, "regular expression matcher", new Class[]{Cdo.class, Cdo.Cnew.class}, d0Var);
        }
    }

    /* renamed from: freemarker.core.i$new, reason: invalid class name */
    public static class Cnew extends Cstrictfp {

        /* renamed from: freemarker.core.i$new$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            private String f23845do;

            public Cdo(String str) {
                this.f23845do = str;
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                String strReplaceFirst;
                int size = list.size();
                Cnew.this.e(size, 2, 3);
                String str = (String) list.get(0);
                String str2 = (String) list.get(1);
                long jM28190case = size > 2 ? o3.m28190case((String) list.get(2)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28191do("replace", jM28190case);
                    strReplaceFirst = Csuper.n(this.f23845do, str, str2, (o3.f24030else & jM28190case) != 0, (jM28190case & o3.f24028class) != 0);
                } else {
                    Matcher matcher = o3.m28192for(str, (int) jM28190case).matcher(this.f23845do);
                    strReplaceFirst = (jM28190case & o3.f24028class) != 0 ? matcher.replaceFirst(str2) : matcher.replaceAll(str2);
                }
                return new ez1(strReplaceFirst);
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    private i() {
    }
}
