.class public abstract Lcom/wsw/cospa/base/CustomActivity;
.super Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wsw/cospa/base/BaseModel;",
        "P:",
        "Landroid/support/v4/m7;",
        ">",
        "Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;"
    }
.end annotation


# instance fields
.field public do:Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private for:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

.field private if:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()I
.end method

.method public abstract for()Landroid/support/v4/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract if()V
.end method

.method public abstract new()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomActivity;->do()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "swipe_back_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->setSwipeBackEnable(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomActivity;->for:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/base/CustomActivity;->for:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeSize(I)V

    .line 7
    invoke-static {p0}, Lbutterknife/ButterKnife;->do(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomActivity;->if:Lbutterknife/Unbinder;

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomActivity;->for()Landroid/support/v4/m7;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/base/CustomActivity;->do:Landroid/support/v4/m7;

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomActivity;->new()V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/CustomActivity;->if()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/CustomActivity;->if:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    return-void
.end method
