.class public Landroid/support/v4/et;
.super Lorg/bouncycastle/math/ec/for$if;
.source "SourceFile"


# static fields
.field private static final for:[I

.field public static final if:Ljava/math/BigInteger;


# instance fields
.field public do:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/do;->import:Ljava/math/BigInteger;

    sput-object v0, Landroid/support/v4/et;->if:Ljava/math/BigInteger;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/et;->for:[I

    return-void

    :array_0
    .array-data 4
        0x4a0ea0b0    # 2336812.0f
        -0x3b11e4d9
        -0x52d01b88
        0x2f431806
        0x3dfbd7a7
        0x2b4d0099
        0x4fc1df0b
        0x2b832480
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/et;->do:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Landroid/support/v4/et;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/dt;->case(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/et;->do:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for Curve25519FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$if;-><init>()V

    iput-object p1, p0, Landroid/support/v4/et;->do:[I

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->extends([I)Z

    move-result v0

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "Curve25519Field"

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    check-cast p1, Landroid/support/v4/et;

    iget-object p1, p1, Landroid/support/v4/et;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/dt;->goto([I[I[I)V

    new-instance p1, Landroid/support/v4/et;

    invoke-direct {p1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    check-cast p1, Landroid/support/v4/et;

    iget-object p1, p1, Landroid/support/v4/et;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/dt;->do([I[I[I)V

    new-instance p1, Landroid/support/v4/et;

    invoke-direct {p1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object p1
.end method

.method public else()I
    .locals 1

    sget-object v0, Landroid/support/v4/et;->if:Ljava/math/BigInteger;

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
    instance-of v0, p1, Landroid/support/v4/et;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroid/support/v4/et;

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

    iget-object p1, p1, Landroid/support/v4/et;->do:[I

    invoke-static {v0, p1}, Landroid/support/v4/k21;->while([I[I)Z

    move-result p1

    return p1
.end method

.method public final()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/dt;->break([I[I)V

    new-instance v1, Landroid/support/v4/et;

    invoke-direct {v1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object v1
.end method

.method public goto()Lorg/bouncycastle/math/ec/for;
    .locals 3

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/dt;->if:[I

    iget-object v2, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v1, v2, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    new-instance v1, Landroid/support/v4/et;

    invoke-direct {v1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Landroid/support/v4/et;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

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

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/dt;->for([I[I)V

    new-instance v1, Landroid/support/v4/et;

    invoke-direct {v1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object v1
.end method

.method public new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    sget-object v1, Landroid/support/v4/dt;->if:[I

    check-cast p1, Landroid/support/v4/et;

    iget-object p1, p1, Landroid/support/v4/et;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/e01;->case([I[I[I)V

    iget-object p1, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v0, p1, v0}, Landroid/support/v4/dt;->goto([I[I[I)V

    new-instance p1, Landroid/support/v4/et;

    invoke-direct {p1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object p1
.end method

.method public public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    check-cast p1, Landroid/support/v4/et;

    iget-object p1, p1, Landroid/support/v4/et;->do:[I

    invoke-static {v1, p1, v0}, Landroid/support/v4/dt;->while([I[I[I)V

    new-instance p1, Landroid/support/v4/et;

    invoke-direct {p1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object p1
.end method

.method public return()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

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

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->h([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public super()Lorg/bouncycastle/math/ec/for;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->extends([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/support/v4/k21;->throws([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v1, v0, v1}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {v1, v1}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v1, v0, v1}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v2, v0, v2}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v3, v1, v3}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v1, v2, v1}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {v1, v4, v3}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v3, v2, v3}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/16 v4, 0xf

    invoke-static {v3, v4, v2}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v2, v3, v2}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/16 v4, 0x1e

    invoke-static {v2, v4, v3}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v3, v2, v3}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/16 v4, 0x3c

    invoke-static {v3, v4, v2}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v2, v3, v2}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/16 v4, 0xb

    invoke-static {v2, v4, v3}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v3, v1, v3}, Landroid/support/v4/dt;->goto([I[I[I)V

    const/16 v4, 0x78

    invoke-static {v3, v4, v1}, Landroid/support/v4/dt;->final([II[I)V

    invoke-static {v1, v2, v1}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {v1, v1}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v1, v2}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v0, v2}, Landroid/support/v4/k21;->while([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/support/v4/et;

    invoke-direct {v0, v1}, Landroid/support/v4/et;-><init>([I)V

    return-object v0

    :cond_1
    sget-object v3, Landroid/support/v4/et;->for:[I

    invoke-static {v1, v3, v1}, Landroid/support/v4/dt;->goto([I[I[I)V

    invoke-static {v1, v2}, Landroid/support/v4/dt;->const([I[I)V

    invoke-static {v0, v2}, Landroid/support/v4/k21;->while([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/et;

    invoke-direct {v0, v1}, Landroid/support/v4/et;-><init>([I)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v0}, Landroid/support/v4/k21;->throws([I)Z

    move-result v0

    return v0
.end method

.method public throw()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/et;->do:[I

    invoke-static {v1, v0}, Landroid/support/v4/dt;->const([I[I)V

    new-instance v1, Landroid/support/v4/et;

    invoke-direct {v1, v0}, Landroid/support/v4/et;-><init>([I)V

    return-object v1
.end method
