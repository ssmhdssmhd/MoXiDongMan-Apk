package android.support.v4;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Property;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class q01 {

    /* renamed from: for, reason: not valid java name */
    private static final String f5226for = "MotionSpec";

    /* renamed from: do, reason: not valid java name */
    private final SimpleArrayMap<String, r01> f5227do = new SimpleArrayMap<>();

    /* renamed from: if, reason: not valid java name */
    private final SimpleArrayMap<String, PropertyValuesHolder[]> f5228if = new SimpleArrayMap<>();

    /* renamed from: do, reason: not valid java name */
    private static void m6292do(@NonNull q01 q01Var, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            q01Var.m6300class(objectAnimator.getPropertyName(), objectAnimator.getValues());
            q01Var.m6301const(objectAnimator.getPropertyName(), r01.m6720if(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public static q01 m6293for(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m6295new(context, resourceId);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private PropertyValuesHolder[] m6294if(@NonNull PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public static q01 m6295new(@NonNull Context context, @AnimatorRes int i) throws Resources.NotFoundException {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return m6296try(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return m6296try(arrayList);
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't load animation resource ID #0x");
            sb.append(Integer.toHexString(i));
            return null;
        }
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    private static q01 m6296try(@NonNull List<Animator> list) {
        q01 q01Var = new q01();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m6292do(q01Var, list.get(i));
        }
        return q01Var;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m6297break(String str) {
        return this.f5228if.get(str) != null;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public <T> ObjectAnimator m6298case(@NonNull String str, @NonNull T t, @NonNull Property<T, ?> property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, m6302else(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        m6303goto(str).m6721do(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m6299catch(String str) {
        return this.f5227do.get(str) != null;
    }

    /* renamed from: class, reason: not valid java name */
    public void m6300class(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f5228if.put(str, propertyValuesHolderArr);
    }

    /* renamed from: const, reason: not valid java name */
    public void m6301const(String str, @Nullable r01 r01Var) {
        this.f5227do.put(str, r01Var);
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public PropertyValuesHolder[] m6302else(String str) {
        if (m6297break(str)) {
            return m6294if(this.f5228if.get(str));
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q01) {
            return this.f5227do.equals(((q01) obj).f5227do);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public r01 m6303goto(String str) {
        if (m6299catch(str)) {
            return this.f5227do.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f5227do.hashCode();
    }

    /* renamed from: this, reason: not valid java name */
    public long m6304this() {
        int size = this.f5227do.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            r01 r01VarValueAt = this.f5227do.valueAt(i);
            jMax = Math.max(jMax, r01VarValueAt.m6723for() + r01VarValueAt.m6725new());
        }
        return jMax;
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + MessageFormatter.DELIM_START + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f5227do + "}\n";
    }
}
