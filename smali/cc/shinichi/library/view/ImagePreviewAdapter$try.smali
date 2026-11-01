.class Lcc/shinichi/library/view/ImagePreviewAdapter$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/photoview/PhotoView;

.field public final synthetic for:Lcc/shinichi/library/view/ImagePreviewAdapter;

.field public final synthetic if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Lcc/shinichi/library/view/photoview/PhotoView;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->for:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->do:Lcc/shinichi/library/view/photoview/PhotoView;

    iput-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslationYChanged(Landroid/view/MotionEvent;F)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->for:Lcc/shinichi/library/view/ImagePreviewAdapter;

    invoke-static {p2}, Lcc/shinichi/library/view/ImagePreviewAdapter;->do(Lcc/shinichi/library/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/jd1;->if(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->for:Lcc/shinichi/library/view/ImagePreviewAdapter;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewAdapter;->do(Lcc/shinichi/library/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcc/shinichi/library/view/ImagePreviewActivity;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->for:Lcc/shinichi/library/view/ImagePreviewAdapter;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewAdapter;->do(Lcc/shinichi/library/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-virtual {p1, p2}, Lcc/shinichi/library/view/ImagePreviewActivity;->switch(F)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->do:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->do:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->do:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 10
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$try;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    return-void
.end method
