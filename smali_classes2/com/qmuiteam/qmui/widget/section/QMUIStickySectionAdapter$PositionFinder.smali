.class public interface abstract Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TH;>;T::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract find(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;TT;)Z"
        }
    .end annotation
.end method
