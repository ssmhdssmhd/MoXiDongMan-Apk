.class Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose$for;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose$for;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose$for;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
