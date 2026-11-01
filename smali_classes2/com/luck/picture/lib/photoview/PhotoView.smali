.class public Lcom/luck/picture/lib/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private do:Lcom/luck/picture/lib/photoview/for;

.field private if:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoView;->for()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoView;->for()V

    return-void
.end method

.method private for()V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/photoview/for;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/photoview/for;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->j(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public case(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->j(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public do(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->abstract(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public else(FFFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/luck/picture/lib/photoview/for;->r(FFFZ)V

    return-void
.end method

.method public getAttacher()Lcom/luck/picture/lib/photoview/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->continue()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->interface()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->implements()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->instanceof()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->synchronized()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->b()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public goto(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/photoview/for;->s(FZ)V

    return-void
.end method

.method public if(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->c(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public new()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->e()Z

    move-result v0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->h(Z)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {p2}, Lcom/luck/picture/lib/photoview/for;->y()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/for;->y()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->l(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->m(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->n(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnMatrixChangeListener(Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnOutsidePhotoTapListener(Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/luck/picture/lib/photoview/OnPhotoTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnPhotoTapListener(Lcom/luck/picture/lib/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/luck/picture/lib/photoview/OnScaleChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnScaleChangeListener(Lcom/luck/picture/lib/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/luck/picture/lib/photoview/OnSingleFlingListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnSingleFlingListener(Lcom/luck/picture/lib/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/luck/picture/lib/photoview/OnViewDragListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnViewDragListener(Lcom/luck/picture/lib/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->o(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->p(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->q(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->u(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->w(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/photoview/for;->x(Z)V

    return-void
.end method

.method public this(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0, p1, p2, p3}, Lcom/luck/picture/lib/photoview/for;->t(FFF)V

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoView;->do:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/for;->f()Z

    move-result v0

    return v0
.end method
