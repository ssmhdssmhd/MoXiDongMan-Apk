.class Lcom/luck/picture/lib/photoview/for$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/photoview/for;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/photoview/for;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/photoview/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v3}, Lcom/luck/picture/lib/photoview/for;->instanceof()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/for;->instanceof()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/luck/picture/lib/photoview/for;->r(FFFZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v3}, Lcom/luck/picture/lib/photoview/for;->instanceof()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v3}, Lcom/luck/picture/lib/photoview/for;->implements()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/for;->implements()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/luck/picture/lib/photoview/for;->r(FFFZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/for;->synchronized()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/luck/picture/lib/photoview/for;->r(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->catch(Lcom/luck/picture/lib/photoview/for;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->catch(Lcom/luck/picture/lib/photoview/for;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v1}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->continue()Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v2}, Lcom/luck/picture/lib/photoview/for;->class(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v2}, Lcom/luck/picture/lib/photoview/for;->class(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnViewTapListener;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v3}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v2, v3, v1, p1}, Lcom/luck/picture/lib/photoview/OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_1
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 10
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    .line 12
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->final(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->final(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v2}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2, v1, p1}, Lcom/luck/picture/lib/photoview/OnPhotoTapListener;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->super(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {p1}, Lcom/luck/picture/lib/photoview/for;->super(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$for;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;->onOutsidePhotoTap(Landroid/widget/ImageView;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
