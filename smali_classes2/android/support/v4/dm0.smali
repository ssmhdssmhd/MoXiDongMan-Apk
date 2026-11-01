.class public Landroid/support/v4/dm0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroidx/appcompat/app/AppCompatActivity;IIZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/support/v4/dm0;->for(Landroid/app/Activity;ZZIIZ)V

    return-void
.end method

.method public static for(Landroid/app/Activity;ZZIIZ)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/16 v3, 0x15

    if-lt v1, v2, :cond_0

    if-ge v1, v3, :cond_0

    const/high16 p0, 0x4000000

    .line 3
    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    :cond_0
    if-lt v1, v3, :cond_7

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_1

    const/4 v2, 0x1

    .line 5
    :cond_1
    invoke-static {p0, p1, p2, v2, p5}, Landroid/support/v4/et0;->try(Landroid/app/Activity;ZZZZ)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_3

    const/4 v2, 0x1

    .line 9
    :cond_3
    invoke-static {p0, p1, p2, v2, p5}, Landroid/support/v4/et0;->try(Landroid/app/Activity;ZZZZ)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_5

    const/4 v2, 0x1

    .line 13
    :cond_5
    invoke-static {p0, p1, p2, v2, p5}, Landroid/support/v4/et0;->try(Landroid/app/Activity;ZZZZ)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 15
    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    invoke-virtual {v0, p4}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public static if(Landroid/app/Activity;IIZ)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 2
    invoke-static/range {v2 .. v7}, Landroid/support/v4/dm0;->for(Landroid/app/Activity;ZZIIZ)V

    :cond_0
    return-void
.end method
