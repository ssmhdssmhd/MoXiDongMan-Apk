.class public Landroid/support/v4/ov1;
.super Lorg/bouncycastle/math/ec/for$do;
.source "SourceFile"


# instance fields
.field public do:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$do;-><init>()V

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ov1;->do:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$do;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc1

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/nv1;->new(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ov1;->do:[J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecT193FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$do;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ov1;->do:[J

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v0}, Landroid/support/v4/k21;->finally([J)Z

    move-result v0

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "SecT193Field"

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    check-cast p1, Landroid/support/v4/ov1;

    iget-object p1, p1, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, p1, v0}, Landroid/support/v4/nv1;->catch([J[J[J)V

    new-instance p1, Landroid/support/v4/ov1;

    invoke-direct {p1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object p1
.end method

.method public class(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/ov1;->const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    check-cast p1, Landroid/support/v4/ov1;

    iget-object p1, p1, Landroid/support/v4/ov1;->do:[J

    check-cast p2, Landroid/support/v4/ov1;

    iget-object p2, p2, Landroid/support/v4/ov1;->do:[J

    check-cast p3, Landroid/support/v4/ov1;

    iget-object p3, p3, Landroid/support/v4/ov1;->do:[J

    invoke-static {}, Landroid/support/v4/k21;->super()[J

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/nv1;->class([J[J[J)V

    invoke-static {p2, p3, v1}, Landroid/support/v4/nv1;->class([J[J[J)V

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/nv1;->const([J[J)V

    new-instance p2, Landroid/support/v4/ov1;

    invoke-direct {p2, p1}, Landroid/support/v4/ov1;-><init>([J)V

    return-object p2
.end method

.method public default()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    check-cast p1, Landroid/support/v4/ov1;

    iget-object p1, p1, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, p1, v0}, Landroid/support/v4/nv1;->do([J[J[J)V

    new-instance p1, Landroid/support/v4/ov1;

    invoke-direct {p1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object p1
.end method

.method public else()I
    .locals 1

    const/16 v0, 0xc1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/ov1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroid/support/v4/ov1;

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    iget-object p1, p1, Landroid/support/v4/ov1;->do:[J

    invoke-static {v0, p1}, Landroid/support/v4/k21;->import([J[J)Z

    move-result p1

    return p1
.end method

.method public extends()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final()Lorg/bouncycastle/math/ec/for;
    .locals 0

    return-object p0
.end method

.method public finally()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, v0}, Landroid/support/v4/nv1;->break([J[J)V

    new-instance v1, Landroid/support/v4/ov1;

    invoke-direct {v1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/support/v4/q3;->t([JII)I

    move-result v0

    const v1, 0x1d731f

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, v0}, Landroid/support/v4/nv1;->for([J[J)V

    new-instance v1, Landroid/support/v4/ov1;

    invoke-direct {v1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object v1
.end method

.method public import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    check-cast p1, Landroid/support/v4/ov1;

    iget-object p1, p1, Landroid/support/v4/ov1;->do:[J

    check-cast p2, Landroid/support/v4/ov1;

    iget-object p2, p2, Landroid/support/v4/ov1;->do:[J

    invoke-static {}, Landroid/support/v4/k21;->super()[J

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/nv1;->while([J[J)V

    invoke-static {p1, p2, v1}, Landroid/support/v4/nv1;->class([J[J[J)V

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/nv1;->const([J[J)V

    new-instance p2, Landroid/support/v4/ov1;

    invoke-direct {p2, p1}, Landroid/support/v4/ov1;-><init>([J)V

    return-object p2
.end method

.method public native(I)Lorg/bouncycastle/math/ec/for;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, p1, v0}, Landroid/support/v4/nv1;->import([JI[J)V

    new-instance p1, Landroid/support/v4/ov1;

    invoke-direct {p1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object p1
.end method

.method public new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->goto()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ov1;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public package()I
    .locals 1

    const/16 v0, 0xc1

    return v0
.end method

.method public private()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/ov1;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public return()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v0}, Landroid/support/v4/k21;->i([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public super()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, v0}, Landroid/support/v4/nv1;->super([J[J)V

    new-instance v1, Landroid/support/v4/ov1;

    invoke-direct {v1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object v1
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v0}, Landroid/support/v4/k21;->default([J)Z

    move-result v0

    return v0
.end method

.method public throw()Lorg/bouncycastle/math/ec/for;
    .locals 2

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v1, v0}, Landroid/support/v4/nv1;->throw([J[J)V

    new-instance v1, Landroid/support/v4/ov1;

    invoke-direct {v1, v0}, Landroid/support/v4/ov1;-><init>([J)V

    return-object v1
.end method

.method public throws()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov1;->do:[J

    invoke-static {v0}, Landroid/support/v4/nv1;->native([J)I

    move-result v0

    return v0
.end method

.method public while(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/ov1;->import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method
