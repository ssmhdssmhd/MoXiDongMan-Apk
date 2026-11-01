package org.apache.commons.lang3;

import android.support.v4.yw1;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* renamed from: org.apache.commons.lang3.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: org.apache.commons.lang3.break$do, reason: invalid class name */
    public static class Cdo extends ObjectInputStream {

        /* renamed from: if, reason: not valid java name */
        private static final Map<String, Class<?>> f28607if = new HashMap();

        /* renamed from: do, reason: not valid java name */
        private final ClassLoader f28608do;

        public Cdo(InputStream inputStream, ClassLoader classLoader) throws IOException {
            super(inputStream);
            this.f28608do = classLoader;
            Map<String, Class<?>> map = f28607if;
            map.put("byte", Byte.TYPE);
            map.put("short", Short.TYPE);
            map.put("int", Integer.TYPE);
            map.put("long", Long.TYPE);
            map.put(TypedValues.Custom.S_FLOAT, Float.TYPE);
            map.put("double", Double.TYPE);
            map.put(TypedValues.Custom.S_BOOLEAN, Boolean.TYPE);
            map.put("char", Character.TYPE);
            map.put("void", Void.TYPE);
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
            String name = objectStreamClass.getName();
            try {
                try {
                    return Class.forName(name, false, this.f28608do);
                } catch (ClassNotFoundException e) {
                    Class<?> cls = f28607if.get(name);
                    if (cls != null) {
                        return cls;
                    }
                    throw e;
                }
            } catch (ClassNotFoundException unused) {
                return Class.forName(name, false, Thread.currentThread().getContextClassLoader());
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m32132case(Serializable serializable) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        m32137try(serializable, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: do, reason: not valid java name */
    public static <T extends Serializable> T m32133do(T t) throws Throwable {
        Cdo cdo;
        Cdo cdo2 = null;
        if (t == null) {
            return null;
        }
        try {
            try {
                cdo = new Cdo(new ByteArrayInputStream(m32132case(t)), t.getClass().getClassLoader());
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (ClassNotFoundException e2) {
            e = e2;
        }
        try {
            T t2 = (T) cdo.readObject();
            try {
                cdo.close();
                return t2;
            } catch (IOException e3) {
                throw new yw1("IOException on closing cloned object data InputStream.", e3);
            }
        } catch (IOException e4) {
            e = e4;
            throw new yw1("IOException while reading cloned object data", e);
        } catch (ClassNotFoundException e5) {
            e = e5;
            throw new yw1("ClassNotFoundException while reading cloned object data", e);
        } catch (Throwable th2) {
            th = th2;
            cdo2 = cdo;
            if (cdo2 != null) {
                try {
                    cdo2.close();
                } catch (IOException e6) {
                    throw new yw1("IOException on closing cloned object data InputStream.", e6);
                }
            }
            throw th;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> T m32134for(byte[] bArr) {
        if (bArr != null) {
            return (T) m32135if(new ByteArrayInputStream(bArr));
        }
        throw new IllegalArgumentException("The byte[] must not be null");
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m32135if(InputStream inputStream) throws Throwable {
        ObjectInputStream objectInputStream;
        if (inputStream == null) {
            throw new IllegalArgumentException("The InputStream must not be null");
        }
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (ClassCastException e2) {
            e = e2;
        } catch (ClassNotFoundException e3) {
            e = e3;
        }
        try {
            T t = (T) objectInputStream.readObject();
            try {
                objectInputStream.close();
            } catch (IOException unused) {
            }
            return t;
        } catch (IOException e4) {
            e = e4;
            throw new yw1(e);
        } catch (ClassCastException e5) {
            e = e5;
            throw new yw1(e);
        } catch (ClassNotFoundException e6) {
            e = e6;
            throw new yw1(e);
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            if (objectInputStream2 != null) {
                try {
                    objectInputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static <T extends Serializable> T m32136new(T t) {
        return (T) m32134for(m32132case(t));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m32137try(Serializable serializable, OutputStream outputStream) throws Throwable {
        ObjectOutputStream objectOutputStream;
        if (outputStream == null) {
            throw new IllegalArgumentException("The OutputStream must not be null");
        }
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(outputStream);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            objectOutputStream.writeObject(serializable);
            try {
                objectOutputStream.close();
            } catch (IOException unused) {
            }
        } catch (IOException e2) {
            e = e2;
            objectOutputStream2 = objectOutputStream;
            throw new yw1(e);
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
