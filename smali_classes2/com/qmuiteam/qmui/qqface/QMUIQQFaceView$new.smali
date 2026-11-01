.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# static fields
.field public static final else:I = -0x1


# instance fields
.field public final synthetic case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

.field private do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

.field private for:I

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Lcom/qmuiteam/qmui/link/ITouchableSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    .line 6
    iput-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    return-void
.end method


# virtual methods
.method public case(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    return-void
.end method

.method public do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 7
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 12
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public for(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->for(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v1, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x0

    if-lt p2, v0, :cond_a

    if-le p2, v1, :cond_1

    goto :goto_4

    .line 5
    :cond_1
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    if-ne v4, v5, :cond_3

    .line 6
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    if-lt p1, p2, :cond_2

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    add-int/2addr v0, v4

    .line 8
    iget-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->if(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I

    move-result v4

    sub-int/2addr v1, v4

    if-le p2, v0, :cond_6

    if-ge p2, v1, :cond_6

    .line 9
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->new:I

    sub-int/2addr p2, v0

    if-ne p2, v2, :cond_5

    .line 10
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    if-lt p1, p2, :cond_4

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    if-gt p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2

    :cond_6
    if-gt p2, v0, :cond_8

    .line 11
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->if:I

    if-lt p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 12
    :cond_8
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    if-gt p1, p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_a
    :goto_4
    return v3
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->case:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public new(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->try:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->for:I

    return-void
.end method

.method public try(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$new;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->setPressed(Z)V

    return-void
.end method
