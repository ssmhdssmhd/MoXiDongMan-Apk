package kotlin.jvm.internal;

import android.support.v4.c92;
import android.support.v4.dm1;
import android.support.v4.iz1;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.qp0;
import android.support.v4.qr0;
import android.support.v4.rx;
import android.support.v4.sr0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.Function;
import kotlin.collections.Cinterface;
import kotlin.collections.Cthrow;
import kotlin.collections.Cvolatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.Cnew;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.text.Cstatic;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018\u0000 R2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0010B\u0013\u0012\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u000f¢\u0006\u0004\bP\u0010QJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0017J\u0013\u0010\n\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R \u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u000f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016R \u0010\u001e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b0\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\"\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001f0\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001dR \u0010#\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u001dR\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020%0$8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\"\u00100\u001a\b\u0012\u0004\u0012\u00020,0$8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b.\u0010/\u001a\u0004\b-\u0010'R\"\u00104\u001a\b\u0012\u0004\u0012\u0002010$8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b3\u0010/\u001a\u0004\b2\u0010'R*\u00107\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00010$8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b6\u0010/\u001a\u0004\b5\u0010'R\u001e\u0010<\u001a\u0004\u0018\u0001088V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b;\u0010/\u001a\u0004\b9\u0010:R\u001c\u0010=\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b?\u0010/\u001a\u0004\b=\u0010>R\u001c\u0010@\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bA\u0010/\u001a\u0004\b@\u0010>R\u001c\u0010B\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bC\u0010/\u001a\u0004\bB\u0010>R\u001c\u0010D\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bE\u0010/\u001a\u0004\bD\u0010>R\u001c\u0010F\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bG\u0010/\u001a\u0004\bF\u0010>R\u001c\u0010H\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bI\u0010/\u001a\u0004\bH\u0010>R\u001c\u0010J\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bK\u0010/\u001a\u0004\bJ\u0010>R\u001c\u0010L\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bM\u0010/\u001a\u0004\bL\u0010>R\u001c\u0010N\u001a\u00020\u00078V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bO\u0010/\u001a\u0004\bN\u0010>¨\u0006S"}, d2 = {"Lkotlin/jvm/internal/const;", "Lkotlin/reflect/KClass;", "", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "", "new", ES6Iterator.VALUE_PROPERTY, "", "isInstance", "other", "equals", "", "hashCode", "", "toString", "Ljava/lang/Class;", "do", "Ljava/lang/Class;", "getJClass", "()Ljava/lang/Class;", "jClass", "getSimpleName", "()Ljava/lang/String;", "simpleName", "getQualifiedName", "qualifiedName", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "members", "Lkotlin/reflect/KFunction;", "getConstructors", "constructors", "getNestedClasses", "nestedClasses", "", "", "getAnnotations", "()Ljava/util/List;", "annotations", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "getTypeParameters$annotations", "()V", "typeParameters", "Lkotlin/reflect/KType;", "getSupertypes", "getSupertypes$annotations", "supertypes", "getSealedSubclasses", "getSealedSubclasses$annotations", "sealedSubclasses", "Lkotlin/reflect/new;", "getVisibility", "()Lkotlin/reflect/new;", "getVisibility$annotations", "visibility", "isFinal", "()Z", "isFinal$annotations", "isOpen", "isOpen$annotations", "isAbstract", "isAbstract$annotations", "isSealed", "isSealed$annotations", "isData", "isData$annotations", "isInner", "isInner$annotations", "isCompanion", "isCompanion$annotations", "isFun", "isFun$annotations", "isValue", "isValue$annotations", "<init>", "(Ljava/lang/Class;)V", "else", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst implements KClass<Object>, ClassBasedDeclarationContainer {

    /* renamed from: case, reason: not valid java name */
    private static final Map<String, String> f27872case;

    /* renamed from: else, reason: not valid java name */
    @m41
    public static final Cdo f27873else = new Cdo(null);

    /* renamed from: for, reason: not valid java name */
    private static final HashMap<String, String> f27874for;

    /* renamed from: if, reason: not valid java name */
    private static final Map<Class<? extends Function<?>>, Integer> f27875if;

    /* renamed from: new, reason: not valid java name */
    private static final HashMap<String, String> f27876new;

    /* renamed from: try, reason: not valid java name */
    private static final HashMap<String, String> f27877try;

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Class<?> f27878do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002J\u001c\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002R.\u0010\r\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000b0\u0002\u0012\u0004\u0012\u00020\f0\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR2\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R2\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R2\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u000e¨\u0006\u0018"}, d2 = {"kotlin/jvm/internal/const$do", "", "Ljava/lang/Class;", "jClass", "", "if", "do", ES6Iterator.VALUE_PROPERTY, "", "for", "", "Lkotlin/Function;", "", "FUNCTION_CLASSES", "Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "classFqNames", "Ljava/util/HashMap;", "primitiveFqNames", "primitiveWrapperFqNames", "simpleNames", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.jvm.internal.const$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @z41
        /* renamed from: do, reason: not valid java name */
        public final String m30659do(@m41 Class<?> jClass) {
            String str;
            Csuper.m30700throw(jClass, "jClass");
            String str2 = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (!jClass.isArray()) {
                String str3 = (String) Cconst.f27877try.get(jClass.getName());
                return str3 != null ? str3 : jClass.getCanonicalName();
            }
            Class<?> componentType = jClass.getComponentType();
            Csuper.m30696super(componentType, "componentType");
            if (componentType.isPrimitive() && (str = (String) Cconst.f27877try.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            return str2 != null ? str2 : "kotlin.Array";
        }

        /* renamed from: for, reason: not valid java name */
        public final boolean m30660for(@z41 Object obj, @m41 Class<?> jClass) {
            Csuper.m30700throw(jClass, "jClass");
            Map map = Cconst.f27875if;
            Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return k92.m4319package(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = qp0.m6642try(qp0.m6636else(jClass));
            }
            return jClass.isInstance(obj);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0043  */
        @z41
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String m30661if(@m41 Class<?> jClass) {
            String str;
            String strC4;
            Csuper.m30700throw(jClass, "jClass");
            String str2 = null;
            if (!jClass.isAnonymousClass()) {
                if (jClass.isLocalClass()) {
                    String name = jClass.getSimpleName();
                    Method enclosingMethod = jClass.getEnclosingMethod();
                    if (enclosingMethod != null) {
                        Csuper.m30696super(name, "name");
                        strC4 = Cstatic.C4(name, enclosingMethod.getName() + "$", null, 2, null);
                        if (strC4 == null) {
                            Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
                            if (enclosingConstructor != null) {
                                Csuper.m30696super(name, "name");
                                strC4 = Cstatic.C4(name, enclosingConstructor.getName() + "$", null, 2, null);
                            } else {
                                strC4 = null;
                            }
                        }
                    }
                    if (strC4 != null) {
                        return strC4;
                    }
                    Csuper.m30696super(name, "name");
                    return Cstatic.B4(name, '$', null, 2, null);
                }
                if (!jClass.isArray()) {
                    String str3 = (String) Cconst.f27872case.get(jClass.getName());
                    return str3 != null ? str3 : jClass.getSimpleName();
                }
                Class<?> componentType = jClass.getComponentType();
                Csuper.m30696super(componentType, "componentType");
                if (componentType.isPrimitive() && (str = (String) Cconst.f27872case.get(componentType.getName())) != null) {
                    str2 = str + "Array";
                }
                if (str2 == null) {
                    return "Array";
                }
            }
            return str2;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = 0;
        List listM30181instanceof = Cthrow.m30181instanceof(Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class);
        ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(listM30181instanceof, 10));
        for (Object obj : listM30181instanceof) {
            int i2 = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            arrayList.add(c92.m819do((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f27875if = Cinterface.O(arrayList);
        HashMap<String, String> map = new HashMap<>();
        map.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        f27874for = map;
        HashMap<String, String> map2 = new HashMap<>();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        f27876new = map2;
        HashMap<String, String> map3 = new HashMap<>();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        Csuper.m30696super(collectionValues, "primitiveFqNames.values");
        for (String kotlinName : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            Csuper.m30696super(kotlinName, "kotlinName");
            sb.append(Cstatic.F4(kotlinName, Ctry.f28883do, null, 2, null));
            sb.append("CompanionObject");
            qb1 qb1VarM819do = c92.m819do(sb.toString(), kotlinName + ".Companion");
            map3.put(qb1VarM819do.getFirst(), qb1VarM819do.getSecond());
        }
        for (Map.Entry<Class<? extends Function<?>>, Integer> entry : f27875if.entrySet()) {
            map3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        f27877try = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(Cvolatile.m30270break(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), Cstatic.F4((String) entry2.getValue(), Ctry.f28883do, null, 2, null));
        }
        f27872case = linkedHashMap;
    }

    public Cconst(@m41 Class<?> jClass) {
        Csuper.m30700throw(jClass, "jClass");
        this.f27878do = jClass;
    }

    @iz1(version = "1.1")
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ void m30642break() {
    }

    @iz1(version = "1.1")
    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ void m30643case() {
    }

    @iz1(version = "1.1")
    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ void m30644catch() {
    }

    @iz1(version = "1.1")
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ void m30645class() {
    }

    @iz1(version = "1.4")
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m30646const() {
    }

    @iz1(version = "1.1")
    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ void m30648else() {
    }

    @iz1(version = "1.1")
    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ void m30649final() {
    }

    @iz1(version = "1.1")
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ void m30651goto() {
    }

    /* renamed from: new, reason: not valid java name */
    private final Void m30653new() {
        throw new sr0();
    }

    @iz1(version = "1.1")
    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ void m30654super() {
    }

    @iz1(version = "1.1")
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m30655this() {
    }

    @iz1(version = "1.1")
    /* renamed from: throw, reason: not valid java name */
    public static /* synthetic */ void m30656throw() {
    }

    @iz1(version = "1.3")
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ void m30657try() {
    }

    @iz1(version = "1.5")
    /* renamed from: while, reason: not valid java name */
    public static /* synthetic */ void m30658while() {
    }

    @Override // kotlin.reflect.KClass
    public boolean equals(@z41 Object obj) {
        return (obj instanceof Cconst) && Csuper.m30676else(qp0.m6642try(this), qp0.m6642try((KClass) obj));
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @m41
    public List<Annotation> getAnnotations() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @m41
    public Collection<KFunction<Object>> getConstructors() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @m41
    public Class<?> getJClass() {
        return this.f27878do;
    }

    @Override // kotlin.reflect.KClass, kotlin.reflect.KDeclarationContainer
    @m41
    public Collection<KCallable<?>> getMembers() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @m41
    public Collection<KClass<?>> getNestedClasses() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @z41
    public Object getObjectInstance() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @z41
    public String getQualifiedName() {
        return f27873else.m30659do(getJClass());
    }

    @Override // kotlin.reflect.KClass
    @m41
    public List<KClass<? extends Object>> getSealedSubclasses() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @z41
    public String getSimpleName() {
        return f27873else.m30661if(getJClass());
    }

    @Override // kotlin.reflect.KClass
    @m41
    public List<KType> getSupertypes() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @m41
    public List<KTypeParameter> getTypeParameters() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @z41
    public Cnew getVisibility() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public int hashCode() {
        return qp0.m6642try(this).hashCode();
    }

    @Override // kotlin.reflect.KClass
    public boolean isAbstract() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isCompanion() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isData() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFinal() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFun() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isInner() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    @iz1(version = "1.1")
    public boolean isInstance(@z41 Object obj) {
        return f27873else.m30660for(obj, getJClass());
    }

    @Override // kotlin.reflect.KClass
    public boolean isOpen() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isSealed() {
        m30653new();
        throw new qr0();
    }

    @Override // kotlin.reflect.KClass
    public boolean isValue() {
        m30653new();
        throw new qr0();
    }

    @m41
    public String toString() {
        return getJClass().toString() + dm1.f1082if;
    }
}
