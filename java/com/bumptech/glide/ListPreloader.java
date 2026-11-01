package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Ccase;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {

    /* renamed from: case, reason: not valid java name */
    private int f9258case;

    /* renamed from: do, reason: not valid java name */
    private final int f9259do;

    /* renamed from: else, reason: not valid java name */
    private int f9260else;

    /* renamed from: for, reason: not valid java name */
    private final Cgoto f9261for;

    /* renamed from: if, reason: not valid java name */
    private final Cif f9263if;

    /* renamed from: new, reason: not valid java name */
    private final PreloadModelProvider<T> f9264new;

    /* renamed from: this, reason: not valid java name */
    private int f9265this;

    /* renamed from: try, reason: not valid java name */
    private final PreloadSizeProvider<T> f9266try;

    /* renamed from: goto, reason: not valid java name */
    private int f9262goto = -1;

    /* renamed from: break, reason: not valid java name */
    private boolean f9257break = true;

    public interface PreloadModelProvider<U> {
        @NonNull
        List<U> getPreloadItems(int i);

        @Nullable
        Celse<?> getPreloadRequestBuilder(@NonNull U u);
    }

    public interface PreloadSizeProvider<T> {
        @Nullable
        int[] getPreloadSize(@NonNull T t, int i, int i2);
    }

    /* renamed from: com.bumptech.glide.ListPreloader$do, reason: invalid class name */
    public static final class Cdo implements Target<Object> {

        /* renamed from: do, reason: not valid java name */
        public int f9267do;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        private Request f9268for;

        /* renamed from: if, reason: not valid java name */
        public int f9269if;

        @Override // com.bumptech.glide.request.target.Target
        @Nullable
        public Request getRequest() {
            return this.f9268for;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.f9269if, this.f9267do);
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onDestroy() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStart() {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStop() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void setRequest(@Nullable Request request) {
            this.f9268for = request;
        }
    }

    /* renamed from: com.bumptech.glide.ListPreloader$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Queue<Cdo> f9270do;

        public Cif(int i) {
            this.f9270do = Ccase.m12039case(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f9270do.offer(new Cdo());
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo m11070do(int i, int i2) {
            Cdo cdoPoll = this.f9270do.poll();
            this.f9270do.offer(cdoPoll);
            cdoPoll.f9269if = i;
            cdoPoll.f9267do = i2;
            return cdoPoll;
        }
    }

    public ListPreloader(@NonNull Cgoto cgoto, @NonNull PreloadModelProvider<T> preloadModelProvider, @NonNull PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this.f9261for = cgoto;
        this.f9264new = preloadModelProvider;
        this.f9266try = preloadSizeProvider;
        this.f9259do = i;
        this.f9263if = new Cif(i + 1);
    }

    /* renamed from: do, reason: not valid java name */
    private void m11065do() {
        for (int i = 0; i < this.f9263if.f9270do.size(); i++) {
            this.f9261for.m11225this(this.f9263if.m11070do(0, 0));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m11066for(int i, boolean z) {
        if (this.f9257break != z) {
            this.f9257break = z;
            m11065do();
        }
        m11067if(i, (z ? this.f9259do : -this.f9259do) + i);
    }

    /* renamed from: if, reason: not valid java name */
    private void m11067if(int i, int i2) {
        int iMin;
        int iMax;
        if (i < i2) {
            iMax = Math.max(this.f9258case, i);
            iMin = i2;
        } else {
            iMin = Math.min(this.f9260else, i);
            iMax = i2;
        }
        int iMin2 = Math.min(this.f9265this, iMin);
        int iMin3 = Math.min(this.f9265this, Math.max(0, iMax));
        if (i < i2) {
            for (int i3 = iMin3; i3 < iMin2; i3++) {
                m11068new(this.f9264new.getPreloadItems(i3), i3, true);
            }
        } else {
            for (int i4 = iMin2 - 1; i4 >= iMin3; i4--) {
                m11068new(this.f9264new.getPreloadItems(i4), i4, false);
            }
        }
        this.f9260else = iMin3;
        this.f9258case = iMin2;
    }

    /* renamed from: new, reason: not valid java name */
    private void m11068new(List<T> list, int i, boolean z) {
        int size = list.size();
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                m11069try(list.get(i2), i, i2);
            }
            return;
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            m11069try(list.get(i3), i, i3);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m11069try(@Nullable T t, int i, int i2) {
        int[] preloadSize;
        Celse<?> preloadRequestBuilder;
        if (t == null || (preloadSize = this.f9266try.getPreloadSize(t, i, i2)) == null || (preloadRequestBuilder = this.f9264new.getPreloadRequestBuilder(t)) == null) {
            return;
        }
        preloadRequestBuilder.j0(this.f9263if.m11070do(preloadSize[0], preloadSize[1]));
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f9265this = i3;
        int i4 = this.f9262goto;
        if (i > i4) {
            m11066for(i2 + i, true);
        } else if (i < i4) {
            m11066for(i, false);
        }
        this.f9262goto = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
