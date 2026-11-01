.class public abstract Lcom/qmuiteam/qmui/widget/section/QMUIDefaultStickySectionAdapter;
.super Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TH;>;T::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TT;>;>",
        "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter<",
        "TH;TT;",
        "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public default(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public package(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
