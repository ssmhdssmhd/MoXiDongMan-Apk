.class public final Landroid/support/v4/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile do:Lio/reactivex/functions/BooleanSupplier;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static volatile if:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/f5;->if:Z

    return v0
.end method

.method public static for(Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 1

    const-string v0, "defaultChecker == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/support/v4/f5;->do:Lio/reactivex/functions/BooleanSupplier;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Landroid/support/v4/t80;->do(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static if()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/support/v4/f5;->if:Z

    return-void
.end method

.method public static new()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/f5;->try(Lio/reactivex/functions/BooleanSupplier;)V

    return-void
.end method

.method public static try(Lio/reactivex/functions/BooleanSupplier;)V
    .locals 1
    .param p0    # Lio/reactivex/functions/BooleanSupplier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Landroid/support/v4/f5;->if:Z

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Landroid/support/v4/f5;->do:Lio/reactivex/functions/BooleanSupplier;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
