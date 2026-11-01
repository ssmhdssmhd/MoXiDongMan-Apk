.class public Landroid/support/v4/vh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/class;

.field private for:Lorg/bouncycastle/math/ec/new;

.field private if:Lorg/bouncycastle/math/ec/if;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vh2;->if:Lorg/bouncycastle/math/ec/if;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/new;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/new;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/new;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/vh2;->for:Lorg/bouncycastle/math/ec/new;

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    return-void
.end method


# virtual methods
.method public case()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    aget-byte v0, v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public declared-synchronized new()Lorg/bouncycastle/math/ec/new;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/vh2;->for:Lorg/bouncycastle/math/ec/new;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/vh2;->if:Lorg/bouncycastle/math/ec/if;

    iget-object v1, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/if;->class([B)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/vh2;->for:Lorg/bouncycastle/math/ec/new;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/vh2;->for:Lorg/bouncycastle/math/ec/new;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vh2;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
