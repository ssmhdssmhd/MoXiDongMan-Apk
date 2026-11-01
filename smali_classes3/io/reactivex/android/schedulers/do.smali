.class public final Lio/reactivex/android/schedulers/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/do$if;
    }
.end annotation


# static fields
.field private static final do:Lio/reactivex/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/android/schedulers/do$do;

    invoke-direct {v0}, Lio/reactivex/android/schedulers/do$do;-><init>()V

    invoke-static {v0}, Landroid/support/v4/dp1;->case(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Lio/reactivex/android/schedulers/do;->do:Lio/reactivex/try;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static do(Landroid/os/Looper;)Lio/reactivex/try;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/android/schedulers/do;->if(Landroid/os/Looper;Z)Lio/reactivex/try;

    move-result-object p0

    return-object p0
.end method

.method public static for()Lio/reactivex/try;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/android/schedulers/do;->do:Lio/reactivex/try;

    invoke-static {v0}, Landroid/support/v4/dp1;->else(Lio/reactivex/try;)Lio/reactivex/try;

    move-result-object v0

    return-object v0
.end method

.method public static if(Landroid/os/Looper;Z)Lio/reactivex/try;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "looper == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6
    :cond_1
    :goto_1
    new-instance v0, Lio/reactivex/android/schedulers/if;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/if;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method
