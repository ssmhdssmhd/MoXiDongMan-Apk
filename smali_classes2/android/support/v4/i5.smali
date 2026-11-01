.class public final Landroid/support/v4/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile do:Lio/reactivex/functions/Consumer; = null
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Landroid/support/v4/g91;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile for:Z = true

.field public static volatile if:Z

.field public static volatile new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/i5;->this(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public static do()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->if:Z

    return v0
.end method

.method public static else(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->new:Z

    if-nez v0, :cond_0

    .line 2
    sput-boolean p0, Landroid/support/v4/i5;->if:Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Landroid/support/v4/g91;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/i5;->do:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public static goto(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->new:Z

    if-nez v0, :cond_0

    .line 2
    sput-boolean p0, Landroid/support/v4/i5;->for:Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    return v0
.end method

.method public static new()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->new:Z

    return v0
.end method

.method public static this(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .param p0    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/a51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Landroid/support/v4/g91;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->new:Z

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Landroid/support/v4/i5;->do:Lio/reactivex/functions/Consumer;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/support/v4/i5;->new:Z

    return-void
.end method
