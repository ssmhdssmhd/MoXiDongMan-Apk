.class public Lcom/qmuiteam/qmui/util/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static break:Ljava/lang/Integer; = null

.field public static case:F = -1.0f

.field private static final do:I = 0x0

.field public static else:F = -1.0f

.field private static final for:I = 0x2

.field private static goto:I = -0x1

.field private static final if:I = 0x1

.field private static final new:I = 0x3

.field private static this:I = 0x0

.field private static final try:I = 0x19


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

.method public static break(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static case(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 6

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/util/if;->break:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p0, v1

    const-string v5, "touchwiz"

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    goto :goto_1

    :cond_1
    const-string v5, "com.sonyericsson.navigationbar"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "SYSTEM_UI_FLAG_TRANSPARENT"

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 7
    :try_start_0
    const-class p0, Landroid/view/View;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 8
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/if;->break:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_4
    sget-object p0, Lcom/qmuiteam/qmui/util/if;->break:Ljava/lang/Integer;

    return-object p0
.end method

.method private static catch()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/gh1;->final()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->break()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/support/v4/gh1;->catch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Landroid/support/v4/gh1;->class()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/support/v4/gh1;->const()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static class(Landroid/view/Window;Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static const(Landroid/view/Window;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private static do(Landroid/view/Window;Z)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x2000

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    .line 2
    :goto_0
    invoke-static {p0, v1}, Lcom/qmuiteam/qmui/util/if;->try(Landroid/view/Window;I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    invoke-static {}, Landroid/support/v4/gh1;->final()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/if;->for(Landroid/view/Window;Z)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static else(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/qmuiteam/qmui/util/if;->goto:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->this(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget p0, Lcom/qmuiteam/qmui/util/if;->goto:I

    return p0
.end method

.method public static final(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/util/if;->this:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->for(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->if(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->do(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public static for(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 5
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static goto(Landroid/view/Window;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->class(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/qmuiteam/qmui/util/if$do;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/util/if$do;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static if(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/if;->do(Landroid/view/Window;Z)Z

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 11
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static import(F)V
    .locals 0

    .line 1
    sput p0, Lcom/qmuiteam/qmui/util/if;->else:F

    return-void
.end method

.method public static native()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/gh1;->static()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/gh1;->return()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic new(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/if;->class(Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method

.method private static public()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/support/v4/gh1;->new()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static return(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->switch(Landroid/view/Window;)V

    return-void
.end method

.method public static static(Landroid/app/Activity;I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/if;->throws(Landroid/view/Window;I)V

    return-void
.end method

.method public static super(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/support/v4/gh1;->return()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/util/if;->this:I

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p0, v1}, Lcom/qmuiteam/qmui/util/if;->throw(Landroid/app/Activity;I)Z

    move-result p0

    return p0

    .line 4
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 5
    invoke-static {}, Lcom/qmuiteam/qmui/util/if;->catch()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/util/if;->for(Landroid/view/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    sput v3, Lcom/qmuiteam/qmui/util/if;->this:I

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/util/if;->if(Landroid/view/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p0, 0x2

    .line 8
    sput p0, Lcom/qmuiteam/qmui/util/if;->this:I

    return v3

    :cond_4
    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/qmuiteam/qmui/util/if;->do(Landroid/view/Window;Z)Z

    const/4 p0, 0x3

    .line 10
    sput p0, Lcom/qmuiteam/qmui/util/if;->this:I

    return v3

    :cond_5
    return v0
.end method

.method public static switch(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->throws(Landroid/view/Window;I)V

    return-void
.end method

.method private static this(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {}, Landroid/support/v4/gh1;->super()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    const-string v3, "status_bar_height_large"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 5
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v3, "status_bar_height"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 7
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v0

    move-object v0, v1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 8
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/qmuiteam/qmui/util/if;->goto:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_2
    :goto_3
    invoke-static {p0}, Landroid/support/v4/gh1;->import(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_3

    sget v0, Lcom/qmuiteam/qmui/util/if;->goto:I

    .line 12
    invoke-static {p0, v1}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v2

    if-le v0, v2, :cond_3

    const/4 p0, 0x0

    .line 13
    sput p0, Lcom/qmuiteam/qmui/util/if;->goto:I

    goto :goto_4

    .line 14
    :cond_3
    sget v0, Lcom/qmuiteam/qmui/util/if;->goto:I

    if-gtz v0, :cond_5

    .line 15
    sget v0, Lcom/qmuiteam/qmui/util/if;->case:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    .line 16
    invoke-static {p0, v1}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p0

    sput p0, Lcom/qmuiteam/qmui/util/if;->goto:I

    goto :goto_4

    :cond_4
    const/high16 p0, 0x41c80000    # 25.0f

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    .line 17
    sput p0, Lcom/qmuiteam/qmui/util/if;->goto:I

    :cond_5
    :goto_4
    return-void
.end method

.method private static throw(Landroid/app/Activity;I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->for(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->if(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/if;->do(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static throws(Landroid/view/Window;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/util/if;->public()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/if;->goto(Landroid/view/Window;)V

    .line 4
    :cond_1
    invoke-static {}, Landroid/support/v4/gh1;->super()Z

    move-result v0

    const/high16 v1, 0x4000000

    if-nez v0, :cond_5

    invoke-static {}, Landroid/support/v4/gh1;->this()Z

    move-result v0

    const/16 v2, 0x17

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v3, -0x80000000

    if-lt v0, v2, :cond_3

    .line 7
    invoke-static {}, Lcom/qmuiteam/qmui/util/if;->native()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 12
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    :goto_0
    return-void

    .line 14
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private static try(Landroid/view/Window;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x400

    .line 1
    invoke-static {p0, p1, v0}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x4

    .line 2
    invoke-static {p0, p1, v1}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x2

    .line 3
    invoke-static {p0, p1, v1}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p1

    const/16 v1, 0x1000

    .line 4
    invoke-static {p0, p1, v1}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p1

    .line 5
    invoke-static {p0, p1, v0}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p1

    const/16 v0, 0x200

    .line 6
    invoke-static {p0, p1, v0}, Lcom/qmuiteam/qmui/util/if;->const(Landroid/view/Window;II)I

    move-result p0

    return p0
.end method

.method public static while(F)V
    .locals 0

    .line 1
    sput p0, Lcom/qmuiteam/qmui/util/if;->case:F

    return-void
.end method
