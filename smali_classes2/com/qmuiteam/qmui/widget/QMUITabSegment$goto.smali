.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation


# instance fields
.field private final do:Z

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->do:Z

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->do:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->o(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;->do:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->o(Z)V

    return-void
.end method
