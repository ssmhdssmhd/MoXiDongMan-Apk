.class public final Lrx/internal/schedulers/catch;
.super Lrx/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/catch$if;,
        Lrx/internal/schedulers/catch$do;
    }
.end annotation


# static fields
.field public static final do:Lrx/internal/schedulers/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/catch;

    invoke-direct {v0}, Lrx/internal/schedulers/catch;-><init>()V

    sput-object v0, Lrx/internal/schedulers/catch;->do:Lrx/internal/schedulers/catch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    return-void
.end method

.method public static new(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/catch$do;

    invoke-direct {v0}, Lrx/internal/schedulers/catch$do;-><init>()V

    return-object v0
.end method
