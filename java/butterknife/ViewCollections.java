package butterknife;

import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.util.List;

/* loaded from: classes.dex */
public final class ViewCollections {
    private ViewCollections() {
    }

    @UiThread
    /* renamed from: break, reason: not valid java name */
    public static <T extends View, V> void m10360break(@NonNull List<T> list, @NonNull Setter<? super T, V> setter, @Nullable V v) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            setter.set(list.get(i), v, i);
        }
    }

    @SafeVarargs
    @UiThread
    /* renamed from: case, reason: not valid java name */
    public static <T extends View> void m10361case(@NonNull T[] tArr, @NonNull Action<? super T>... actionArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            for (Action<? super T> action : actionArr) {
                action.apply(tArr[i], i);
            }
        }
    }

    @UiThread
    /* renamed from: catch, reason: not valid java name */
    public static <T extends View, V> void m10362catch(@NonNull T[] tArr, @NonNull Property<? super T, V> property, @Nullable V v) {
        for (T t : tArr) {
            property.set(t, v);
        }
    }

    @UiThread
    /* renamed from: class, reason: not valid java name */
    public static <T extends View, V> void m10363class(@NonNull T[] tArr, @NonNull Setter<? super T, V> setter, @Nullable V v) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            setter.set(tArr[i], v, i);
        }
    }

    @UiThread
    /* renamed from: do, reason: not valid java name */
    public static <T extends View> void m10364do(@NonNull T t, @NonNull Action<? super T> action) {
        action.apply(t, 0);
    }

    @UiThread
    /* renamed from: else, reason: not valid java name */
    public static <T extends View, V> void m10365else(@NonNull T t, @NonNull Property<? super T, V> property, @Nullable V v) {
        property.set(t, v);
    }

    @UiThread
    /* renamed from: for, reason: not valid java name */
    public static <T extends View> void m10366for(@NonNull List<T> list, @NonNull Action<? super T> action) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            action.apply(list.get(i), i);
        }
    }

    @UiThread
    /* renamed from: goto, reason: not valid java name */
    public static <T extends View, V> void m10367goto(@NonNull T t, @NonNull Setter<? super T, V> setter, @Nullable V v) {
        setter.set(t, v, 0);
    }

    @SafeVarargs
    @UiThread
    /* renamed from: if, reason: not valid java name */
    public static <T extends View> void m10368if(@NonNull T t, @NonNull Action<? super T>... actionArr) {
        for (Action<? super T> action : actionArr) {
            action.apply(t, 0);
        }
    }

    @SafeVarargs
    @UiThread
    /* renamed from: new, reason: not valid java name */
    public static <T extends View> void m10369new(@NonNull List<T> list, @NonNull Action<? super T>... actionArr) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            for (Action<? super T> action : actionArr) {
                action.apply(list.get(i), i);
            }
        }
    }

    @UiThread
    /* renamed from: this, reason: not valid java name */
    public static <T extends View, V> void m10370this(@NonNull List<T> list, @NonNull Property<? super T, V> property, @Nullable V v) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            property.set(list.get(i), v);
        }
    }

    @UiThread
    /* renamed from: try, reason: not valid java name */
    public static <T extends View> void m10371try(@NonNull T[] tArr, @NonNull Action<? super T> action) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            action.apply(tArr[i], i);
        }
    }
}
