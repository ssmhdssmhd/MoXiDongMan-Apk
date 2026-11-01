.class public Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSwipeBackLayout:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0118

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    .line 4
    new-instance v1, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper$1;-><init>(Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->addSwipeListener(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;)V

    return-void
.end method

.method public onPostCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->attachToActivity(Landroid/app/Activity;)V

    return-void
.end method
