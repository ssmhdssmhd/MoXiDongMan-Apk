.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->while(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v1, v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->final(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView$do;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->import(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
