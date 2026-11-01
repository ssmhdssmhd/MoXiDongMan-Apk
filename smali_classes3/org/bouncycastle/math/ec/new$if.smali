.class public abstract Lorg/bouncycastle/math/ec/new$if;
.super Lorg/bouncycastle/math/ec/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/math/ec/new$if;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    :goto_1
    check-cast v0, Lorg/bouncycastle/math/ec/new$if;

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/math/ec/if;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    goto :goto_1
.end method

.method public c(I)Lorg/bouncycastle/math/ec/new$if;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    aput-object p1, v3, v5

    iget-boolean p1, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, v2, v1, v3, p1}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/bouncycastle/math/ec/new$if;

    return-object p1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, v2, p1, v1}, Lorg/bouncycastle/math/ec/if;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    goto :goto_1
.end method

.method public interface(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->break()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/new;->interface(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->while()[Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/for;

    aput-object p1, v2, v3

    iget-boolean p1, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v1, v4, v0, v2, p1}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->while()[Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public protected(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->break()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/new;->protected(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->while()[Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public strictfp()Z
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v4}, Lorg/bouncycastle/math/ec/for;->const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v1, v3, v6}, Lorg/bouncycastle/math/ec/for;->import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public transient(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public volatile()Z
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->native()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/for$do;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for$do;->throws()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/math/ec/if$if;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/if$if;->a(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/math/ec/for$do;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for$do;->throws()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/for$do;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for$do;->throws()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2

    :cond_5
    invoke-super {p0}, Lorg/bouncycastle/math/ec/new;->volatile()Z

    move-result v0

    return v0
.end method
