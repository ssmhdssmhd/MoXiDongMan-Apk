.class Lorg/bouncycastle/crypto/digests/if$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/crypto/digests/if$new;

.field private for:I

.field private if:[B

.field private new:[J

.field public final synthetic try:Lorg/bouncycastle/crypto/digests/if;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/if;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/if$for;->try:Lorg/bouncycastle/crypto/digests/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/bouncycastle/crypto/digests/if$new;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/if$new;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    array-length p1, p1

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    return-void
.end method

.method private if([J)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->try:Lorg/bouncycastle/crypto/digests/if;

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/if;->do:Lorg/bouncycastle/crypto/engines/abstract;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/if;->for:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/if$new;->for()[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lorg/bouncycastle/crypto/engines/abstract;->case(Z[J[J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    mul-int/lit8 v4, v1, 0x8

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/abstract;->try([BI)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/if$for;->try:Lorg/bouncycastle/crypto/digests/if;

    iget-object v1, v1, Lorg/bouncycastle/crypto/digests/if;->do:Lorg/bouncycastle/crypto/engines/abstract;

    invoke-virtual {v1, v2, p1}, Lorg/bouncycastle/crypto/engines/abstract;->else([J[J)I

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    aget-wide v4, v3, v0

    xor-long/2addr v1, v4

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public do([J)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/digests/if$new;->goto(Z)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/if$for;->if([J)V

    return-void
.end method

.method public for(I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/if$new;->case()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if$new;->break(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    return-void
.end method

.method public new(Lorg/bouncycastle/crypto/digests/if$for;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->super([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    invoke-static {v0, v1}, Landroid/support/v4/q3;->native([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->new:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    iget-object p1, p1, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/if$new;->else(Lorg/bouncycastle/crypto/digests/if$new;)V

    return-void
.end method

.method public try([BII[J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-le p3, v1, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/digests/if$for;->if([J)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/digests/if$new;->this(Z)V

    iput v0, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/if$for;->if:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->for:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/if$for;->do:Lorg/bouncycastle/crypto/digests/if$new;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/digests/if$new;->do(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
