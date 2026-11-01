.class Lcom/qmuiteam/qmui/widget/webview/do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/webview/do;->case(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Runnable;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/webview/do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/webview/do;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/do$for;->if:Lcom/qmuiteam/qmui/widget/webview/do;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/webview/do$for;->do:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/do$for;->do:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
