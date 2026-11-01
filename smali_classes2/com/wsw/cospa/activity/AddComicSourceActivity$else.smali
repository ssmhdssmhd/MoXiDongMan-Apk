.class Lcom/wsw/cospa/activity/AddComicSourceActivity$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/AddComicSourceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddComicSourceActivity;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lcom/wsw/cospa/activity/AddComicSourceActivity$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->new()V

    return-void
.end method

.method private synthetic for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->for()V

    return-void
.end method

.method private synthetic new()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    iget-object v2, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v2, v2, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v3, v3, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v1}, Landroid/support/v4/j10;->this(Landroid/content/Context;)I

    move-result v1

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->default(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Z

    move-result v2

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, v1, 0x5

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->extends(Lcom/wsw/cospa/activity/AddComicSourceActivity;Z)Z

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->finally(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    if-nez v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    .line 11
    new-instance v1, Lcom/wsw/cospa/activity/new;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/new;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v0, v3}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->extends(Lcom/wsw/cospa/activity/AddComicSourceActivity;Z)Z

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->package(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/wsw/cospa/activity/for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/for;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
