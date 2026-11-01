.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->public()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    return-void
.end method
