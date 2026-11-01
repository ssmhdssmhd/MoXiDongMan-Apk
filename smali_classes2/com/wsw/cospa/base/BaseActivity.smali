.class public abstract Lcom/wsw/cospa/base/BaseActivity;
.super Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Landroid/support/v4/m7;",
        ">",
        "Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;",
        "Lcom/wsw/cospa/base/BaseView;"
    }
.end annotation


# instance fields
.field private case:Landroid/view/ViewGroup;

.field public do:Landroid/support/v4/cq;

.field private else:Landroid/view/View;

.field private for:Lbutterknife/Unbinder;

.field public if:Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public new:Landroid/view/View;

.field private try:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    return-void
.end method

.method public static class()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public break()Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "MODE_NIGHT_AUTO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abstract case()V
.end method

.method public catch()Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "nightTheme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public const(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public do(ZLjava/lang/Class;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public else()V
    .locals 3

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->case:Landroid/view/ViewGroup;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->else:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x38

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->case:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wsw/cospa/base/BaseActivity;->else:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public for(I)I
    .locals 5

    const/16 v0, 0x50

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x50

    :cond_1
    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x42a00000    # 80.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/high16 v1, 0x433e0000    # 190.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    sub-float v1, v2, v1

    float-to-int v1, v1

    const/high16 v3, 0x432a0000    # 170.0f

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x42700000    # 60.0f

    mul-float p1, p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    .line 1
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public abstract goto()Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->else:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public abstract new()I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "systemMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 4
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/q;->final()Ljava/util/Stack;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    .line 6
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 7
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v4

    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 9
    invoke-virtual {v3, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    invoke-virtual {v3}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->const(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->new()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/q;->switch(Landroid/app/Activity;)V

    .line 5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "swipe_back_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->setSwipeBackEnable(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->try:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->try:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeSize(I)V

    .line 9
    invoke-static {p0}, Lbutterknife/ButterKnife;->do(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->for:Lbutterknife/Unbinder;

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->this()V

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->goto()Landroid/support/v4/m7;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    .line 12
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->try(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->case()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->for:Lbutterknife/Unbinder;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/m7;->try()V

    .line 9
    :cond_2
    invoke-static {}, Landroid/support/v4/rp1;->if()V

    .line 10
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/q;->throws(Landroid/app/Activity;)V

    .line 11
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->final(Landroid/os/Bundle;)V

    return-void
.end method

.method public super()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->else:Landroid/view/View;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/base/BaseActivity;->for(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public abstract this()V
.end method

.method public throw(ZLjava/lang/Class;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "nightTheme"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/base/BaseActivity;->do(ZLjava/lang/Class;)V

    return-void
.end method

.method public try(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public while()V
    .locals 3

    const v0, 0x7f0904da

    .line 1
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->new:Landroid/view/View;

    const/16 v0, 0x8

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->new:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->new:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->new:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
