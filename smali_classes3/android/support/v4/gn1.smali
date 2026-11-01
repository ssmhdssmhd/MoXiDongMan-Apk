.class public Landroid/support/v4/gn1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final case:I = 0x1

.field public static final new:I = -0x1

.field public static final try:I


# instance fields
.field private do:Landroid/support/v4/rg;

.field private for:[B

.field private if:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/u;

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Landroid/support/v4/gn1;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/rg;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gn1;->do:Landroid/support/v4/rg;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/gn1;->if:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/gn1;->for:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/gn1;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/gn1;->try(Ljava/lang/Object;)Landroid/support/v4/gn1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/gn1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/gn1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/gn1;

    invoke-static {p0}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/gn1;-><init>(Landroid/support/v4/rg;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/gn1;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/gn1;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Landroid/support/v4/gn1;

    return-object p0
.end method


# virtual methods
.method public else()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gn1;->do:Landroid/support/v4/rg;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/gn1;->if:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public new()[B
    .locals 4

    iget-object v0, p0, Landroid/support/v4/gn1;->do:Landroid/support/v4/rg;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t decode certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/gn1;->if:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/gn1;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/gn1;->if:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/asn1/j;

    iget-object v3, p0, Landroid/support/v4/gn1;->if:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/gn1;->for:[B

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/asn1/j;

    iget-object v3, p0, Landroid/support/v4/gn1;->for:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/gn1;->do:Landroid/support/v4/rg;

    invoke-virtual {v0}, Landroid/support/v4/rg;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
