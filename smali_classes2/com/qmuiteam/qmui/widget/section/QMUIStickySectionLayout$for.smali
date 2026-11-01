.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->scrollToPosition(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->do:I

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->do:I

    iget-boolean v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;->if:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->scrollToPosition(IZZ)V

    return-void
.end method
