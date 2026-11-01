.class public abstract Lorg/bouncycastle/math/ec/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/new$if;,
        Lorg/bouncycastle/math/ec/new$for;,
        Lorg/bouncycastle/math/ec/new$new;,
        Lorg/bouncycastle/math/ec/new$try;
    }
.end annotation


# static fields
.field public static final else:[Lorg/bouncycastle/math/ec/for;


# instance fields
.field public case:Ljava/util/Hashtable;

.field public do:Lorg/bouncycastle/math/ec/if;

.field public for:Lorg/bouncycastle/math/ec/for;

.field public if:Lorg/bouncycastle/math/ec/for;

.field public new:[Lorg/bouncycastle/math/ec/for;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/math/ec/for;

    sput-object v0, Lorg/bouncycastle/math/ec/new;->else:[Lorg/bouncycastle/math/ec/for;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/new;->final(Lorg/bouncycastle/math/ec/if;)[Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/new;->case:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    return-void
.end method

.method public static final(Lorg/bouncycastle/math/ec/if;)[Lorg/bouncycastle/math/ec/for;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/if;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 p0, 0x6

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-array v1, v4, [Lorg/bouncycastle/math/ec/for;

    aput-object v2, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    aput-object p0, v1, v3

    return-object v1

    :cond_3
    new-array p0, v5, [Lorg/bouncycastle/math/ec/for;

    aput-object v2, p0, v0

    aput-object v2, p0, v3

    aput-object v2, p0, v4

    return-object p0

    :cond_4
    :goto_1
    new-array p0, v3, [Lorg/bouncycastle/math/ec/for;

    aput-object v2, p0, v0

    return-object p0

    :cond_5
    sget-object p0, Lorg/bouncycastle/math/ec/new;->else:[Lorg/bouncycastle/math/ec/for;

    return-object p0
.end method


# virtual methods
.method public a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract()Lorg/bouncycastle/math/ec/new;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->break()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/new;->public(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->goto()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/new;->continue(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method public break()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v0

    :goto_0
    return v0
.end method

.method public case()Lorg/bouncycastle/math/ec/for;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->if()V

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    return-object v0
.end method

.method public final catch()Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->new()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0
.end method

.method public class()[B
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public const(Z)[B
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p1, v1, [B

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    array-length p1, v2

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p1, v3

    array-length v0, v2

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object p1

    array-length v0, v2

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v3

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public continue(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->break()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not a projective coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/math/ec/new;->for(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/math/ec/new;->for(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public default()Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->break()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
.end method

.method public else()Lorg/bouncycastle/math/ec/for;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->if()V

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/new;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/new;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/new;->try(Lorg/bouncycastle/math/ec/new;)Z

    move-result p1

    return p1
.end method

.method public extends()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/math/ec/new;->static(ZZ)Z

    move-result v0

    return v0
.end method

.method public finally()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/bouncycastle/math/ec/new;->static(ZZ)Z

    move-result v0

    return v0
.end method

.method public for(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/math/ec/if;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract goto()Z
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    xor-int/2addr v0, v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public if()V
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public implements()Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p0, p0}, Lorg/bouncycastle/math/ec/new;->a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0
.end method

.method public import()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method

.method public instanceof(I)Lorg/bouncycastle/math/ec/new;
    .locals 1

    if-ltz p1, :cond_1

    move-object v0, p0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'e\' cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public interface(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->while()[Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public native()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method

.method public abstract new()Lorg/bouncycastle/math/ec/new;
.end method

.method public package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->default()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract private()Lorg/bouncycastle/math/ec/new;
.end method

.method public protected(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->while()[Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/bouncycastle/math/ec/if;->catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public public(I)Lorg/bouncycastle/math/ec/for;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public return()[Lorg/bouncycastle/math/ec/for;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/new;->else:[Lorg/bouncycastle/math/ec/for;

    return-object v0

    :cond_0
    new-array v2, v1, [Lorg/bouncycastle/math/ec/for;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/math/ec/new$do;

    invoke-direct {v2, p0, p1, p2}, Lorg/bouncycastle/math/ec/new$do;-><init>(Lorg/bouncycastle/math/ec/new;ZZ)V

    const-string p1, "bc_validity"

    invoke-virtual {v0, p0, p1, v2}, Lorg/bouncycastle/math/ec/if;->strictfp(Lorg/bouncycastle/math/ec/new;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/break;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->if()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public abstract strictfp()Z
.end method

.method public final super()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method

.method public switch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    return v0
.end method

.method public abstract synchronized()Lorg/bouncycastle/math/ec/new;
.end method

.method public this()Lorg/bouncycastle/math/ec/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    return-object v0
.end method

.method public final throw()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method

.method public throws()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INF"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract transient(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
.end method

.method public try(Lorg/bouncycastle/math/ec/new;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v7

    if-nez v6, :cond_9

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/bouncycastle/math/ec/new;

    aput-object p0, v2, v0

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/if;->package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/if;->abstract([Lorg/bouncycastle/math/ec/new;)V

    aget-object v1, v2, v0

    aget-object p1, v2, v3

    :goto_3
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    :goto_4
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public volatile()Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->native()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/do;->import(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final while()[Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method
