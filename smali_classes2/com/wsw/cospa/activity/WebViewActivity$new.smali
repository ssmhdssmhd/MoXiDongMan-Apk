.class public Lcom/wsw/cospa/activity/WebViewActivity$new;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private if()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public do(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-static {p2, p1}, Lcom/wsw/cospa/activity/WebViewActivity;->switch(Lcom/wsw/cospa/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/WebViewActivity$new;->if()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/WebViewActivity;->abstract()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/WebViewActivity;->instanceof()V

    .line 3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/WebViewActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/WebViewActivity$new;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/WebViewActivity;->throws(Lcom/wsw/cospa/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/WebViewActivity$new;->if()V

    const/4 p1, 0x1

    return p1
.end method
