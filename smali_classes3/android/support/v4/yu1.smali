.class public Landroid/support/v4/yu1;
.super Lorg/bouncycastle/math/ec/for$if;
.source "SourceFile"


# static fields
.field public static final if:Ljava/math/BigInteger;


# instance fields
.field public do:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/class;->import:Ljava/math/BigInteger;

    sput-object v0, Landroid/support/v4/yu1;->if:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yu1;->do:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Landroid/support/v4/yu1;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/xu1;->for(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yu1;->do:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP521R1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    iput-object p1, p0, Landroid/support/v4/yu1;->do:[I

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/yu1;->do:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/support/v4/q21;->synchronized(I[I)Z

    move-result v0

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP521R1Field"

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    check-cast p1, Landroid/support/v4/yu1;

    iget-object p1, p1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/xu1;->else([I[I[I)V

    new-instance p1, Landroid/support/v4/yu1;

    invoke-direct {p1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    check-cast p1, Landroid/support/v4/yu1;

    iget-object p1, p1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/xu1;->do([I[I[I)V

    new-instance p1, Landroid/support/v4/yu1;

    invoke-direct {p1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object p1
.end method

.method public else()I
    .locals 1

    sget-object v0, Landroid/support/v4/yu1;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/yu1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroid/support/v4/yu1;

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    iget-object p1, p1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v0, v1, p1}, Landroid/support/v4/q21;->abstract(I[I[I)Z

    move-result p1

    return p1
.end method

.method public final()Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/xu1;->goto([I[I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object v1
.end method

.method public goto()Lorg/bouncycastle/math/ec/for;
    .locals 3

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/xu1;->do:[I

    iget-object v2, p0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v2, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Landroid/support/v4/yu1;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Landroid/support/v4/q3;->r([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/xu1;->if([I[I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object v1
.end method

.method public new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/xu1;->do:[I

    check-cast p1, Landroid/support/v4/yu1;

    iget-object p1, p1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    iget-object p1, p0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v0, p1, v0}, Landroid/support/v4/xu1;->else([I[I[I)V

    new-instance p1, Landroid/support/v4/yu1;

    invoke-direct {p1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object p1
.end method

.method public public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    check-cast p1, Landroid/support/v4/yu1;

    iget-object p1, p1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/xu1;->const([I[I[I)V

    new-instance p1, Landroid/support/v4/yu1;

    invoke-direct {p1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object p1
.end method

.method public return()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/yu1;->do:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q21;->strictfp([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/yu1;->do:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/support/v4/q21;->a0(I[I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public super()Lorg/bouncycastle/math/ec/for;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/yu1;->do:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/support/v4/q21;->synchronized(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Landroid/support/v4/q21;->instanceof(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v3

    const/16 v4, 0x207

    invoke-static {v0, v4, v2}, Landroid/support/v4/xu1;->class([II[I)V

    invoke-static {v2, v3}, Landroid/support/v4/xu1;->catch([I[I)V

    invoke-static {v1, v0, v3}, Landroid/support/v4/q21;->abstract(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/yu1;

    invoke-direct {v0, v2}, Landroid/support/v4/yu1;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public this()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/yu1;->do:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/support/v4/q21;->instanceof(I[I)Z

    move-result v0

    return v0
.end method

.method public throw()Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/xu1;->catch([I[I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v0}, Landroid/support/v4/yu1;-><init>([I)V

    return-object v1
.end method
