.class final Lkotlin/random/if;
.super Ljava/util/Random;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/if$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\tH\u0016R\u0016\u0010\u0015\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u0018\u001a\u00020\u00178\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlin/random/if;",
        "Ljava/util/Random;",
        "",
        "bits",
        "next",
        "nextInt",
        "bound",
        "",
        "nextBoolean",
        "",
        "nextLong",
        "",
        "nextFloat",
        "",
        "nextDouble",
        "",
        "bytes",
        "Landroid/support/v4/ub2;",
        "nextBytes",
        "seed",
        "setSeed",
        "seedInitialized",
        "Z",
        "Lkotlin/random/try;",
        "impl",
        "Lkotlin/random/try;",
        "getImpl",
        "()Lkotlin/random/try;",
        "<init>",
        "(Lkotlin/random/try;)V",
        "do",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final do:Lkotlin/random/if$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final serialVersionUID:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final impl:Lkotlin/random/try;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private seedInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/if$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/random/if;->do:Lkotlin/random/if$do;

    return-void
.end method

.method public constructor <init>(Lkotlin/random/try;)V
    .locals 1
    .param p1    # Lkotlin/random/try;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    return-void
.end method


# virtual methods
.method public final getImpl()Lkotlin/random/try;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    return-object v0
.end method

.method public next(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0, p1}, Lkotlin/random/try;->nextBits(I)I

    move-result p1

    return p1
.end method

.method public nextBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0}, Lkotlin/random/try;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0, p1}, Lkotlin/random/try;->nextBytes([B)[B

    return-void
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0}, Lkotlin/random/try;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0}, Lkotlin/random/try;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0}, Lkotlin/random/try;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0, p1}, Lkotlin/random/try;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/random/if;->impl:Lkotlin/random/try;

    invoke-virtual {v0}, Lkotlin/random/try;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lkotlin/random/if;->seedInitialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lkotlin/random/if;->seedInitialized:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting seed is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
