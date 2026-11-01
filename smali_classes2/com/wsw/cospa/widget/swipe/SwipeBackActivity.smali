.class public Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/swipe/SwipeBackActivityBase;


# instance fields
.field private mHelper:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->mHelper:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->mHelper:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->mHelper:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->onActivityCreate()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->mHelper:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->onPostCreate()V

    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/widget/swipe/Utils;->convertActivityToTranslucent(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->scrollToFinishActivity()V

    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEnableGesture(Z)V

    return-void
.end method
