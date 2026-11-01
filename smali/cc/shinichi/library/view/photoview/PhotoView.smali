.class public Lcc/shinichi/library/view/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private do:Lcc/shinichi/library/view/photoview/for;

.field private for:I

.field private if:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcc/shinichi/library/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcc/shinichi/library/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcc/shinichi/library/view/photoview/PhotoView;->for()V

    return-void
.end method

.method private for()V
    .locals 1

    .line 1
    new-instance v0, Lcc/shinichi/library/view/photoview/for;

    invoke-direct {v0, p0}, Lcc/shinichi/library/view/photoview/for;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcc/shinichi/library/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method private try(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x105

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->for:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->for:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public break(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->j(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public case(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->j(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public do(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->abstract(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public else(FFFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcc/shinichi/library/view/photoview/for;->r(FFFZ)V

    return-void
.end method

.method public getAttacher()Lcc/shinichi/library/view/photoview/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->continue()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->interface()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTouchCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->for:I

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->implements()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->instanceof()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->synchronized()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->a()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->b()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public goto(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1, p2}, Lcc/shinichi/library/view/photoview/for;->s(FZ)V

    return-void
.end method

.method public if(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->c(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/for;->f()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/photoview/PhotoView;->try(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->h(Z)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {p2}, Lcc/shinichi/library/view/photoview/for;->y()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcc/shinichi/library/view/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcc/shinichi/library/view/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcc/shinichi/library/view/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->l(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->m(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->n(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcc/shinichi/library/view/photoview/OnMatrixChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnMatrixChangeListener(Lcc/shinichi/library/view/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcc/shinichi/library/view/photoview/OnOutsidePhotoTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnOutsidePhotoTapListener(Lcc/shinichi/library/view/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcc/shinichi/library/view/photoview/OnPhotoTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnPhotoTapListener(Lcc/shinichi/library/view/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcc/shinichi/library/view/photoview/OnScaleChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnScaleChangeListener(Lcc/shinichi/library/view/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcc/shinichi/library/view/photoview/OnSingleFlingListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnSingleFlingListener(Lcc/shinichi/library/view/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcc/shinichi/library/view/photoview/OnViewDragListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnViewDragListener(Lcc/shinichi/library/view/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcc/shinichi/library/view/photoview/OnViewTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->setOnViewTapListener(Lcc/shinichi/library/view/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->o(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->p(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->q(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcc/shinichi/library/view/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->u(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->w(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/photoview/for;->x(Z)V

    return-void
.end method

.method public this(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/photoview/PhotoView;->do:Lcc/shinichi/library/view/photoview/for;

    invoke-virtual {v0, p1, p2, p3}, Lcc/shinichi/library/view/photoview/for;->t(FFF)V

    return-void
.end method
