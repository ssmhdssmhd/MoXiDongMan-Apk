.class public Lcom/wsw/cospa/SplashActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/SplashActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/SplashActivity_ViewBinding;-><init>(Lcom/wsw/cospa/SplashActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/SplashActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/SplashActivity_ViewBinding;->do:Lcom/wsw/cospa/SplashActivity;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09024c

    const-string v2, "field \'ivSplash\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090094

    const-string v2, "field \'appLogo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/SplashActivity;->appLogo:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0903bd

    const-string v2, "field \'container\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/wsw/cospa/SplashActivity;->container:Landroid/widget/FrameLayout;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090296

    const-string v2, "field \'logoContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity_ViewBinding;->do:Lcom/wsw/cospa/SplashActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/SplashActivity_ViewBinding;->do:Lcom/wsw/cospa/SplashActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/SplashActivity;->appLogo:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/SplashActivity;->container:Landroid/widget/FrameLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
