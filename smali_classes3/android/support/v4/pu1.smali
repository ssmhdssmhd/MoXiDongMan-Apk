.class public Landroid/support/v4/pu1;
.super Lorg/bouncycastle/math/ec/for$if;
.source "SourceFile"


# static fields
.field public static final if:Ljava/math/BigInteger;


# instance fields
.field public do:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/this;->import:Ljava/math/BigInteger;

    sput-object v0, Landroid/support/v4/pu1;->if:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pu1;->do:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Landroid/support/v4/pu1;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/ou1;->new(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pu1;->do:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP256K1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pu1;->do:[I

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->extends([I)Z

    move-result v0

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP256K1Field"

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    check-cast p1, Landroid/support/v4/pu1;

    iget-object p1, p1, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/ou1;->case([I[I[I)V

    new-instance p1, Landroid/support/v4/pu1;

    invoke-direct {p1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    check-cast p1, Landroid/support/v4/pu1;

    iget-object p1, p1, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/ou1;->do([I[I[I)V

    new-instance p1, Landroid/support/v4/pu1;

    invoke-direct {p1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object p1
.end method

.method public else()I
    .locals 1

    sget-object v0, Landroid/support/v4/pu1;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/pu1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroid/support/v4/pu1;

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    iget-object p1, p1, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0, p1}, Landroid/support/v4/k21;->while([I[I)Z

    move-result p1

    return p1
.end method

.method public final()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/ou1;->goto([I[I)V

    new-instance v1, Landroid/support/v4/pu1;

    invoke-direct {v1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object v1
.end method

.method public goto()Lorg/bouncycastle/math/ec/for;
    .locals 3

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/ou1;->do:[I

    iget-object v2, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, v2, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    new-instance v1, Landroid/support/v4/pu1;

    invoke-direct {v1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Landroid/support/v4/pu1;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Landroid/support/v4/q3;->r([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/ou1;->for([I[I)V

    new-instance v1, Landroid/support/v4/pu1;

    invoke-direct {v1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object v1
.end method

.method public new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/ou1;->do:[I

    check-cast p1, Landroid/support/v4/pu1;

    iget-object p1, p1, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    iget-object p1, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0, p1, v0}, Landroid/support/v4/ou1;->case([I[I[I)V

    new-instance p1, Landroid/support/v4/pu1;

    invoke-direct {p1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object p1
.end method

.method public public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    check-cast p1, Landroid/support/v4/pu1;

    iget-object p1, p1, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/ou1;->const([I[I[I)V

    new-instance p1, Landroid/support/v4/pu1;

    invoke-direct {p1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object p1
.end method

.method public return()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/k21;->return([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->h([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public super()Lorg/bouncycastle/math/ec/for;
    .locals 11

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->extends([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/support/v4/k21;->throws([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/ou1;->catch([I[I)V

    invoke-static {v1, v0, v1}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/ou1;->catch([I[I)V

    invoke-static {v2, v0, v2}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v2, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {v3, v4, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v2, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    const/4 v5, 0x2

    invoke-static {v3, v5, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v1, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v3, v7, v6}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v6, v3, v6}, Landroid/support/v4/ou1;->case([I[I[I)V

    const/16 v7, 0x16

    invoke-static {v6, v7, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v6, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v7

    const/16 v8, 0x2c

    invoke-static {v3, v8, v7}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v7, v3, v7}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v9

    const/16 v10, 0x58

    invoke-static {v7, v10, v9}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v9, v7, v9}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {v9, v8, v7}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v7, v3, v7}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {v7, v4, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v2, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    const/16 v2, 0x17

    invoke-static {v3, v2, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v6, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    const/4 v2, 0x6

    invoke-static {v3, v2, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v1, v3}, Landroid/support/v4/ou1;->case([I[I[I)V

    invoke-static {v3, v5, v3}, Landroid/support/v4/ou1;->class([II[I)V

    invoke-static {v3, v1}, Landroid/support/v4/ou1;->catch([I[I)V

    invoke-static {v0, v1}, Landroid/support/v4/k21;->while([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/pu1;

    invoke-direct {v0, v3}, Landroid/support/v4/pu1;-><init>([I)V

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
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->throws([I)Z

    move-result v0

    return v0
.end method

.method public throw()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/pu1;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/ou1;->catch([I[I)V

    new-instance v1, Landroid/support/v4/pu1;

    invoke-direct {v1, v0}, Landroid/support/v4/pu1;-><init>([I)V

    return-object v1
.end method
