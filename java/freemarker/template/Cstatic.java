package freemarker.template;

import android.support.v4.e91;
import android.support.v4.mc;
import android.support.v4.ul2;
import android.support.v4.w72;
import android.support.v4.we2;
import freemarker.core.ParserConfiguration;
import freemarker.core.b4;
import freemarker.core.d0;
import freemarker.core.h3;
import freemarker.core.j0;
import freemarker.core.k4;
import freemarker.core.r1;
import freemarker.core.t;
import freemarker.core.x1;
import freemarker.core.y4;
import java.io.BufferedReader;
import java.io.FilterReader;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.swing.tree.TreePath;

/* renamed from: freemarker.template.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic extends t {
    public static final String m1 = "D";
    public static final String n1 = "N";
    private static final int o1 = 4096;
    private Map U0;
    private List V0;
    private b4 W0;
    private String X0;
    private String Y0;
    private Object Z0;
    private int a1;
    private int b1;
    private int c1;
    private boolean d1;
    private e91 e1;
    private final String f1;
    private final String g1;
    private final ArrayList h1;
    private final ParserConfiguration i1;
    private Map j1;
    private Map k1;
    private we2 l1;

    /* renamed from: freemarker.template.static$if, reason: invalid class name */
    public static class Cif extends h3 {
        private static final long serialVersionUID = 1;
        private final String constructorSpecifiedEncoding;

        @Deprecated
        public String specifiedEncoding;

        @Deprecated
        public Cif(String str) {
            this(str, null);
        }

        public String getConstructorSpecifiedEncoding() {
            return this.constructorSpecifiedEncoding;
        }

        @Override // freemarker.core.h3, java.lang.Throwable
        public String getMessage() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Encoding specified inside the template (");
            sb.append(this.specifiedEncoding);
            sb.append(") doesn't match the encoding specified for the Template constructor");
            if (this.constructorSpecifiedEncoding != null) {
                str = " (" + this.constructorSpecifiedEncoding + ").";
            } else {
                str = ".";
            }
            sb.append(str);
            return sb.toString();
        }

        public String getTemplateSpecifiedEncoding() {
            return this.specifiedEncoding;
        }

        public Cif(String str, String str2) {
            this.specifiedEncoding = str;
            this.constructorSpecifiedEncoding = str2;
        }
    }

    private Cstatic(String str, String str2, freemarker.template.Cdo cdo, ParserConfiguration parserConfiguration) {
        super(A1(cdo));
        this.U0 = new HashMap();
        this.V0 = new Vector();
        this.h1 = new ArrayList();
        this.j1 = new HashMap();
        this.k1 = new HashMap();
        this.f1 = str;
        this.g1 = str2;
        this.l1 = s1(A1(cdo).getIncompatibleImprovements());
        this.i1 = parserConfiguration == null ? b1() : parserConfiguration;
    }

    private static freemarker.template.Cdo A1(freemarker.template.Cdo cdo) {
        return cdo != null ? cdo : freemarker.template.Cdo.f1();
    }

    public static Cstatic k1(String str, String str2, freemarker.template.Cdo cdo) {
        return l1(str, null, str2, cdo);
    }

    public static Cstatic l1(String str, String str2, String str3, freemarker.template.Cdo cdo) {
        try {
            Cstatic cstatic = new Cstatic(str, str2, new StringReader("X"), cdo);
            y4.m28380final((k4) cstatic.W0, str3);
            freemarker.debug.impl.Cif.m28444new(cstatic);
            return cstatic;
        } catch (IOException e) {
            throw new mc("Plain text template creation failed", e);
        }
    }

    private static we2 s1(we2 we2Var) {
        ul2.m8507if(we2Var);
        int iIntValue = we2Var.intValue();
        return iIntValue < ul2.f6936if ? freemarker.template.Cdo.h3 : iIntValue > ul2.f6937new ? freemarker.template.Cdo.k3 : we2Var;
    }

    @Deprecated
    public void Q0(r1 r1Var) {
        this.V0.add(r1Var);
    }

    @Deprecated
    public void R0(x1 x1Var) {
        this.U0.put(x1Var.x(), x1Var);
    }

    @Deprecated
    public void S0(String str, String str2) {
        if (str2.length() == 0) {
            throw new IllegalArgumentException("Cannot map empty string URI");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Cannot map empty string prefix");
        }
        if (str.equals("N")) {
            throw new IllegalArgumentException("The prefix: " + str + " cannot be registered, it's reserved for special internal use.");
        }
        if (this.j1.containsKey(str)) {
            throw new IllegalArgumentException("The prefix: '" + str + "' was repeated. This is illegal.");
        }
        if (this.k1.containsKey(str2)) {
            throw new IllegalArgumentException("The namespace URI: " + str2 + " cannot be mapped to 2 different prefixes.");
        }
        if (str.equals(m1)) {
            this.Y0 = str2;
        } else {
            this.j1.put(str, str2);
            this.k1.put(str2, str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        r1 = r2;
     */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TreePath T0(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        b4 b4Var = this.W0;
        loop0: while (b4Var.m28067do(i, i2)) {
            arrayList.add(b4Var);
            Enumeration enumerationM27845static = b4Var.m27845static();
            while (enumerationM27845static.hasMoreElements()) {
                b4 b4Var2 = (b4) enumerationM27845static.nextElement();
                if (b4Var2.m28067do(i, i2)) {
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new TreePath(arrayList.toArray());
    }

    public d0 U0(Object obj, Writer writer) throws TemplateException, IOException {
        return V0(obj, writer, null);
    }

    public d0 V0(Object obj, Writer writer, ObjectWrapper objectWrapper) throws TemplateException, IOException {
        TemplateHashModel cnative;
        if (obj instanceof TemplateHashModel) {
            cnative = (TemplateHashModel) obj;
        } else {
            if (objectWrapper == null) {
                objectWrapper = m28258implements();
            }
            if (obj == null) {
                cnative = new Cnative(objectWrapper);
            } else {
                TemplateModel templateModelWrap = objectWrapper.wrap(obj);
                if (!(templateModelWrap instanceof TemplateHashModel)) {
                    if (templateModelWrap == null) {
                        throw new IllegalArgumentException(objectWrapper.getClass().getName() + " converted " + obj.getClass().getName() + " to null.");
                    }
                    throw new IllegalArgumentException(objectWrapper.getClass().getName() + " didn't convert " + obj.getClass().getName() + " to a TemplateHashModel. Generally, you want to use a Map<String, Object> or a JavaBean as the root-map (aka. data-model) parameter. The Map key-s or JavaBean property names will be the variable names in the template.");
                }
                cnative = (TemplateHashModel) templateModelWrap;
            }
        }
        return new d0(this, cnative, writer);
    }

    public void W0(PrintStream printStream) {
        printStream.print(this.W0.mo27815for());
    }

    public void X0(Writer writer) throws IOException {
        writer.write(this.W0.mo27815for());
    }

    public int Y0() {
        return this.c1;
    }

    public int Z0() {
        return this.b1;
    }

    public boolean a1() {
        return this.d1;
    }

    public freemarker.template.Cdo b1() {
        return (freemarker.template.Cdo) m28271synchronized();
    }

    public Object c1() {
        return this.Z0;
    }

    public String d1() {
        return this.Y0;
    }

    public String e1() {
        return this.X0;
    }

    @Deprecated
    public List f1() {
        return this.V0;
    }

    @Deprecated
    public Map g1() {
        return this.U0;
    }

    public int getInterpolationSyntax() {
        return this.a1;
    }

    public e91 getOutputFormat() {
        return this.e1;
    }

    public String h1() {
        return this.f1;
    }

    public String i1(String str) {
        if (!str.equals("")) {
            return (String) this.j1.get(str);
        }
        String str2 = this.Y0;
        return str2 == null ? "" : str2;
    }

    public ParserConfiguration j1() {
        return this.i1;
    }

    public String m1(String str) {
        if (str == null) {
            return null;
        }
        return str.length() == 0 ? this.Y0 == null ? "" : "N" : str.equals(this.Y0) ? "" : (String) this.k1.get(str);
    }

    public String n1(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            if (this.Y0 == null) {
                return str;
            }
            return "N:" + str;
        }
        if (str2.equals(this.Y0)) {
            return str;
        }
        String strM1 = m1(str2);
        if (strM1 == null) {
            return null;
        }
        return strM1 + ":" + str;
    }

    @Deprecated
    public b4 o1() {
        return this.W0;
    }

    public String p1(int i, int i2, int i3, int i4) {
        if (i2 < 1 || i4 < 1) {
            return null;
        }
        int i5 = i - 1;
        int i6 = i3 - 1;
        int i7 = i4 - 1;
        StringBuilder sb = new StringBuilder();
        for (int i8 = i2 - 1; i8 <= i7; i8++) {
            if (i8 < this.h1.size()) {
                sb.append(this.h1.get(i8));
            }
        }
        int length = (this.h1.get(i7).toString().length() - i6) - 1;
        sb.delete(0, i5);
        sb.delete(sb.length() - length, sb.length());
        return sb.toString();
    }

    public String q1() {
        String str = this.g1;
        return str != null ? str : h1();
    }

    public we2 r1() {
        return this.l1;
    }

    public void t1(Object obj, Writer writer) throws TemplateException, IOException {
        V0(obj, writer, null).d3();
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            X0(stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public void u1(Object obj, Writer writer, ObjectWrapper objectWrapper) throws TemplateException, IOException {
        V0(obj, writer, objectWrapper).d3();
    }

    public void v1(Object obj, Writer writer, ObjectWrapper objectWrapper, TemplateNodeModel templateNodeModel) throws TemplateException, IOException {
        d0 d0VarV0 = V0(obj, writer, objectWrapper);
        if (templateNodeModel != null) {
            d0VarV0.m3(templateNodeModel);
        }
        d0VarV0.d3();
    }

    public void w1(boolean z) {
        this.d1 = z;
    }

    public void x1(Object obj) {
        this.Z0 = obj;
    }

    @Deprecated
    public void y1(String str) {
        this.X0 = str;
    }

    public void z1(e91 e91Var) {
        this.e1 = e91Var;
    }

    /* renamed from: freemarker.template.static$do, reason: invalid class name */
    public class Cdo extends FilterReader {

        /* renamed from: do, reason: not valid java name */
        private final int f25105do;

        /* renamed from: for, reason: not valid java name */
        public int f25106for;

        /* renamed from: if, reason: not valid java name */
        private final StringBuilder f25107if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25108new;

        /* renamed from: try, reason: not valid java name */
        private Exception f25109try;

        public Cdo(Reader reader, ParserConfiguration parserConfiguration) {
            super(reader);
            this.f25107if = new StringBuilder();
            this.f25105do = parserConfiguration.getTabSize();
        }

        /* renamed from: do, reason: not valid java name */
        private void m29224do(int i) {
            int i2;
            if (i == 10 || i == 13) {
                if (this.f25106for == 13 && i == 10) {
                    int size = Cstatic.this.h1.size() - 1;
                    String str = (String) Cstatic.this.h1.get(size);
                    Cstatic.this.h1.set(size, str + '\n');
                } else {
                    this.f25107if.append((char) i);
                    Cstatic.this.h1.add(this.f25107if.toString());
                    this.f25107if.setLength(0);
                }
            } else if (i != 9 || (i2 = this.f25105do) == 1) {
                this.f25107if.append((char) i);
            } else {
                int length = i2 - (this.f25107if.length() % this.f25105do);
                for (int i3 = 0; i3 < length; i3++) {
                    this.f25107if.append(' ');
                }
            }
            this.f25106for = i;
        }

        /* renamed from: for, reason: not valid java name */
        private IOException m29225for(Exception exc) throws IOException {
            if (!this.f25108new) {
                this.f25109try = exc;
            }
            if (exc instanceof IOException) {
                return (IOException) exc;
            }
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new UndeclaredThrowableException(exc);
        }

        @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f25107if.length() > 0) {
                Cstatic.this.h1.add(this.f25107if.toString());
                this.f25107if.setLength(0);
            }
            super.close();
            this.f25108new = true;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m29226if() {
            return this.f25109try != null;
        }

        /* renamed from: new, reason: not valid java name */
        public void m29227new() throws IOException {
            Exception exc = this.f25109try;
            if (exc != null) {
                if (exc instanceof IOException) {
                    throw ((IOException) exc);
                }
                if (!(exc instanceof RuntimeException)) {
                    throw new UndeclaredThrowableException(this.f25109try);
                }
                throw ((RuntimeException) exc);
            }
        }

        @Override // java.io.FilterReader, java.io.Reader
        public int read() throws IOException {
            try {
                int i = ((FilterReader) this).in.read();
                m29224do(i);
                return i;
            } catch (Exception e) {
                throw m29225for(e);
            }
        }

        @Override // java.io.FilterReader, java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            try {
                int i3 = ((FilterReader) this).in.read(cArr, i, i2);
                for (int i4 = i; i4 < i + i3; i4++) {
                    m29224do(cArr[i4]);
                }
                return i3;
            } catch (Exception e) {
                throw m29225for(e);
            }
        }
    }

    public Cstatic(String str, Reader reader, freemarker.template.Cdo cdo) throws IOException {
        this(str, (String) null, reader, cdo);
    }

    public Cstatic(String str, String str2, freemarker.template.Cdo cdo) throws IOException {
        this(str, new StringReader(str2), cdo);
    }

    public Cstatic(String str, Reader reader, freemarker.template.Cdo cdo, String str2) throws IOException {
        this(str, null, reader, cdo, str2);
    }

    public Cstatic(String str, String str2, Reader reader, freemarker.template.Cdo cdo) throws IOException {
        this(str, str2, reader, cdo, null);
    }

    public Cstatic(String str, String str2, Reader reader, freemarker.template.Cdo cdo, String str3) throws IOException {
        this(str, str2, reader, cdo, null, str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cstatic(String str, String str2, Reader reader, freemarker.template.Cdo cdo, ParserConfiguration parserConfiguration, String str3) throws Throwable {
        ParserConfiguration parserConfigurationJ1;
        BufferedReader bufferedReader;
        this(str, str2, cdo, parserConfiguration);
        y1(str3);
        try {
            try {
                parserConfigurationJ1 = j1();
                boolean z = reader instanceof BufferedReader;
                bufferedReader = z;
                if (z == 0) {
                    boolean z2 = reader instanceof StringReader;
                    bufferedReader = z2;
                    if (z2 == 0) {
                        BufferedReader bufferedReader2 = new BufferedReader(reader, 4096);
                        reader = bufferedReader2;
                        bufferedReader = bufferedReader2;
                    }
                }
            } catch (h3 e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Cdo cdo2 = new Cdo(reader, parserConfigurationJ1);
            try {
                j0 j0Var = new j0(this, cdo2, parserConfigurationJ1);
                if (cdo != null) {
                    y4.m28385super(j0Var, cdo.F1());
                }
                try {
                    this.W0 = j0Var.H();
                } catch (IndexOutOfBoundsException e2) {
                    if (cdo2.m29226if()) {
                        this.W0 = null;
                    } else {
                        throw e2;
                    }
                }
                this.b1 = j0Var.Z();
                this.a1 = parserConfigurationJ1.getInterpolationSyntax();
                this.c1 = j0Var.Y();
                cdo2.close();
                cdo2.m29227new();
                freemarker.debug.impl.Cif.m28444new(this);
                this.k1 = Collections.unmodifiableMap(this.k1);
                this.j1 = Collections.unmodifiableMap(this.j1);
            } catch (w72 e3) {
                throw e3.toParseException(this);
            }
        } catch (h3 e4) {
            e = e4;
            reader = bufferedReader;
            e.setTemplateName(q1());
            throw e;
        } catch (Throwable th2) {
            th = th2;
            reader = bufferedReader;
            reader.close();
            throw th;
        }
    }

    @Deprecated
    public Cstatic(String str, Reader reader) throws IOException {
        this(str, reader, (freemarker.template.Cdo) null);
    }

    @Deprecated
    public Cstatic(String str, b4 b4Var, freemarker.template.Cdo cdo) {
        this(str, (String) null, cdo, (ParserConfiguration) null);
        this.W0 = b4Var;
        freemarker.debug.impl.Cif.m28444new(this);
    }
}
