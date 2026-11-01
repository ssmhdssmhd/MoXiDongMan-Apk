.class public Landroid/support/v4/h5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final do:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/g5;->do:Landroid/support/v4/g5;

    sput-object v0, Landroid/support/v4/h5;->do:Lio/reactivex/functions/BooleanSupplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Z
    .locals 1

    invoke-static {}, Landroid/support/v4/h5;->for()Z

    move-result v0

    return v0
.end method

.method private static synthetic for()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static if()Z
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/h5;->do:Lio/reactivex/functions/BooleanSupplier;

    invoke-static {v0}, Landroid/support/v4/f5;->for(Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v0

    return v0
.end method
