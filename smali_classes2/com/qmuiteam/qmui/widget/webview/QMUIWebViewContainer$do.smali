.class Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->for(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;->do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/webkit/WebView;IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;->do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->if(Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;)Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;->do:Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->if(Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;)Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;->onScrollChange(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method
