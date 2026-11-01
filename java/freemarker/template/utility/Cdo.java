package freemarker.template.utility;

import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.core.k;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

@Deprecated
/* renamed from: freemarker.template.utility.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements TemplateTransformModel {

    /* renamed from: freemarker.template.utility.do$do, reason: invalid class name and collision with other inner class name */
    public class C0262do extends Writer {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ boolean f25172case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ StringBuilder f25173do;

        /* renamed from: else, reason: not valid java name */
        public final /* synthetic */ TemplateModel f25174else;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f25175for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Writer f25177if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ d0 f25178new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ String f25179try;

        public C0262do(StringBuilder sb, Writer writer, boolean z, d0 d0Var, String str, boolean z2, TemplateModel templateModel) {
            this.f25173do = sb;
            this.f25177if = writer;
            this.f25175for = z;
            this.f25178new = d0Var;
            this.f25179try = str;
            this.f25172case = z2;
            this.f25174else = templateModel;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            ez1 ez1Var = new ez1(this.f25173do.toString());
            try {
                if (this.f25175for) {
                    this.f25178new.r3(this.f25179try, ez1Var);
                    return;
                }
                if (this.f25172case) {
                    this.f25178new.p3(this.f25179try, ez1Var);
                    return;
                }
                TemplateModel templateModel = this.f25174else;
                if (templateModel == null) {
                    this.f25178new.u3(this.f25179try, ez1Var);
                } else {
                    ((d0.Cthis) templateModel).put(this.f25179try, ez1Var);
                }
            } catch (IllegalStateException e) {
                throw new IOException("Could not set variable " + this.f25179try + ": " + e.getMessage());
            }
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f25177if.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            this.f25173do.append(cArr, i, i2);
        }
    }

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) throws k52 {
        boolean z;
        boolean z2;
        boolean z3;
        if (map == null) {
            throw new k52("Must specify the name of the variable in which to capture the output with the 'var' or 'local' or 'global' parameter.");
        }
        TemplateModel templateModel = (TemplateModel) map.get(k.f23945throw);
        Object obj = map.get("var");
        boolean z4 = false;
        if (obj == null) {
            obj = map.get("local");
            if (obj == null) {
                obj = map.get("global");
                z3 = true;
            } else {
                z4 = true;
                z3 = false;
            }
            if (obj == null) {
                throw new k52("Must specify the name of the variable in which to capture the output with the 'var' or 'local' or 'global' parameter.");
            }
            z = z4;
            z2 = z3;
        } else {
            z = false;
            z2 = false;
        }
        if (map.size() == 2) {
            if (templateModel == null) {
                throw new k52("Second parameter can only be namespace");
            }
            if (z) {
                throw new k52("Cannot specify namespace for a local assignment");
            }
            if (z2) {
                throw new k52("Cannot specify namespace for a global assignment");
            }
            if (!(templateModel instanceof d0.Cthis)) {
                throw new k52("namespace parameter does not specify a namespace. It is a " + templateModel.getClass().getName());
            }
        } else if (map.size() != 1) {
            throw new k52("Bad parameters. Use only one of 'var' or 'local' or 'global' parameters.");
        }
        if (!(obj instanceof TemplateScalarModel)) {
            throw new k52("'var' or 'local' or 'global' parameter doesn't evaluate to a string");
        }
        String asString = ((TemplateScalarModel) obj).getAsString();
        if (asString != null) {
            return new C0262do(new StringBuilder(), writer, z, d0.w1(), asString, z2, templateModel);
        }
        throw new k52("'var' or 'local' or 'global' parameter evaluates to null string");
    }
}
