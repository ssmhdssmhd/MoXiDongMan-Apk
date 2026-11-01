package android.support.v4;

import android.graphics.PointF;
import android.view.View;
import com.scwang.smartrefresh.layout.api.ScrollBoundaryDecider;

/* loaded from: classes2.dex */
public class ls1 implements ScrollBoundaryDecider {

    /* renamed from: do, reason: not valid java name */
    public PointF f3762do;

    /* renamed from: for, reason: not valid java name */
    public boolean f3763for = true;

    /* renamed from: if, reason: not valid java name */
    public ScrollBoundaryDecider f3764if;

    @Override // com.scwang.smartrefresh.layout.api.ScrollBoundaryDecider
    public boolean canLoadMore(View view) {
        ScrollBoundaryDecider scrollBoundaryDecider = this.f3764if;
        return scrollBoundaryDecider != null ? scrollBoundaryDecider.canLoadMore(view) : i02.m3189do(view, this.f3762do, this.f3763for);
    }

    @Override // com.scwang.smartrefresh.layout.api.ScrollBoundaryDecider
    public boolean canRefresh(View view) {
        ScrollBoundaryDecider scrollBoundaryDecider = this.f3764if;
        return scrollBoundaryDecider != null ? scrollBoundaryDecider.canRefresh(view) : i02.m3193if(view, this.f3762do);
    }
}
