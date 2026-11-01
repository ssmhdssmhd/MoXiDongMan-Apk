.class Lorg/bouncycastle/pqc/crypto/xmss/interface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/bouncycastle/pqc/crypto/xmss/this;I[BLorg/bouncycastle/pqc/crypto/xmss/abstract;Lorg/bouncycastle/pqc/crypto/xmss/goto;I)Lorg/bouncycastle/pqc/crypto/xmss/default;
    .locals 9

    array-length v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "signature == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "otsHashAddress == null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;-><init>()V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->goto()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for()Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p4}, Lorg/bouncycastle/pqc/crypto/xmss/this;->goto([BLorg/bouncycastle/pqc/crypto/xmss/final;Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;

    move-result-object p2

    const/4 p4, 0x2

    new-array v2, p4, [Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/const;Lorg/bouncycastle/pqc/crypto/xmss/else;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->goto()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    const/4 v3, 0x1

    shl-int v4, v3, p2

    div-int v4, p5, v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    if-nez v8, :cond_0

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->else()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->goto()I

    move-result v5

    div-int/2addr v5, p4

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    aget-object v4, v2, v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-static {p0, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->if(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/throw;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/default;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    aput-object v4, v2, v3

    goto :goto_1

    :cond_0
    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->else()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->goto()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/2addr v5, p4

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/default;

    aget-object v5, v2, v0

    invoke-static {p0, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->if(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/throw;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/default;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    aput-object v4, v2, v3

    :goto_1
    aget-object v3, v2, v3

    aput-object v3, v2, v0

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_1
    aget-object p0, v2, v0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
