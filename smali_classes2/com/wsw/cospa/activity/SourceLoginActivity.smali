.class public Lcom/wsw/cospa/activity/SourceLoginActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private goto:Lcom/wsw/cospa/bean/ComicSourceBean;

.field public llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090299
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private this:Z

.field public webView:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904e5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->this:Z

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/SourceLoginActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p0
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/SourceLoginActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->this:Z

    return p0
.end method

.method public static public(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const-string v2, "UTF-8"

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/wsw/cospa/activity/SourceLoginActivity$do;

    invoke-direct {v2, p0, v0}, Lcom/wsw/cospa/activity/SourceLoginActivity$do;-><init>(Lcom/wsw/cospa/activity/SourceLoginActivity;Landroid/webkit/CookieManager;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0045

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f09006c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->this:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->this:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Requested-With"

    const-string v2, "Chrome"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u6b63\u5728\u6253\u5f00\u9996\u9875\uff0c\u6210\u529f\u81ea\u52a8\u8fd4\u56de\u4e3b\u754c\u9762"

    .line 6
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 9
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u56fe\u6e90\u7ba1\u7406"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    return-void
.end method
