.class Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$do;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$do;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
