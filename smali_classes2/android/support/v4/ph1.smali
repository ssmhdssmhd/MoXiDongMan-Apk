.class public Landroid/support/v4/ph1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static break:Ljava/lang/Boolean; = null

.field private static case:Landroid/graphics/Rect; = null

.field private static final do:Ljava/lang/String; = "QMUINotchHelper"

.field private static else:Landroid/graphics/Rect; = null

.field private static final for:Ljava/lang/String; = "ro.miui.notch"

.field private static goto:Landroid/graphics/Rect; = null

.field private static final if:I = 0x20

.field private static new:Ljava/lang/Boolean;

.field private static this:[I

.field private static try:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstract(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static break(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_width"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static case(Landroid/content/Context;)I
    .locals 1

    const/16 v0, 0x1b

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static catch(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    .line 5
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method

.method private static class(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/ph1;->case(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 7
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {p0}, Landroid/support/v4/ph1;->goto(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    .line 10
    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 11
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-static {p0}, Landroid/support/v4/ph1;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static const(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-static {p0}, Landroid/support/v4/ph1;->case(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 7
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {p0}, Landroid/support/v4/ph1;->goto(Landroid/content/Context;)[I

    move-result-object p0

    .line 10
    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    .line 11
    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 14
    invoke-static {p0}, Landroid/support/v4/ph1;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static continue(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static default(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->private(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->return(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private static do(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    return v1

    :cond_1
    return v0
.end method

.method public static else(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ih1;->throw(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static extends(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private static final(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/ph1;->case(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Landroid/support/v4/ph1;->break:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p0}, Landroid/support/v4/ph1;->goto(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 11
    :cond_2
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 12
    :goto_0
    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-static {p0}, Landroid/support/v4/ph1;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 15
    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static finally(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/ph1;->abstract(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Landroid/support/v4/ph1;->strictfp(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->throw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p0}, Landroid/support/v4/ph1;->continue(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p0}, Landroid/support/v4/ph1;->volatile(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static for()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Landroid/support/v4/ph1;->case:Landroid/graphics/Rect;

    .line 2
    sput-object v0, Landroid/support/v4/ph1;->goto:Landroid/graphics/Rect;

    return-void
.end method

.method public static goto(Landroid/content/Context;)[I
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/ph1;->this:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/ph1;->this:[I

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.huawei.android.util.HwNotchSizeUtil"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getNotchSize"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    sput-object p0, Landroid/support/v4/ph1;->this:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    sget-object p0, Landroid/support/v4/ph1;->this:[I

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static if()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Landroid/support/v4/ph1;->try:Landroid/graphics/Rect;

    .line 2
    sput-object v0, Landroid/support/v4/ph1;->case:Landroid/graphics/Rect;

    .line 3
    sput-object v0, Landroid/support/v4/ph1;->else:Landroid/graphics/Rect;

    .line 4
    sput-object v0, Landroid/support/v4/ph1;->goto:Landroid/graphics/Rect;

    return-void
.end method

.method public static import(Landroid/app/Activity;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->package(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->public(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public static interface()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->private(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->return(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method private static new()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Landroid/support/v4/ph1;->try:Landroid/graphics/Rect;

    .line 2
    sput-object v0, Landroid/support/v4/ph1;->else:Landroid/graphics/Rect;

    return-void
.end method

.method public static package(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Landroid/support/v4/ph1;->do(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    .line 6
    :cond_2
    invoke-static {p0}, Landroid/support/v4/ph1;->finally(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    .line 7
    :cond_3
    sget-object p0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static private(Landroid/view/View;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/ph1;->do(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ph1;->finally(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    .line 5
    :cond_1
    sget-object p0, Landroid/support/v4/ph1;->new:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static protected(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->private(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static public(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Landroid/support/v4/ph1;->catch(Landroid/view/View;Landroid/graphics/Rect;)V

    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->try(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static return(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/ph1;->catch(Landroid/view/View;Landroid/graphics/Rect;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ph1;->try(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static static(Landroid/app/Activity;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->package(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->public(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public static strictfp(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.util.FtFeature"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 5
    aget-object v3, v1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "isFeatureSupport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x20

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return v0
.end method

.method private static super(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v4/gh1;->native()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/ph1;->case(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 7
    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Landroid/support/v4/ph1;->break:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p0}, Landroid/support/v4/ph1;->goto(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 11
    :cond_2
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 12
    :goto_0
    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Landroid/support/v4/gh1;->public()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-static {p0}, Landroid/support/v4/ph1;->else(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 15
    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static switch(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->private(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->return(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public static this(Landroid/content/Context;)I
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static throw(Landroid/app/Activity;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->package(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->public(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public static throws(Landroid/app/Activity;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->package(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->public(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private static try(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/gh1;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/support/v4/ih1;->package(Landroid/content/Context;)Z

    move-result v0

    .line 3
    sget-object v1, Landroid/support/v4/ph1;->break:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-static {}, Landroid/support/v4/ph1;->for()V

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ph1;->break:Ljava/lang/Boolean;

    .line 6
    :cond_1
    invoke-static {p0}, Landroid/support/v4/ph1;->extends(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 7
    sget-object v0, Landroid/support/v4/ph1;->case:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 8
    invoke-static {p0}, Landroid/support/v4/ph1;->super(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->case:Landroid/graphics/Rect;

    .line 9
    :cond_2
    sget-object p0, Landroid/support/v4/ph1;->case:Landroid/graphics/Rect;

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 10
    sget-object v0, Landroid/support/v4/ph1;->else:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 11
    invoke-static {p0}, Landroid/support/v4/ph1;->const(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->else:Landroid/graphics/Rect;

    .line 12
    :cond_4
    sget-object p0, Landroid/support/v4/ph1;->else:Landroid/graphics/Rect;

    return-object p0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 13
    sget-object v0, Landroid/support/v4/ph1;->goto:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    .line 14
    invoke-static {p0}, Landroid/support/v4/ph1;->final(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->goto:Landroid/graphics/Rect;

    .line 15
    :cond_6
    sget-object p0, Landroid/support/v4/ph1;->goto:Landroid/graphics/Rect;

    return-object p0

    .line 16
    :cond_7
    sget-object v0, Landroid/support/v4/ph1;->try:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    .line 17
    invoke-static {p0}, Landroid/support/v4/ph1;->class(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Landroid/support/v4/ph1;->try:Landroid/graphics/Rect;

    .line 18
    :cond_8
    sget-object p0, Landroid/support/v4/ph1;->try:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static volatile(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.miui.notch"

    aput-object v3, v2, p0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v5, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method public static while(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ph1;->private(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ph1;->return(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method
