package android.support.v4;

import com.futuremind.recyclerviewfastscroll.viewprovider.Cif;
import com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior;

/* loaded from: classes.dex */
public class qx implements ViewBehavior {

    /* renamed from: do, reason: not valid java name */
    private final Cif f5526do;

    public qx(Cif cif) {
        this.f5526do = cif;
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior
    public void onHandleGrabbed() {
        this.f5526do.m12348if();
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior
    public void onHandleReleased() {
        this.f5526do.m12346do();
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior
    public void onScrollFinished() {
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior
    public void onScrollStarted() {
    }
}
