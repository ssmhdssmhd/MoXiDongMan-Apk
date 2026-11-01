.class public Lorg/apache/commons/lang3/builder/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Landroid/support/v4/s00;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/r00<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/lang/Object;

.field private final if:Z

.field private final new:Ljava/lang/Object;

.field private final try:Lorg/apache/commons/lang3/builder/case;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do;->for:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/do;->new:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/do;->try:Lorg/apache/commons/lang3/builder/case;

    if-eq p1, p2, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rhs cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lhs cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public break(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$const;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$const;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[B[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do;->native()Landroid/support/v4/s00;

    move-result-object v0

    return-object v0
.end method

.method public case(Ljava/lang/String;JJ)Lorg/apache/commons/lang3/builder/do;
    .locals 9

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p2, p4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v8, Lorg/apache/commons/lang3/builder/do$new;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/lang3/builder/do$new;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;JJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public catch(Ljava/lang/String;[C[C)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$super;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$super;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[C[C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public class(Ljava/lang/String;[D[D)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$while;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$while;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const(Ljava/lang/String;[F[F)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$do;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$do;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[F[F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do(Ljava/lang/String;BB)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eq p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$class;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$class;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;BB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p2, p3, :cond_1

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3
    instance-of v1, v0, [Z

    if-eqz v1, :cond_3

    .line 4
    check-cast p2, [Z

    check-cast p3, [Z

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->import(Ljava/lang/String;[Z[Z)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 6
    check-cast p2, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->break(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    instance-of v1, v0, [C

    if-eqz v1, :cond_5

    .line 8
    check-cast p2, [C

    check-cast p3, [C

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->catch(Ljava/lang/String;[C[C)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 10
    check-cast p2, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->class(Ljava/lang/String;[D[D)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 11
    :cond_6
    instance-of v1, v0, [F

    if-eqz v1, :cond_7

    .line 12
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->const(Ljava/lang/String;[F[F)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 13
    :cond_7
    instance-of v1, v0, [I

    if-eqz v1, :cond_8

    .line 14
    check-cast p2, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->final(Ljava/lang/String;[I[I)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 15
    :cond_8
    instance-of v1, v0, [J

    if-eqz v1, :cond_9

    .line 16
    check-cast p2, [J

    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->super(Ljava/lang/String;[J[J)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 17
    :cond_9
    instance-of v0, v0, [S

    if-eqz v0, :cond_a

    .line 18
    check-cast p2, [S

    check-cast p3, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->while(Ljava/lang/String;[S[S)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 19
    :cond_a
    check-cast p2, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do;->throw(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/do;

    move-result-object p1

    return-object p1

    .line 20
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$goto;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$goto;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final(Ljava/lang/String;[I[I)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$for;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$for;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[I[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for(Ljava/lang/String;DD)Lorg/apache/commons/lang3/builder/do;
    .locals 9

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v8, Lorg/apache/commons/lang3/builder/do$throw;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/lang3/builder/do$throw;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;DD)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto(Ljava/lang/String;SS)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eq p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$case;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$case;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;SS)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Ljava/lang/String;CC)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eq p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$final;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$final;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public import(Ljava/lang/String;[Z[Z)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$catch;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$catch;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[Z[Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native()Landroid/support/v4/s00;
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/s00;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/do;->for:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/do;->new:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/lang3/builder/do;->try:Lorg/apache/commons/lang3/builder/case;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/s00;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/case;)V

    return-object v0
.end method

.method public new(Ljava/lang/String;FF)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$import;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$import;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public super(Ljava/lang/String;[J[J)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$try;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$try;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[J[J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this(Ljava/lang/String;ZZ)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eq p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$break;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$break;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throw(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$this;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$this;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public try(Ljava/lang/String;II)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eq p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$if;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$if;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public while(Ljava/lang/String;[S[S)Lorg/apache/commons/lang3/builder/do;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do;->if:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do;->do:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/do$else;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/do$else;-><init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[S[S)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
