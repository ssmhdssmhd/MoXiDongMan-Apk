.class public Lorg/bouncycastle/math/ec/if$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public do:I

.field public for:Lorg/bouncycastle/math/ec/ECMultiplier;

.field public if:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field public final synthetic new:Lorg/bouncycastle/math/ec/if;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;ILorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECMultiplier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$new;->new:Lorg/bouncycastle/math/ec/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/math/ec/if$new;->do:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/if$new;->if:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/if$new;->for:Lorg/bouncycastle/math/ec/ECMultiplier;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/math/ec/if;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$new;->new:Lorg/bouncycastle/math/ec/if;

    iget v1, p0, Lorg/bouncycastle/math/ec/if$new;->do:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/if;->volatile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$new;->new:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->new()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/if$new;->new:Lorg/bouncycastle/math/ec/if;

    if-eq v0, v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/bouncycastle/math/ec/if$new;->do:I

    iput v1, v0, Lorg/bouncycastle/math/ec/if;->case:I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/if$new;->if:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lorg/bouncycastle/math/ec/if;->else:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/if$new;->for:Lorg/bouncycastle/math/ec/ECMultiplier;

    iput-object v1, v0, Lorg/bouncycastle/math/ec/if;->goto:Lorg/bouncycastle/math/ec/ECMultiplier;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "implementation returned current curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Lorg/bouncycastle/math/ec/if$new;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$new;->if:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public if(I)Lorg/bouncycastle/math/ec/if$new;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/math/ec/if$new;->do:I

    return-object p0
.end method

.method public new(Lorg/bouncycastle/math/ec/ECMultiplier;)Lorg/bouncycastle/math/ec/if$new;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$new;->for:Lorg/bouncycastle/math/ec/ECMultiplier;

    return-object p0
.end method
