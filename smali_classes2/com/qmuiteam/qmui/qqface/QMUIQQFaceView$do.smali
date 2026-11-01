.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;->if:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iput-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;->if:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
