.class Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;
.super Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private mIsScrollOverValid:Z

.field public final synthetic this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;->onScrollStateChange(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p1

    const/4 p4, 0x1

    and-int/2addr p1, p4

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    int-to-float p5, p2

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$600(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$700(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 5
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$502(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;F)F

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    int-to-float p5, p2

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$600(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$800(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 9
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$502(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;F)F

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    int-to-float p5, p3

    .line 12
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$600(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$900(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 13
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$502(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;F)F

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1002(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1, p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1102(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    iget-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-nez p1, :cond_3

    .line 18
    iput-boolean p4, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    .line 20
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-ne p1, p4, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    .line 21
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p1

    iget-object p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_4

    iget-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-eqz p1, :cond_4

    .line 22
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 23
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;

    .line 24
    invoke-interface {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;->onScrollOverThreshold()V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 28
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float p1, p2, v3

    if-gtz p1, :cond_1

    cmpl-float p1, p2, v3

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$700(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    :goto_1
    move v2, v0

    goto :goto_4

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    cmpg-float p1, p2, v3

    if-ltz p1, :cond_4

    cmpl-float p1, p2, v3

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$700(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    neg-int p1, v0

    :goto_3
    move v2, p1

    goto :goto_4

    .line 9
    :cond_5
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_7

    cmpg-float p2, p3, v3

    if-ltz p2, :cond_6

    cmpl-float p2, p3, v3

    if-nez p2, :cond_7

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p2

    iget-object p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    .line 11
    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$900(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    neg-int p1, p1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x0

    .line 12
    :goto_5
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isEdgeTouched(II)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 2
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3, v2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$302(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$302(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$302(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I

    .line 8
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v3}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;

    .line 10
    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v5}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;->onEdgeTouch(I)V

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    :cond_4
    const/4 v3, 0x0

    .line 12
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v4}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v4

    if-eq v4, v2, :cond_8

    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v4}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v4

    if-ne v4, v1, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkTouchSlop(II)Z

    move-result p2

    goto :goto_3

    .line 16
    :cond_6
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 17
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkTouchSlop(II)Z

    move-result p2

    :goto_3
    xor-int/2addr v2, p2

    :goto_4
    and-int/2addr p1, v2

    return p1
.end method
