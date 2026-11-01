.class public Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public do:Z

.field public for:Z

.field public if:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->do:Z

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->if:Z

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->for:Z

    return-void
.end method
