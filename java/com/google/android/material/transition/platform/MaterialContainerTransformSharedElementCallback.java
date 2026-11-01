package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.support.v4.jr;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.R;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
public class MaterialContainerTransformSharedElementCallback extends SharedElementCallback {

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private static WeakReference<View> f13407case;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Rect f13411new;

    /* renamed from: do, reason: not valid java name */
    private boolean f13408do = true;

    /* renamed from: if, reason: not valid java name */
    private boolean f13410if = true;

    /* renamed from: for, reason: not valid java name */
    private boolean f13409for = false;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private ShapeProvider f13412try = new Cnew();

    public interface ShapeProvider {
        @Nullable
        ShapeAppearanceModel provideShape(@NonNull View view);
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$do, reason: invalid class name */
    public class Cdo extends Cthrow {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Window f13413do;

        public Cdo(Window window) {
            this.f13413do = window;
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m14803this(this.f13413do);
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m14799goto(this.f13413do);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$for, reason: invalid class name */
    public class Cfor extends Cthrow {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Window f13415do;

        public Cfor(Window window) {
            this.f13415do = window;
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m14799goto(this.f13415do);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$if, reason: invalid class name */
    public class Cif extends Cthrow {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f13417do;

        public Cif(Activity activity) {
            this.f13417do = activity;
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            View view;
            if (MaterialContainerTransformSharedElementCallback.f13407case != null && (view = (View) MaterialContainerTransformSharedElementCallback.f13407case.get()) != null) {
                view.setAlpha(1.0f);
                WeakReference unused = MaterialContainerTransformSharedElementCallback.f13407case = null;
            }
            this.f13417do.finish();
            this.f13417do.overridePendingTransition(0, 0);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$new, reason: invalid class name */
    public static class Cnew implements ShapeProvider {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.ShapeProvider
        @Nullable
        public ShapeAppearanceModel provideShape(@NonNull View view) {
            if (view instanceof Shapeable) {
                return ((Shapeable) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m14795const(Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof Cgoto) {
            Cgoto cgoto = (Cgoto) sharedElementEnterTransition;
            if (!this.f13409for) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f13410if) {
                m14802super(window, cgoto);
                cgoto.addListener(new Cdo(window));
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m14797final(Activity activity, Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof Cgoto) {
            Cgoto cgoto = (Cgoto) sharedElementReturnTransition;
            cgoto.i(true);
            cgoto.addListener(new Cif(activity));
            if (this.f13410if) {
                m14802super(window, cgoto);
                cgoto.addListener(new Cfor(window));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static void m14799goto(Window window) {
        window.getDecorView().getBackground().mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    /* renamed from: super, reason: not valid java name */
    private static void m14802super(Window window, Cgoto cgoto) {
        if (cgoto.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(cgoto.getDuration());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static void m14803this(Window window) {
        window.getDecorView().getBackground().mutate().clearColorFilter();
    }

    /* renamed from: break, reason: not valid java name */
    public void m14804break(@Nullable ShapeProvider shapeProvider) {
        this.f13412try = shapeProvider;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m14805case() {
        return this.f13409for;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14806catch(boolean z) {
        this.f13409for = z;
    }

    /* renamed from: class, reason: not valid java name */
    public void m14807class(boolean z) {
        this.f13410if = z;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m14808else() {
        return this.f13410if;
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f13407case = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        ShapeAppearanceModel shapeAppearanceModelProvideShape;
        View viewOnCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (viewOnCreateSnapshotView != null && (weakReference = f13407case) != null && this.f13412try != null && (view = weakReference.get()) != null && (shapeAppearanceModelProvideShape = this.f13412try.provideShape(view)) != null) {
            viewOnCreateSnapshotView.setTag(R.id.mtrl_motion_snapshot_view, shapeAppearanceModelProvideShape);
        }
        return viewOnCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity activityM4070do;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activityM4070do = jr.m4070do(view.getContext())) == null) {
            return;
        }
        Window window = activityM4070do.getWindow();
        if (this.f13408do) {
            m14795const(window);
        } else {
            m14797final(activityM4070do, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty()) {
            View view = list2.get(0);
            int i = R.id.mtrl_motion_snapshot_view;
            if (view.getTag(i) instanceof View) {
                list2.get(0).setTag(i, null);
            }
        }
        if (!this.f13408do && !list2.isEmpty()) {
            this.f13411new = TransitionUtils.m14812catch(list2.get(0));
        }
        this.f13408do = false;
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.f13408do || list2.isEmpty() || this.f13411new == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f13411new.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f13411new.height(), 1073741824));
        Rect rect = this.f13411new;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public ShapeProvider m14809try() {
        return this.f13412try;
    }
}
