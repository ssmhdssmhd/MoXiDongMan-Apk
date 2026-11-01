package com.google.common.reflect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.em1;
import android.support.v4.o8;
import android.support.v4.on0;
import com.google.common.base.Cswitch;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.Maps;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.a2;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import com.google.common.collect.t;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import com.google.common.io.Cgoto;
import com.google.common.io.Cthrows;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.Cclass;

@o8
/* renamed from: com.google.common.reflect.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: try, reason: not valid java name */
    private static final String f15579try = ".class";

    /* renamed from: do, reason: not valid java name */
    private final g1<Cnew> f15580do;

    /* renamed from: if, reason: not valid java name */
    private static final Logger f15577if = Logger.getLogger(Cif.class.getName());

    /* renamed from: for, reason: not valid java name */
    private static final Predicate<C0141if> f15576for = new Cdo();

    /* renamed from: new, reason: not valid java name */
    private static final Splitter f15578new = Splitter.m14984catch(Cclass.f28652do).m14996else();

    /* renamed from: com.google.common.reflect.if$do, reason: invalid class name */
    public static class Cdo implements Predicate<C0141if> {
        @Override // com.google.common.base.Predicate
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean apply(C0141if c0141if) {
            return c0141if.f15582for.indexOf(36) == -1;
        }
    }

    @af2
    /* renamed from: com.google.common.reflect.if$for, reason: invalid class name */
    public static final class Cfor extends Ctry {

        /* renamed from: if, reason: not valid java name */
        private final SetMultimap<ClassLoader, String> f15581if = a2.m15494new().m15505else().mo15497do();

        /* renamed from: const, reason: not valid java name */
        private void m17882const(File file, ClassLoader classLoader, String str, Set<File> set) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                Cif.f15577if.warning("Cannot read directory " + file);
                return;
            }
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        m17882const(canonicalFile, classLoader, str + name + on0.f4694final, set);
                        set.remove(canonicalFile);
                    }
                } else {
                    String str2 = str + name;
                    if (!str2.equals("META-INF/MANIFEST.MF")) {
                        this.f15581if.get((SetMultimap<ClassLoader, String>) classLoader).add(str2);
                    }
                }
            }
        }

        @Override // com.google.common.reflect.Cif.Ctry
        /* renamed from: catch, reason: not valid java name */
        public void mo17883catch(ClassLoader classLoader, JarFile jarFile) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                if (!jarEntryNextElement.isDirectory() && !jarEntryNextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    this.f15581if.get((SetMultimap<ClassLoader, String>) classLoader).add(jarEntryNextElement.getName());
                }
            }
        }

        /* renamed from: class, reason: not valid java name */
        public g1<Cnew> m17884class() {
            g1.Cdo cdoBuilder = g1.builder();
            for (Map.Entry<ClassLoader, String> entry : this.f15581if.entries()) {
                cdoBuilder.mo15812else(Cnew.m17891new(entry.getValue(), entry.getKey()));
            }
            return cdoBuilder.mo15642try();
        }

        @Override // com.google.common.reflect.Cif.Ctry
        /* renamed from: goto, reason: not valid java name */
        public void mo17885goto(ClassLoader classLoader, File file) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            m17882const(file, classLoader, "", hashSet);
        }
    }

    @o8
    /* renamed from: com.google.common.reflect.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0141if extends Cnew {

        /* renamed from: for, reason: not valid java name */
        private final String f15582for;

        public C0141if(String str, ClassLoader classLoader) {
            super(str, classLoader);
            this.f15582for = Cif.m17875try(str);
        }

        /* renamed from: break, reason: not valid java name */
        public Class<?> m17887break() {
            try {
                return this.f15584if.loadClass(this.f15582for);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public String m17888else() {
            return this.f15582for;
        }

        /* renamed from: goto, reason: not valid java name */
        public String m17889goto() {
            return em1.m1959if(this.f15582for);
        }

        /* renamed from: this, reason: not valid java name */
        public String m17890this() {
            int iLastIndexOf = this.f15582for.lastIndexOf(36);
            if (iLastIndexOf != -1) {
                return com.google.common.base.Cnew.m15125const('0', '9').i(this.f15582for.substring(iLastIndexOf + 1));
            }
            String strM17889goto = m17889goto();
            return strM17889goto.isEmpty() ? this.f15582for : this.f15582for.substring(strM17889goto.length() + 1);
        }

        @Override // com.google.common.reflect.Cif.Cnew
        public String toString() {
            return this.f15582for;
        }
    }

    @o8
    /* renamed from: com.google.common.reflect.if$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final String f15583do;

        /* renamed from: if, reason: not valid java name */
        public final ClassLoader f15584if;

        public Cnew(String str, ClassLoader classLoader) {
            this.f15583do = (String) af1.m205continue(str);
            this.f15584if = (ClassLoader) af1.m205continue(classLoader);
        }

        /* renamed from: new, reason: not valid java name */
        public static Cnew m17891new(String str, ClassLoader classLoader) {
            return str.endsWith(Cif.f15579try) ? new C0141if(str, classLoader) : new Cnew(str, classLoader);
        }

        /* renamed from: do, reason: not valid java name */
        public final com.google.common.io.Cnew m17892do() {
            return Cthrows.m17160do(m17895try());
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cnew)) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            return this.f15583do.equals(cnew.f15583do) && this.f15584if == cnew.f15584if;
        }

        /* renamed from: for, reason: not valid java name */
        public final String m17893for() {
            return this.f15583do;
        }

        public int hashCode() {
            return this.f15583do.hashCode();
        }

        /* renamed from: if, reason: not valid java name */
        public final Cgoto m17894if(Charset charset) {
            return Cthrows.m17164if(m17895try(), charset);
        }

        public String toString() {
            return this.f15583do;
        }

        /* renamed from: try, reason: not valid java name */
        public final URL m17895try() {
            URL resource = this.f15584if.getResource(this.f15583do);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(this.f15583do);
        }
    }

    /* renamed from: com.google.common.reflect.if$try, reason: invalid class name */
    public static abstract class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final Set<File> f15585do = c3.m15706return();

        /* renamed from: break, reason: not valid java name */
        private void m17896break(File file, ClassLoader classLoader) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    ac2<File> it = m17900new(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        m17903case(it.next(), classLoader);
                    }
                    mo17883catch(classLoader, jarFile);
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (IOException unused2) {
            }
        }

        /* renamed from: do, reason: not valid java name */
        private static v0<URL> m17897do(ClassLoader classLoader) {
            return classLoader instanceof URLClassLoader ? v0.copyOf(((URLClassLoader) classLoader).getURLs()) : classLoader.equals(ClassLoader.getSystemClassLoader()) ? m17902try() : v0.of();
        }

        @af2
        /* renamed from: for, reason: not valid java name */
        public static URL m17898for(File file, String str) throws MalformedURLException {
            return new URL(file.toURI().toURL(), str);
        }

        @af2
        /* renamed from: if, reason: not valid java name */
        public static x0<File, ClassLoader> m17899if(ClassLoader classLoader) {
            LinkedHashMap linkedHashMapP = Maps.p();
            ClassLoader parent = classLoader.getParent();
            if (parent != null) {
                linkedHashMapP.putAll(m17899if(parent));
            }
            ac2<URL> it = m17897do(classLoader).iterator();
            while (it.hasNext()) {
                URL next = it.next();
                if (next.getProtocol().equals("file")) {
                    File fileM17871break = Cif.m17871break(next);
                    if (!linkedHashMapP.containsKey(fileM17871break)) {
                        linkedHashMapP.put(fileM17871break, classLoader);
                    }
                }
            }
            return x0.copyOf((Map) linkedHashMapP);
        }

        @af2
        /* renamed from: new, reason: not valid java name */
        public static g1<File> m17900new(File file, @b51 Manifest manifest) {
            if (manifest == null) {
                return g1.of();
            }
            g1.Cdo cdoBuilder = g1.builder();
            String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
            if (value != null) {
                for (String str : Cif.f15578new.m14997final(value)) {
                    try {
                        URL urlM17898for = m17898for(file, str);
                        if (urlM17898for.getProtocol().equals("file")) {
                            cdoBuilder.mo15812else(Cif.m17871break(urlM17898for));
                        }
                    } catch (MalformedURLException unused) {
                        Cif.f15577if.warning("Invalid Class-Path entry: " + str);
                    }
                }
            }
            return cdoBuilder.mo15642try();
        }

        /* renamed from: this, reason: not valid java name */
        private void m17901this(File file, ClassLoader classLoader) throws IOException {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        mo17885goto(classLoader, file);
                    } else {
                        m17896break(file, classLoader);
                    }
                }
            } catch (SecurityException e) {
                Cif.f15577if.warning("Cannot access " + file + ": " + e);
            }
        }

        @af2
        /* renamed from: try, reason: not valid java name */
        public static v0<URL> m17902try() {
            v0.Cdo cdoBuilder = v0.builder();
            for (String str : Splitter.m14984catch(Cswitch.PATH_SEPARATOR.value()).m14997final(Cswitch.JAVA_CLASS_PATH.value())) {
                try {
                    try {
                        cdoBuilder.mo15635do(new File(str).toURI().toURL());
                    } catch (SecurityException unused) {
                        cdoBuilder.mo15635do(new URL("file", (String) null, new File(str).getAbsolutePath()));
                    }
                } catch (MalformedURLException e) {
                    Cif.f15577if.log(Level.WARNING, "malformed classpath entry: " + str, (Throwable) e);
                }
            }
            return cdoBuilder.mo15642try();
        }

        @af2
        /* renamed from: case, reason: not valid java name */
        public final void m17903case(File file, ClassLoader classLoader) throws IOException {
            if (this.f15585do.add(file.getCanonicalFile())) {
                m17901this(file, classLoader);
            }
        }

        /* renamed from: catch */
        public abstract void mo17883catch(ClassLoader classLoader, JarFile jarFile) throws IOException;

        /* renamed from: else, reason: not valid java name */
        public final void m17904else(ClassLoader classLoader) throws IOException {
            ac2<Map.Entry<File, ClassLoader>> it = m17899if(classLoader).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<File, ClassLoader> next = it.next();
                m17903case(next.getKey(), next.getValue());
            }
        }

        /* renamed from: goto */
        public abstract void mo17885goto(ClassLoader classLoader, File file) throws IOException;
    }

    private Cif(g1<Cnew> g1Var) {
        this.f15580do = g1Var;
    }

    @af2
    /* renamed from: break, reason: not valid java name */
    public static File m17871break(URL url) {
        af1.m220new(url.getProtocol().equals("file"));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m17873for(ClassLoader classLoader) throws IOException {
        Cfor cfor = new Cfor();
        cfor.m17904else(classLoader);
        return new Cif(cfor.m17884class());
    }

    @af2
    /* renamed from: try, reason: not valid java name */
    public static String m17875try(String str) {
        return str.substring(0, str.length() - 6).replace(org.jsoup.nodes.Attributes.InternalPrefix, org.apache.commons.lang3.Ctry.f28883do);
    }

    /* renamed from: case, reason: not valid java name */
    public g1<Cnew> m17876case() {
        return this.f15580do;
    }

    /* renamed from: else, reason: not valid java name */
    public g1<C0141if> m17877else() {
        return t.m16313import(this.f15580do).m16325final(C0141if.class).m16322const(f15576for).m16337strictfp();
    }

    /* renamed from: goto, reason: not valid java name */
    public g1<C0141if> m17878goto(String str) {
        af1.m205continue(str);
        g1.Cdo cdoBuilder = g1.builder();
        ac2<C0141if> it = m17877else().iterator();
        while (it.hasNext()) {
            C0141if next = it.next();
            if (next.m17889goto().equals(str)) {
                cdoBuilder.mo15812else(next);
            }
        }
        return cdoBuilder.mo15642try();
    }

    /* renamed from: new, reason: not valid java name */
    public g1<C0141if> m17879new() {
        return t.m16313import(this.f15580do).m16325final(C0141if.class).m16337strictfp();
    }

    /* renamed from: this, reason: not valid java name */
    public g1<C0141if> m17880this(String str) {
        af1.m205continue(str);
        String str2 = str + org.apache.commons.lang3.Ctry.f28883do;
        g1.Cdo cdoBuilder = g1.builder();
        ac2<C0141if> it = m17877else().iterator();
        while (it.hasNext()) {
            C0141if next = it.next();
            if (next.m17888else().startsWith(str2)) {
                cdoBuilder.mo15812else(next);
            }
        }
        return cdoBuilder.mo15642try();
    }
}
