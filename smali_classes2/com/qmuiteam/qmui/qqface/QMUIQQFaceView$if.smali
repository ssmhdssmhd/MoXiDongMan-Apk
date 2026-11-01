.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;->do:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;->do:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$if;->do:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->do(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$for;->run()V

    :cond_0
    return-void
.end method
