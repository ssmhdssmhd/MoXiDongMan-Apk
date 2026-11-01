.class Lcom/qmuiteam/qmui/widget/webview/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/webview/do;->if(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/webview/do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/webview/do;Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/do$do;->if:Lcom/qmuiteam/qmui/widget/webview/do;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/webview/do$do;->do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/do$do;->if:Lcom/qmuiteam/qmui/widget/webview/do;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/webview/do$do;->do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/webview/do;->do(Lcom/qmuiteam/qmui/widget/webview/do;Landroid/webkit/WebView;)V

    return-void
.end method
