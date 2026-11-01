package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.collect.x1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@li0
@o8
/* renamed from: com.google.common.io.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrows {

    /* renamed from: com.google.common.io.throws$do, reason: invalid class name */
    public static class Cdo implements LineProcessor<List<String>> {

        /* renamed from: do, reason: not valid java name */
        public final List<String> f15354do = x1.m16520while();

        @Override // com.google.common.io.LineProcessor
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.f15354do;
        }

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f15354do.add(str);
            return true;
        }
    }

    /* renamed from: com.google.common.io.throws$if, reason: invalid class name */
    public static final class Cif extends Cnew {

        /* renamed from: do, reason: not valid java name */
        private final URL f15355do;

        public /* synthetic */ Cif(URL url, Cdo cdo) {
            this(url);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return this.f15355do.openStream();
        }

        public String toString() {
            return "Resources.asByteSource(" + this.f15355do + ")";
        }

        private Cif(URL url) {
            this.f15355do = (URL) af1.m205continue(url);
        }
    }

    private Cthrows() {
    }

    @lf
    /* renamed from: case, reason: not valid java name */
    public static <T> T m17159case(URL url, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) m17164if(url, charset).mo17027while(lineProcessor);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cnew m17160do(URL url) {
        return new Cif(url, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static List<String> m17161else(URL url, Charset charset) throws IOException {
        return (List) m17159case(url, charset, new Cdo());
    }

    /* renamed from: for, reason: not valid java name */
    public static void m17162for(URL url, OutputStream outputStream) throws Throwable {
        m17160do(url).mo17087else(outputStream);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m17163goto(URL url) throws IOException {
        return m17160do(url).mo17090super();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cgoto m17164if(URL url, Charset charset) {
        return m17160do(url).mo17028do(charset);
    }

    /* renamed from: new, reason: not valid java name */
    public static URL m17165new(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        af1.m206default(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }

    /* renamed from: this, reason: not valid java name */
    public static String m17166this(URL url, Charset charset) throws IOException {
        return m17164if(url, charset).mo17022final();
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public static URL m17167try(String str) {
        URL resource = ((ClassLoader) Csuper.m15183do(Thread.currentThread().getContextClassLoader(), Cthrows.class.getClassLoader())).getResource(str);
        af1.m225return(resource != null, "resource %s not found.", str);
        return resource;
    }
}
