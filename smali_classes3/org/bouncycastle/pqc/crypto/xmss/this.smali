.class final Lorg/bouncycastle/pqc/crypto/xmss/this;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

.field private for:[B

.field private final if:Lorg/bouncycastle/pqc/crypto/xmss/case;

.field private new:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "params == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/case;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/case;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->for:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->new:[B

    return-void
.end method

.method private do([BIILorg/bouncycastle/pqc/crypto/xmss/goto;)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v0

    const-string v1, "startHash == null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v1, p1

    if-ne v1, v0, :cond_3

    const-string v1, "otsHashAddress == null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->try()[B

    move-result-object v1

    const-string v2, "otsHashAddress byte array == null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p3, v3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/this;->do([BIILorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p2

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->case()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p2

    sub-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->new:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->try()[B

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->case()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->new:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->try()[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object p2

    new-array v1, v0, [B

    :goto_0
    if-ge p3, v0, :cond_1

    aget-byte v2, p1, p3

    aget-byte v3, p2, p3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    invoke-virtual {p1, p4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->do([B[B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max chain length must not be greater than w"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startHash needs to be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private for(I)[B
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->for:[B

    int-to-long v2, p1

    const/16 p1, 0x20

    invoke-static {v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if([BII)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "msg == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "w needs to be 4 or 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    div-int/2addr v1, v0

    if-gt p3, v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x8

    :goto_2
    if-ltz v3, :cond_3

    aget-byte v4, p1, v2

    shr-int/2addr v4, v3

    add-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, p3, :cond_2

    return-object v1

    :cond_2
    sub-int/2addr v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outLength too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public break()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/class;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->for(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/class;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/class;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    return-object v0
.end method

.method public catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->try()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public class([B[B)V
    .locals 2

    const-string v0, "secretKeySeed == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "publicSeed == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->for:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->new:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 6

    const-string v0, "messageDigest == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "otsHashAddress == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->if([BII)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v3

    mul-int v1, v1, v3

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v3

    mul-int v2, v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v3, v1

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->if([BII)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result p2

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->for(I)[B

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v0, v4, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->do([BIILorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/final;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/final;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public else(Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;
    .locals 6

    const-string v0, "otsHashAddress == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->for(I)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v1, v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->do([BIILorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/const;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/const;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    return-object p1
.end method

.method public final([BLorg/bouncycastle/pqc/crypto/xmss/final;Lorg/bouncycastle/pqc/crypto/xmss/goto;)Z
    .locals 2

    const-string v0, "messageDigest == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "signature == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "otsHashAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->goto([BLorg/bouncycastle/pqc/crypto/xmss/final;Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/const;->do()[[B

    move-result-object p1

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->else(Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/const;->do()[[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->do([[B[[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto([BLorg/bouncycastle/pqc/crypto/xmss/final;Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;
    .locals 6

    const-string v0, "messageDigest == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "signature == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "otsHashAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->if([BII)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v3

    mul-int v1, v1, v3

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v3

    mul-int v2, v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v3, v1

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->if([BII)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v1

    new-array v1, v1, [[B

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/final;->do()[[B

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v2, v3, v4, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->do([BIILorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/const;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/const;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public new()Lorg/bouncycastle/pqc/crypto/xmss/case;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/case;

    return-object v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/catch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/this;->do:Lorg/bouncycastle/pqc/crypto/xmss/catch;

    return-object v0
.end method
