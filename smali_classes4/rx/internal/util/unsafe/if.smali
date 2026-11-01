.class abstract Lrx/internal/util/unsafe/if;
.super Lrx/internal/util/unsafe/new;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/new<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final transient:J


# instance fields
.field public protected:Landroid/support/v4/ht0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ht0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lrx/internal/util/unsafe/if;

    const-string v1, "consumerNode"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/implements;->do(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/if;->transient:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/internal/util/unsafe/new;-><init>()V

    return-void
.end method


# virtual methods
.method public final case(Landroid/support/v4/ht0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ht0<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/util/unsafe/if;->protected:Landroid/support/v4/ht0;

    return-void
.end method

.method public final new()Landroid/support/v4/ht0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ht0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/unsafe/if;->protected:Landroid/support/v4/ht0;

    return-object v0
.end method

.method public final try()Landroid/support/v4/ht0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ht0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/if;->transient:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ht0;

    return-object v0
.end method
