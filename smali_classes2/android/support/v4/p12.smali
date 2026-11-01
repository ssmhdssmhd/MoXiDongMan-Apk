.class public Landroid/support/v4/p12;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xc000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0600f8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    if-lt v1, p0, :cond_1

    const/high16 p0, 0x4000000

    .line 8
    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static do(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->g2()Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f060362

    .line 2
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->B1(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->b(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 4
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/else;->catch(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 6
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->super(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f0600f8

    .line 7
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static else(Lcom/wsw/cospa/base/BaseActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v4/p12;->goto(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x1020002

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-static {}, Landroid/support/v4/j10;->class()I

    move-result v2

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v2, :cond_0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_2
    return-void
.end method

.method public static for(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->q2(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->g2()Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f060362

    .line 2
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->B1(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 4
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->catch(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->super(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f0600f8

    .line 6
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static goto(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/j10;->class()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static if(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->g2()Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f060362

    .line 3
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->B1(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->S1(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 6
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->catch(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 7
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->super(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const p1, 0x7f0600f8

    .line 8
    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static new(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->q2(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->g2()Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f060362

    .line 3
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->B1(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->S1(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 6
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->catch(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 7
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->super(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const p1, 0x7f0600f8

    .line 8
    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static try(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->g2()Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f060362

    .line 2
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->B1(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->b(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 4
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/else;->catch(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 6
    invoke-static {}, Landroid/support/v4/l31;->do()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->super(Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    const v0, 0x7f0600f8

    .line 7
    invoke-virtual {p0, v0}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method
