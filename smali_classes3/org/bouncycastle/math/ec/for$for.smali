.class public Lorg/bouncycastle/math/ec/for$for;
.super Lorg/bouncycastle/math/ec/for$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field public static final case:I = 0x2

.field public static final else:I = 0x3

.field public static final try:I = 0x1


# instance fields
.field private do:I

.field private for:[I

.field private if:I

.field public new:Lorg/bouncycastle/math/ec/case;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$do;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iput v2, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    new-array p3, v1, [I

    aput p2, p3, v0

    iput-object p3, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v3, 0x3

    iput v3, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    new-array v3, v3, [I

    aput p2, v3, v0

    aput p3, v3, v1

    aput p4, v3, v2

    iput-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    :goto_0
    iput p1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    new-instance p1, Lorg/bouncycastle/math/ec/case;

    invoke-direct {p1, p5}, Lorg/bouncycastle/math/ec/case;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be smaller than k3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value invalid in F2m field element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[ILorg/bouncycastle/math/ec/case;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/for$do;-><init>()V

    iput p1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    iput-object p2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    return-void
.end method

.method public static default(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/math/ec/for$for;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/math/ec/for$for;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/math/ec/for$for;

    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    iget v1, p1, Lorg/bouncycastle/math/ec/for$for;->do:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget v1, p1, Lorg/bouncycastle/math/ec/for$for;->if:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-static {p0, p1}, Landroid/support/v4/q3;->goto([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not elements of the same field F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the F2m field elements has incorrect representation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    return v0
.end method

.method public break()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->interface()Z

    move-result v0

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v3, p1, v1, v2}, Lorg/bouncycastle/math/ec/case;->transient(Lorg/bouncycastle/math/ec/case;I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object v0
.end method

.method public class(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/for$for;->const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p2, Lorg/bouncycastle/math/ec/for$for;

    iget-object p2, p2, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p3, Lorg/bouncycastle/math/ec/for$for;

    iget-object p3, p3, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/math/ec/case;->c(Lorg/bouncycastle/math/ec/case;I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {p2, p3, v2, v3}, Lorg/bouncycastle/math/ec/case;->c(Lorg/bouncycastle/math/ec/case;I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/case;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/case;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lorg/bouncycastle/math/ec/case;->case(Lorg/bouncycastle/math/ec/case;I)V

    iget p1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object p2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/math/ec/case;->e(I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/for$for;

    iget p2, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object p3, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-direct {p1, p2, p3, v1}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/case;

    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/math/ec/case;->case(Lorg/bouncycastle/math/ec/case;I)V

    new-instance p1, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-direct {p1, v1, v2, v0}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object p1
.end method

.method public else()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/for$for;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget v3, p1, Lorg/bouncycastle/math/ec/for$for;->if:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->do:I

    iget v3, p1, Lorg/bouncycastle/math/ec/for$for;->do:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-static {v1, v3}, Landroid/support/v4/q3;->goto([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/case;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extends()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final()Lorg/bouncycastle/math/ec/for;
    .locals 0

    return-object p0
.end method

.method public finally()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->catch()I

    move-result v0

    return v0
.end method

.method public goto()Lorg/bouncycastle/math/ec/for;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/math/ec/case;->protected(I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-static {v1}, Landroid/support/v4/q3;->q([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/for;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/case;->new()Lorg/bouncycastle/math/ec/case;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object v0
.end method

.method public import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p1, Lorg/bouncycastle/math/ec/for$for;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    check-cast p2, Lorg/bouncycastle/math/ec/for$for;

    iget-object p2, p2, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/math/ec/case;->p(I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {p1, p2, v2, v3}, Lorg/bouncycastle/math/ec/case;->c(Lorg/bouncycastle/math/ec/case;I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object p1

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/case;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/math/ec/case;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/math/ec/case;->case(Lorg/bouncycastle/math/ec/case;I)V

    iget p1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object p2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/math/ec/case;->e(I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/for$for;

    iget p2, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    invoke-direct {p1, p2, v0, v1}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object p1
.end method

.method public native(I)Lorg/bouncycastle/math/ec/for;
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v3, p1, v1, v2}, Lorg/bouncycastle/math/ec/case;->b(II[I)Lorg/bouncycastle/math/ec/case;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    :goto_0
    return-object v0
.end method

.method public new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->goto()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/for$for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public package()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public private()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    return v0
.end method

.method public public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/for$for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public return()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->s()Z

    move-result v0

    return v0
.end method

.method public static()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->t()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public super()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->interface()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->volatile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/for$for;->native(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/case;->volatile()Z

    move-result v0

    return v0
.end method

.method public throw()Lorg/bouncycastle/math/ec/for;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/for$for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/for$for;->for:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/math/ec/case;->a(I[I)Lorg/bouncycastle/math/ec/case;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    return-object v0
.end method

.method public while(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/for$for;->import(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method
