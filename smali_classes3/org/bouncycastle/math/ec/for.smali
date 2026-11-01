.class public abstract Lorg/bouncycastle/math/ec/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/for$do;,
        Lorg/bouncycastle/math/ec/for$if;,
        Lorg/bouncycastle/math/ec/for$for;,
        Lorg/bouncycastle/math/ec/for$new;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract case()Ljava/lang/String;
.end method

.method public abstract catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
.end method

.method public class(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/for;->public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public abstract do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
.end method

.method public abstract else()I
.end method

.method public abstract final()Lorg/bouncycastle/math/ec/for;
.end method

.method public for()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public abstract goto()Lorg/bouncycastle/math/ec/for;
.end method

.method public abstract if()Lorg/bouncycastle/math/ec/for;
.end method

.method public import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public native(I)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
.end method

.method public abstract public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
.end method

.method public return()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public abstract static()Ljava/math/BigInteger;
.end method

.method public abstract super()Lorg/bouncycastle/math/ec/for;
.end method

.method public this()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->for()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract throw()Lorg/bouncycastle/math/ec/for;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->else()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public while(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/for;->public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method
