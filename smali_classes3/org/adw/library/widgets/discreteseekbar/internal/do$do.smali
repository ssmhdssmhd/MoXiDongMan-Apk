.class Lorg/adw/library/widgets/discreteseekbar/internal/do$do;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

.field public final synthetic for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

.field private if:I


# direct methods
.method public constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/do;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 7

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    .line 4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/16 p4, 0x33

    invoke-direct {p2, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    return-object p0
.end method


# virtual methods
.method public for(I)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->if:I

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 4
    invoke-static {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->if(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public if(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->new(II)V

    return-void
.end method

.method public onClosingComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 2
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->if:I

    sub-int/2addr p2, p1

    .line 3
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    return-void
.end method
