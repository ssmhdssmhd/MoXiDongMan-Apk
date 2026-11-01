package net.minidev.json.writer;

import android.support.v4.o;
import android.support.v4.sr;
import android.support.v4.wo0;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.HashMap;

/* renamed from: net.minidev.json.writer.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif<T> extends Ccase<T> {

    /* renamed from: do, reason: not valid java name */
    public static Ccase<Date> f28340do = new Cdo(null);

    /* renamed from: net.minidev.json.writer.if$do, reason: invalid class name */
    public class Cdo extends net.minidev.json.writer.Cdo<Date> {
        public Cdo(Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        public Date convert(Object obj) {
            return sr.m7567for(obj);
        }
    }

    /* renamed from: net.minidev.json.writer.if$for, reason: invalid class name */
    public static class Cfor<T> extends Ccase<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<T> f28341do;

        /* renamed from: for, reason: not valid java name */
        public final HashMap<String, o> f28342for;

        /* renamed from: if, reason: not valid java name */
        public final net.minidev.asm.Cdo<T> f28343if;

        public Cfor(Ctry ctry, Class<T> cls) throws ClassNotFoundException, SecurityException {
            super(ctry);
            this.f28341do = cls;
            net.minidev.asm.Cdo<T> cdoM31544try = net.minidev.asm.Cdo.m31544try(cls, wo0.f7582do);
            this.f28343if = cdoM31544try;
            this.f28342for = cdoM31544try.m31552goto();
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createObject() {
            return this.f28343if.m31545break();
        }

        @Override // net.minidev.json.writer.Ccase
        public Type getType(String str) {
            return this.f28342for.get(str).m5428do();
        }

        @Override // net.minidev.json.writer.Ccase
        public Object getValue(Object obj, String str) {
            return this.f28343if.m31551for(obj, str);
        }

        @Override // net.minidev.json.writer.Ccase
        public void setValue(Object obj, String str, Object obj2) {
            this.f28343if.m31548class(obj, str, obj2);
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            o oVar = this.f28342for.get(str);
            if (oVar != null) {
                return this.base.m31741for(oVar.m5428do());
            }
            throw new RuntimeException("Can not set " + str + " field in " + this.f28341do);
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            o oVar = this.f28342for.get(str);
            if (oVar != null) {
                return this.base.m31741for(oVar.m5428do());
            }
            throw new RuntimeException("Can not set " + str + " field in " + this.f28341do);
        }
    }

    /* renamed from: net.minidev.json.writer.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0380if<T> extends Ccase<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<T> f28344do;

        /* renamed from: for, reason: not valid java name */
        public final HashMap<String, o> f28345for;

        /* renamed from: if, reason: not valid java name */
        public final net.minidev.asm.Cdo<T> f28346if;

        public C0380if(Ctry ctry, Class<T> cls) throws ClassNotFoundException, SecurityException {
            super(ctry);
            this.f28344do = cls;
            net.minidev.asm.Cdo<T> cdoM31544try = net.minidev.asm.Cdo.m31544try(cls, wo0.f7582do);
            this.f28346if = cdoM31544try;
            this.f28345for = cdoM31544try.m31552goto();
        }

        @Override // net.minidev.json.writer.Ccase
        public Object createObject() {
            return this.f28346if.m31545break();
        }

        @Override // net.minidev.json.writer.Ccase
        public Type getType(String str) {
            return this.f28345for.get(str).m5428do();
        }

        @Override // net.minidev.json.writer.Ccase
        public Object getValue(Object obj, String str) {
            return this.f28346if.m31551for(obj, str);
        }

        @Override // net.minidev.json.writer.Ccase
        public void setValue(Object obj, String str, Object obj2) {
            this.f28346if.m31548class(obj, str, obj2);
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startArray(String str) {
            o oVar = this.f28345for.get(str);
            if (oVar != null) {
                return this.base.m31741for(oVar.m5428do());
            }
            throw new RuntimeException("Can not find Array '" + str + "' field in " + this.f28344do);
        }

        @Override // net.minidev.json.writer.Ccase
        public Ccase<?> startObject(String str) {
            o oVar = this.f28345for.get(str);
            if (oVar != null) {
                return this.base.m31741for(oVar.m5428do());
            }
            throw new RuntimeException("Can not find Object '" + str + "' field in " + this.f28344do);
        }
    }

    public Cif(Ctry ctry) {
        super(ctry);
    }

    @Override // net.minidev.json.writer.Ccase
    public abstract Object getValue(Object obj, String str);
}
