package kotlin.reflect;

import android.support.v4.ba2;
import android.support.v4.hw0;
import android.support.v4.iz1;
import android.support.v4.ke0;
import android.support.v4.m41;
import android.support.v4.qp0;
import android.support.v4.qq0;
import android.support.v4.w31;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.collections.Cfinal;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.KTypeBase;
import kotlin.sequences.Cbreak;
import kotlin.sequences.Cclass;
import kotlin.sequences.Sequence;
import kotlin.text.Creturn;
import okhttp3.HttpUrl;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u001a\u0016\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0003\u001a\"\u0010\n\u001a\u00020\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0003\u001a\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002\" \u0010\u0012\u001a\u00020\u0003*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f\" \u0010\u0012\u001a\u00020\u0003*\u00020\b8B@\u0003X\u0083\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lkotlin/reflect/KType;", "", "forceWrapper", "Ljava/lang/reflect/Type;", "for", "Ljava/lang/Class;", "jClass", "", "Landroid/support/v4/qq0;", "arguments", "try", "type", "", "break", "else", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "javaType", "case", "(Landroid/support/v4/qq0;)Ljava/lang/reflect/Type;", "(Landroid/support/v4/qq0;)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.reflect.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0005\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00000\u00002\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Ljava/lang/Class;", "p1", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Class;)Ljava/lang/Class;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.else$do, reason: invalid class name */
    public static final /* synthetic */ class Cdo extends ke0 implements Function1<Class<? extends Object>, Class<?>> {
        public static final Cdo INSTANCE = new Cdo();

        public Cdo() {
            super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Class<?> invoke2(@m41 Class<?> p1) {
            Csuper.m30700throw(p1, "p1");
            return p1.getComponentType();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Class<?> invoke(Class<? extends Object> cls) {
            return invoke2((Class<?>) cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static final String m30996break(Type type) {
        String name;
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            Sequence sequenceM31026super = Cbreak.m31026super(type, Cdo.INSTANCE);
            name = ((Class) kotlin.sequences.Celse.l0(sequenceM31026super)).getName() + Creturn.t1(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, Cclass.m(sequenceM31026super));
        } else {
            name = cls.getName();
        }
        Csuper.m30696super(name, "if (type.isArray) {\n    …\n        } else type.name");
        return name;
    }

    /* renamed from: case, reason: not valid java name */
    private static final Type m30997case(qq0 qq0Var) {
        Cfor cforM6649goto = qq0Var.m6649goto();
        if (cforM6649goto == null) {
            return Cgoto.f27953new.m31007do();
        }
        KType kTypeM6648else = qq0Var.m6648else();
        Csuper.m30672const(kTypeM6648else);
        int i = ba2.f398if[cforM6649goto.ordinal()];
        if (i == 1) {
            return m31000for(kTypeM6648else, true);
        }
        if (i == 2) {
            return new Cgoto(null, m31000for(kTypeM6648else, true));
        }
        if (i == 3) {
            return new Cgoto(m31000for(kTypeM6648else, true), null);
        }
        throw new w31();
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public static final Type m30999else(@m41 KType javaType) {
        Type javaType2;
        Csuper.m30700throw(javaType, "$this$javaType");
        return (!(javaType instanceof KTypeBase) || (javaType2 = ((KTypeBase) javaType).getJavaType()) == null) ? m31003new(javaType, false, 1, null) : javaType2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Cthis
    /* renamed from: for, reason: not valid java name */
    public static final Type m31000for(KType kType, boolean z) {
        int i;
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameter) {
            return new Ccase((KTypeParameter) classifier);
        }
        if (!(classifier instanceof KClass)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
        }
        KClass kClass = (KClass) classifier;
        Class clsM6642try = z ? qp0.m6642try(kClass) : qp0.m6637for(kClass);
        List<qq0> arguments = kType.getArguments();
        if (arguments.isEmpty()) {
            return clsM6642try;
        }
        if (!clsM6642try.isArray()) {
            return m31005try(clsM6642try, arguments);
        }
        Class<?> componentType = clsM6642try.getComponentType();
        Csuper.m30696super(componentType, "jClass.componentType");
        if (componentType.isPrimitive()) {
            return clsM6642try;
        }
        qq0 qq0Var = (qq0) Cfinal.k4(arguments);
        if (qq0Var == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
        }
        Cfor cforM6647do = qq0Var.m6647do();
        KType kTypeM6650if = qq0Var.m6650if();
        if (cforM6647do == null || (i = ba2.f397do[cforM6647do.ordinal()]) == 1) {
            return clsM6642try;
        }
        if (i != 2 && i != 3) {
            throw new w31();
        }
        Csuper.m30672const(kTypeM6650if);
        Type typeM31003new = m31003new(kTypeM6650if, false, 1, null);
        return typeM31003new instanceof Class ? clsM6642try : new kotlin.reflect.Cdo(typeM31003new);
    }

    @Cthis
    /* renamed from: goto, reason: not valid java name */
    private static /* synthetic */ void m31001goto(qq0 qq0Var) {
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ Type m31003new(KType kType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return m31000for(kType, z);
    }

    @iz1(version = "1.4")
    @Cthis
    @hw0
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m31004this(KType kType) {
    }

    @Cthis
    /* renamed from: try, reason: not valid java name */
    private static final Type m31005try(Class<?> cls, List<qq0> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m30997case((qq0) it.next()));
            }
            return new Ctry(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(list, 10));
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(m30997case((qq0) it2.next()));
            }
            return new Ctry(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        Type typeM31005try = m31005try(declaringClass, list.subList(length, list.size()));
        List<qq0> listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(kotlin.collections.Cwhile.l(listSubList, 10));
        Iterator<T> it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(m30997case((qq0) it3.next()));
        }
        return new Ctry(cls, typeM31005try, arrayList3);
    }
}
