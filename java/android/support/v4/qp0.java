package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.uc.crashsdk.export.LogType;
import java.lang.annotation.Annotation;
import java.util.Objects;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.KClass;

@wp0(name = "JvmClassMappingKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u001b\n\u0002\b\u0004\u001a!\u0010\u0004\u001a\u00020\u0003\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005\"/\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00068G@\u0006¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t\"/\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\t\"-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006¢\u0006\u0006\u001a\u0004\b\u000f\u0010\t\"-\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00078G@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012\"(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u00008Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"=\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068Ç\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u000b\u001a\u0004\b\u0017\u0010\t\")\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0019*\u00028\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "", "break", "([Ljava/lang/Object;)Z", "Lkotlin/reflect/KClass;", "Ljava/lang/Class;", "for", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/KClass;)V", LogType.JAVA_TYPE, "case", "javaPrimitiveType", "try", "javaObjectType", "else", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "kotlin", "if", "(Ljava/lang/Object;)Ljava/lang/Class;", "javaClass", "goto", "getRuntimeClassOfKClassInstance$annotations", "", "do", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;", "annotationClass", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class qp0 {
    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ <T> boolean m6633break(Object[] isArrayOf) {
        Csuper.m30700throw(isArrayOf, "$this$isArrayOf");
        Csuper.m30674default(4, ExifInterface.GPS_DIRECTION_TRUE);
        return Object.class.isAssignableFrom(isArrayOf.getClass().getComponentType());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @z41
    /* renamed from: case, reason: not valid java name */
    public static final <T> Class<T> m6634case(@m41 KClass<T> javaPrimitiveType) {
        Csuper.m30700throw(javaPrimitiveType, "$this$javaPrimitiveType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaPrimitiveType).getJClass();
        if (cls.isPrimitive()) {
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public static final <T extends Annotation> KClass<? extends T> m6635do(@m41 T annotationClass) {
        Csuper.m30700throw(annotationClass, "$this$annotationClass");
        Class<? extends Annotation> clsAnnotationType = annotationClass.annotationType();
        Csuper.m30696super(clsAnnotationType, "(this as java.lang.annot…otation).annotationType()");
        KClass<? extends T> kClassM6636else = m6636else(clsAnnotationType);
        Objects.requireNonNull(kClassM6636else, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>");
        return kClassM6636else;
    }

    @m41
    @wp0(name = "getKotlinClass")
    /* renamed from: else, reason: not valid java name */
    public static final <T> KClass<T> m6636else(@m41 Class<T> kotlin2) {
        Csuper.m30700throw(kotlin2, "$this$kotlin");
        return dm1.m1426new(kotlin2);
    }

    @m41
    @wp0(name = "getJavaClass")
    /* renamed from: for, reason: not valid java name */
    public static final <T> Class<T> m6637for(@m41 KClass<T> java) {
        Csuper.m30700throw(java, "$this$java");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) java).getJClass();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    @m41
    @wp0(name = "getRuntimeClassOfKClassInstance")
    /* renamed from: goto, reason: not valid java name */
    public static final <T> Class<KClass<T>> m6638goto(@m41 KClass<T> javaClass) {
        Csuper.m30700throw(javaClass, "$this$javaClass");
        return (Class<KClass<T>>) javaClass.getClass();
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final <T> Class<T> m6639if(@m41 T javaClass) {
        Csuper.m30700throw(javaClass, "$this$javaClass");
        return (Class<T>) javaClass.getClass();
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ void m6640new(KClass kClass) {
    }

    @Cfor(level = Ctry.ERROR, message = "Use 'java' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass.", replaceWith = @an1(expression = "(this as Any).javaClass", imports = {}))
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m6641this(KClass kClass) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @m41
    /* renamed from: try, reason: not valid java name */
    public static final <T> Class<T> m6642try(@m41 KClass<T> javaObjectType) {
        Csuper.m30700throw(javaObjectType, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaObjectType).getJClass();
        if (!cls.isPrimitive()) {
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                }
                break;
            case 104431:
                if (name.equals("int")) {
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                }
                break;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                }
                break;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                }
                break;
        }
        return cls;
    }
}
