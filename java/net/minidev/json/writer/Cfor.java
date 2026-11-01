package net.minidev.json.writer;

import android.support.v4.wo0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

/* renamed from: net.minidev.json.writer.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: net.minidev.json.writer.for$do, reason: invalid class name */
    public static class Cdo<T> extends Ccase<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<?> f28314do;

        /* renamed from: for, reason: not valid java name */
        public final net.minidev.asm.Cdo<?> f28315for;

        /* renamed from: if, reason: not valid java name */
        public final Class<?> f28316if;

        /* renamed from: new, reason: not valid java name */
        public Ccase<?> f28317new;

        public Cdo(Ctry ctry, Class<?> cls) {
            super(ctry);
            this.f28314do = cls;
            if (cls.isInterface()) {
                this.f28316if = net.minidev.json.Cdo.class;
            } else {
                this.f28316if = cls;
            }
            this.f28315for = net.minidev.asm.Cdo.m31544try(this.f28316if, wo0.f7582do);
        }

        @Override // net.minidev.json.writer.Ccase
        public void addValue(Object obj, Object obj2) {
            ((List) obj).add(obj2);
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createArray() {
            return this.f28315for.m31545break();
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            return this.base.f28355if;
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            return this.base.f28355if;
        }
    }

    /* renamed from: net.minidev.json.writer.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0379for<T> extends Ccase<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<?> f28318do;

        /* renamed from: for, reason: not valid java name */
        public final net.minidev.asm.Cdo<?> f28319for;

        /* renamed from: if, reason: not valid java name */
        public final Class<?> f28320if;

        /* renamed from: new, reason: not valid java name */
        public Ccase<?> f28321new;

        public C0379for(Ctry ctry, Class<?> cls) {
            super(ctry);
            this.f28318do = cls;
            if (cls.isInterface()) {
                this.f28320if = net.minidev.json.Cif.class;
            } else {
                this.f28320if = cls;
            }
            this.f28319for = net.minidev.asm.Cdo.m31544try(this.f28320if, wo0.f7582do);
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createObject() {
            return this.f28319for.m31545break();
        }

        @Override // net.minidev.json.writer.Ccase
        public Type getType(String str) {
            return this.f28318do;
        }

        @Override // net.minidev.json.writer.Ccase
        public Object getValue(Object obj, String str) {
            return ((Map) obj).get(str);
        }

        @Override // net.minidev.json.writer.Ccase
        public void setValue(Object obj, String str, Object obj2) {
            ((Map) obj).put(str, obj2);
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            return this.base.f28355if;
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            return this.base.f28355if;
        }
    }

    /* renamed from: net.minidev.json.writer.for$if, reason: invalid class name */
    public static class Cif<T> extends Ccase<T> {

        /* renamed from: case, reason: not valid java name */
        public final Class<?> f28322case;

        /* renamed from: do, reason: not valid java name */
        public final ParameterizedType f28323do;

        /* renamed from: else, reason: not valid java name */
        public Ccase<?> f28324else;

        /* renamed from: for, reason: not valid java name */
        public final Class<?> f28325for;

        /* renamed from: if, reason: not valid java name */
        public final Class<?> f28326if;

        /* renamed from: new, reason: not valid java name */
        public final net.minidev.asm.Cdo<?> f28327new;

        /* renamed from: try, reason: not valid java name */
        public final Type f28328try;

        public Cif(Ctry ctry, ParameterizedType parameterizedType) {
            super(ctry);
            this.f28323do = parameterizedType;
            Class<?> cls = (Class) parameterizedType.getRawType();
            this.f28326if = cls;
            if (cls.isInterface()) {
                this.f28325for = net.minidev.json.Cdo.class;
            } else {
                this.f28325for = cls;
            }
            this.f28327new = net.minidev.asm.Cdo.m31544try(this.f28325for, wo0.f7582do);
            Type type = parameterizedType.getActualTypeArguments()[0];
            this.f28328try = type;
            if (type instanceof Class) {
                this.f28322case = (Class) type;
            } else {
                this.f28322case = (Class) ((ParameterizedType) type).getRawType();
            }
        }

        @Override // net.minidev.json.writer.Ccase
        public void addValue(Object obj, Object obj2) {
            ((List) obj).add(wo0.m9254if(obj2, this.f28322case));
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createArray() {
            return this.f28327new.m31545break();
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            if (this.f28324else == null) {
                this.f28324else = this.base.m31741for(this.f28323do.getActualTypeArguments()[0]);
            }
            return this.f28324else;
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            if (this.f28324else == null) {
                this.f28324else = this.base.m31741for(this.f28323do.getActualTypeArguments()[0]);
            }
            return this.f28324else;
        }
    }

    /* renamed from: net.minidev.json.writer.for$new, reason: invalid class name */
    public static class Cnew<T> extends Ccase<T> {

        /* renamed from: case, reason: not valid java name */
        public final Type f28329case;

        /* renamed from: do, reason: not valid java name */
        public final ParameterizedType f28330do;

        /* renamed from: else, reason: not valid java name */
        public final Class<?> f28331else;

        /* renamed from: for, reason: not valid java name */
        public final Class<?> f28332for;

        /* renamed from: goto, reason: not valid java name */
        public final Class<?> f28333goto;

        /* renamed from: if, reason: not valid java name */
        public final Class<?> f28334if;

        /* renamed from: new, reason: not valid java name */
        public final net.minidev.asm.Cdo<?> f28335new;

        /* renamed from: this, reason: not valid java name */
        public Ccase<?> f28336this;

        /* renamed from: try, reason: not valid java name */
        public final Type f28337try;

        public Cnew(Ctry ctry, ParameterizedType parameterizedType) {
            super(ctry);
            this.f28330do = parameterizedType;
            Class<?> cls = (Class) parameterizedType.getRawType();
            this.f28334if = cls;
            if (cls.isInterface()) {
                this.f28332for = net.minidev.json.Cif.class;
            } else {
                this.f28332for = cls;
            }
            this.f28335new = net.minidev.asm.Cdo.m31544try(this.f28332for, wo0.f7582do);
            Type type = parameterizedType.getActualTypeArguments()[0];
            this.f28337try = type;
            Type type2 = parameterizedType.getActualTypeArguments()[1];
            this.f28329case = type2;
            if (type instanceof Class) {
                this.f28331else = (Class) type;
            } else {
                this.f28331else = (Class) ((ParameterizedType) type).getRawType();
            }
            if (type2 instanceof Class) {
                this.f28333goto = (Class) type2;
            } else {
                this.f28333goto = (Class) ((ParameterizedType) type2).getRawType();
            }
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createObject() {
            try {
                return this.f28332for.newInstance();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (InstantiationException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        @Override // net.minidev.json.writer.Ccase
        public Type getType(String str) {
            return this.f28330do;
        }

        @Override // net.minidev.json.writer.Ccase
        public Object getValue(Object obj, String str) {
            return ((Map) obj).get(wo0.m9254if(str, this.f28331else));
        }

        @Override // net.minidev.json.writer.Ccase
        public void setValue(Object obj, String str, Object obj2) {
            ((Map) obj).put(wo0.m9254if(str, this.f28331else), wo0.m9254if(obj2, this.f28333goto));
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            if (this.f28336this == null) {
                this.f28336this = this.base.m31741for(this.f28329case);
            }
            return this.f28336this;
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            if (this.f28336this == null) {
                this.f28336this = this.base.m31741for(this.f28329case);
            }
            return this.f28336this;
        }
    }
}
