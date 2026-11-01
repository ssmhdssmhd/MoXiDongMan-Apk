.class public Lcom/google/android/flexbox/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public break:F

.field public case:I

.field public catch:F

.field public class:I

.field public const:I

.field public do:I

.field public else:I

.field public final:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public for:I

.field public goto:I

.field public if:I

.field public import:Z

.field public new:I

.field public super:I

.field public this:I

.field public throw:I

.field public try:I

.field public while:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/do;->do:I

    .line 3
    iput v0, p0, Lcom/google/android/flexbox/do;->if:I

    const/high16 v0, -0x80000000

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/do;->for:I

    .line 5
    iput v0, p0, Lcom/google/android/flexbox/do;->new:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/do;->final:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public case()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->break:F

    return v0
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->else:I

    return v0
.end method

.method public else()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->catch:F

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->goto:I

    return v0
.end method

.method public goto(Landroid/view/View;IIII)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    iget v1, p0, Lcom/google/android/flexbox/do;->do:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/do;->do:I

    .line 3
    iget p2, p0, Lcom/google/android/flexbox/do;->if:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/do;->if:I

    .line 4
    iget p2, p0, Lcom/google/android/flexbox/do;->for:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/do;->for:I

    .line 5
    iget p2, p0, Lcom/google/android/flexbox/do;->new:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/do;->new:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->super:I

    return v0
.end method

.method public new()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->goto:I

    iget v1, p0, Lcom/google/android/flexbox/do;->this:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/do;->try:I

    return v0
.end method
