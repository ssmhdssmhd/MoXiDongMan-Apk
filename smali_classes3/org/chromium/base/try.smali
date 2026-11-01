.class public Lorg/chromium/base/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/try$do;
    }
.end annotation


# static fields
.field private static final do:Ljava/lang/String; = "ContextUtils"

.field public static final synthetic for:Z

.field private static if:Landroid/content/Context;


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

.method private static break(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 3
    :cond_0
    sput-object p0, Lorg/chromium/base/try;->if:Landroid/content/Context;

    return-void
.end method

.method public static case()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/try;->if:Landroid/content/Context;

    return-object v0
.end method

.method public static catch()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    return v0
.end method

.method public static class()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/support/v4/e2;->static()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v0, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static synthetic do()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->for()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static else()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/do;->final()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static for()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/b22;->new()Landroid/support/v4/b22;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/base/try;->if:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/b22;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Landroid/support/v4/b22;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static goto(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/chromium/base/try;->break(Landroid/content/Context;)V

    return-void
.end method

.method public static if(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/try$do;->do()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static this(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/chromium/base/try;->break(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lorg/chromium/base/try;->for()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/try$do;->if(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public static try()Landroid/content/res/AssetManager;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
