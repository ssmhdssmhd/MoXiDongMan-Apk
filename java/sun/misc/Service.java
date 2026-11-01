package sun.misc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes4.dex */
public final class Service {
    private static final String prefix = "META-INF/services/";

    public static class LazyIterator implements Iterator {
        public Enumeration configs;
        public ClassLoader loader;
        public String nextName;
        public Iterator pending;
        public Set returned;
        public Class service;

        /* JADX WARN: Removed duplicated region for block: B:23:0x0068 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0034 -> B:14:0x004a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x004a -> B:14:0x004a). Please report as a decompilation issue!!! */
        @Override // java.util.Iterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean hasNext() throws ServiceConfigurationError {
            Iterator it;
            if (this.nextName != null) {
                return true;
            }
            if (this.configs == null) {
                try {
                    String str = Service.prefix + this.service.getName();
                    ClassLoader classLoader = this.loader;
                    if (classLoader == null) {
                        this.configs = ClassLoader.getSystemResources(str);
                    } else {
                        this.configs = classLoader.getResources(str);
                    }
                } catch (IOException e) {
                    Service.fail(this.service, ": " + e);
                }
            } else {
                it = this.pending;
                if (it == null && it.hasNext()) {
                    this.nextName = (String) this.pending.next();
                    return true;
                }
                if (this.configs.hasMoreElements()) {
                    return false;
                }
                this.pending = Service.parse(this.service, (URL) this.configs.nextElement(), this.returned);
            }
            it = this.pending;
            if (it == null) {
            }
            if (this.configs.hasMoreElements()) {
            }
        }

        @Override // java.util.Iterator
        public Object next() throws ServiceConfigurationError, ClassNotFoundException {
            Class<?> cls;
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.nextName;
            this.nextName = null;
            try {
                cls = Class.forName(str, false, this.loader);
            } catch (ClassNotFoundException unused) {
                Service.fail(this.service, "Provider " + str + " not found");
                cls = null;
            }
            if (!this.service.isAssignableFrom(cls)) {
                Service.fail(this.service, "Provider " + str + " not a subtype");
            }
            try {
                return this.service.cast(cls.newInstance());
            } catch (Throwable th) {
                Service.fail(this.service, "Provider " + str + " could not be instantiated: " + th, th);
                return null;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private LazyIterator(Class cls, ClassLoader classLoader) {
            this.configs = null;
            this.pending = null;
            this.returned = new TreeSet();
            this.nextName = null;
            this.service = cls;
            this.loader = classLoader;
        }
    }

    private Service() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fail(Class cls, String str, Throwable th) throws ServiceConfigurationError {
        ServiceConfigurationError serviceConfigurationError = new ServiceConfigurationError(cls.getName() + ": " + str);
        serviceConfigurationError.initCause(th);
        throw serviceConfigurationError;
    }

    public static Iterator installedProviders(Class cls) throws ServiceConfigurationError {
        ClassLoader classLoader = null;
        for (ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader(); systemClassLoader != null; systemClassLoader = systemClassLoader.getParent()) {
            classLoader = systemClassLoader;
        }
        return providers(cls, classLoader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        r12 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0089 A[Catch: IOException -> 0x0085, TRY_LEAVE, TryCatch #2 {IOException -> 0x0085, blocks: (B:45:0x0081, B:49:0x0089), top: B:55:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Iterator parse(Class cls, URL url, Set set) throws Throwable {
        InputStream inputStreamOpenStream;
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader2 = null;
        bufferedReader2 = null;
        InputStream inputStream = null;
        try {
            inputStreamOpenStream = url.openStream();
        } catch (IOException e) {
            e = e;
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
            inputStreamOpenStream = null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenStream, "utf-8"));
            int line = 1;
            do {
                try {
                    line = parseLine(cls, url, bufferedReader, line, arrayList, set);
                } catch (IOException e2) {
                    e = e2;
                    inputStream = inputStreamOpenStream;
                    try {
                        fail(cls, ": " + e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                e = e3;
                                StringBuilder sb = new StringBuilder();
                                sb.append(": ");
                                sb.append(e);
                                fail(cls, sb.toString());
                                return arrayList.iterator();
                            }
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return arrayList.iterator();
                    } catch (Throwable th2) {
                        th = th2;
                        inputStreamOpenStream = inputStream;
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e4) {
                                fail(cls, ": " + e4);
                                throw th;
                            }
                        }
                        if (inputStreamOpenStream != null) {
                            inputStreamOpenStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamOpenStream != null) {
                    }
                    throw th;
                }
            } while (line >= 0);
            bufferedReader.close();
            if (inputStreamOpenStream != null) {
                inputStreamOpenStream.close();
            }
        } catch (IOException e5) {
            e = e5;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            if (bufferedReader2 != null) {
            }
            if (inputStreamOpenStream != null) {
            }
            throw th;
        }
        return arrayList.iterator();
    }

    private static int parseLine(Class cls, URL url, BufferedReader bufferedReader, int i, List list, Set set) throws ServiceConfigurationError, IOException {
        String line = bufferedReader.readLine();
        if (line == null) {
            return -1;
        }
        int iIndexOf = line.indexOf(35);
        if (iIndexOf >= 0) {
            line = line.substring(0, iIndexOf);
        }
        String strTrim = line.trim();
        int length = strTrim.length();
        if (length != 0) {
            if (strTrim.indexOf(32) >= 0 || strTrim.indexOf(9) >= 0) {
                fail(cls, url, i, "Illegal configuration-file syntax");
            }
            int iCodePointAt = strTrim.codePointAt(0);
            if (!Character.isJavaIdentifierStart(iCodePointAt)) {
                fail(cls, url, i, "Illegal provider-class name: " + strTrim);
            }
            int iCharCount = Character.charCount(iCodePointAt);
            while (iCharCount < length) {
                int iCodePointAt2 = strTrim.codePointAt(iCharCount);
                if (!Character.isJavaIdentifierPart(iCodePointAt2) && iCodePointAt2 != 46) {
                    fail(cls, url, i, "Illegal provider-class name: " + strTrim);
                }
                iCharCount += Character.charCount(iCodePointAt2);
            }
            if (!set.contains(strTrim)) {
                list.add(strTrim);
                set.add(strTrim);
            }
        }
        return i + 1;
    }

    public static Iterator providers(Class cls, ClassLoader classLoader) throws ServiceConfigurationError {
        return new LazyIterator(cls, classLoader);
    }

    public static Iterator providers(Class cls) throws ServiceConfigurationError {
        return providers(cls, Thread.currentThread().getContextClassLoader());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fail(Class cls, String str) throws ServiceConfigurationError {
        throw new ServiceConfigurationError(cls.getName() + ": " + str);
    }

    private static void fail(Class cls, URL url, int i, String str) throws ServiceConfigurationError {
        fail(cls, url + ":" + i + ": " + str);
    }
}
