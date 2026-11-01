package net.minidev.json.writer;

import android.support.v4.vx;
import android.support.v4.wx;
import android.support.v4.xx;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.minidev.json.Cdo;
import net.minidev.json.Cif;
import net.minidev.json.JSONAware;
import net.minidev.json.JSONAwareEx;
import net.minidev.json.writer.Cdo;
import net.minidev.json.writer.Cfor;
import net.minidev.json.writer.Cif;

/* renamed from: net.minidev.json.writer.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private final ConcurrentHashMap<Type, Ccase<?>> f28353do;

    /* renamed from: for, reason: not valid java name */
    public Ccase<JSONAwareEx> f28354for;

    /* renamed from: if, reason: not valid java name */
    public Ccase<JSONAwareEx> f28355if;

    public Ctry() {
        ConcurrentHashMap<Type, Ccase<?>> concurrentHashMap = new ConcurrentHashMap<>(100);
        this.f28353do = concurrentHashMap;
        concurrentHashMap.put(Date.class, Cif.f28340do);
        concurrentHashMap.put(int[].class, Cdo.f28299do);
        concurrentHashMap.put(Integer[].class, Cdo.f28304if);
        concurrentHashMap.put(short[].class, Cdo.f28299do);
        concurrentHashMap.put(Short[].class, Cdo.f28304if);
        concurrentHashMap.put(long[].class, Cdo.f28307this);
        concurrentHashMap.put(Long[].class, Cdo.f28294break);
        concurrentHashMap.put(byte[].class, Cdo.f28309try);
        concurrentHashMap.put(Byte[].class, Cdo.f28295case);
        concurrentHashMap.put(char[].class, Cdo.f28300else);
        concurrentHashMap.put(Character[].class, Cdo.f28303goto);
        concurrentHashMap.put(float[].class, Cdo.f28296catch);
        concurrentHashMap.put(Float[].class, Cdo.f28297class);
        concurrentHashMap.put(double[].class, Cdo.f28298const);
        concurrentHashMap.put(Double[].class, Cdo.f28301final);
        concurrentHashMap.put(boolean[].class, Cdo.f28306super);
        concurrentHashMap.put(Boolean[].class, Cdo.f28308throw);
        this.f28355if = new vx(this);
        this.f28354for = new xx(this);
        concurrentHashMap.put(JSONAwareEx.class, this.f28355if);
        concurrentHashMap.put(JSONAware.class, this.f28355if);
        concurrentHashMap.put(Cdo.class, this.f28355if);
        concurrentHashMap.put(Cif.class, this.f28355if);
    }

    /* renamed from: do, reason: not valid java name */
    public <T> Ccase<T> m31740do(Class<T> cls) {
        Ccase<T> wxVar = (Ccase) this.f28353do.get(cls);
        if (wxVar != null) {
            return wxVar;
        }
        if (cls instanceof Class) {
            if (Map.class.isAssignableFrom(cls) || List.class.isAssignableFrom(cls)) {
                wxVar = new wx<>(this, cls);
            }
            if (wxVar != null) {
                this.f28353do.put(cls, wxVar);
                return wxVar;
            }
        }
        Ccase<T> cwhile = cls.isArray() ? new Cdo.Cwhile<>(this, cls) : List.class.isAssignableFrom(cls) ? new Cfor.Cdo<>(this, cls) : Map.class.isAssignableFrom(cls) ? new Cfor.C0379for<>(this, cls) : new Cif.C0380if<>(this, cls);
        this.f28353do.putIfAbsent(cls, cwhile);
        return cwhile;
    }

    /* renamed from: for, reason: not valid java name */
    public <T> Ccase<T> m31741for(Type type) {
        return type instanceof ParameterizedType ? m31742if((ParameterizedType) type) : m31740do((Class) type);
    }

    /* renamed from: if, reason: not valid java name */
    public <T> Ccase<T> m31742if(ParameterizedType parameterizedType) {
        Ccase<T> cnew = (Ccase) this.f28353do.get(parameterizedType);
        if (cnew != null) {
            return cnew;
        }
        Class cls = (Class) parameterizedType.getRawType();
        if (List.class.isAssignableFrom(cls)) {
            cnew = new Cfor.Cif<>(this, parameterizedType);
        } else if (Map.class.isAssignableFrom(cls)) {
            cnew = new Cfor.Cnew<>(this, parameterizedType);
        }
        this.f28353do.putIfAbsent(parameterizedType, cnew);
        return cnew;
    }

    /* renamed from: new, reason: not valid java name */
    public <T> void m31743new(Class<T> cls, Ccase<T> ccase) {
        this.f28353do.put(cls, ccase);
    }

    /* renamed from: try, reason: not valid java name */
    public <T> void m31744try(Class<T> cls, String str, String str2) {
        Ccase<T> ccaseM31740do = m31740do(cls);
        if (!(ccaseM31740do instanceof Celse)) {
            Celse celse = new Celse(ccaseM31740do);
            m31743new(cls, celse);
            ccaseM31740do = celse;
        }
        ((Celse) ccaseM31740do).m31730if(str, str2);
    }
}
