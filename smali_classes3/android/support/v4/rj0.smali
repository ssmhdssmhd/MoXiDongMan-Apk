.class public Landroid/support/v4/rj0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final case:I = 0x1

.field public static final try:I


# instance fields
.field public do:Landroid/support/v4/co0;

.field public for:Landroid/support/v4/q51;

.field public if:Landroid/support/v4/ug0;

.field private new:I


# direct methods
.method public constructor <init>(Landroid/support/v4/co0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/rj0;-><init>(Landroid/support/v4/co0;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/co0;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/rj0;->new:I

    iput-object p1, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    iput p2, p0, Landroid/support/v4/rj0;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/q51;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/rj0;->new:I

    iput-object p1, p0, Landroid/support/v4/rj0;->for:Landroid/support/v4/q51;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ug0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/rj0;-><init>(Landroid/support/v4/ug0;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ug0;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/rj0;->new:I

    iput-object p1, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    iput p2, p0, Landroid/support/v4/rj0;->new:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/rj0;->new:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Landroid/support/v4/co0;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/co0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/rj0;->new:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/rj0;->new:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v1}, Landroid/support/v4/q51;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/q51;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/rj0;->for:Landroid/support/v4/q51;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v1}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Landroid/support/v4/co0;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/co0;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Landroid/support/v4/rj0;->new:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/rj0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/rj0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/rj0;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/rj0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/rj0;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/rj0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/rj0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/q51;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rj0;->for:Landroid/support/v4/q51;

    return-object v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/rj0;->new:I

    return v0
.end method

.method public new()Landroid/support/v4/co0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    iget v0, p0, Landroid/support/v4/rj0;->new:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v3, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    invoke-direct {v3, v1, v1, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v3, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    invoke-direct {v3, v1, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v2, p0, Landroid/support/v4/rj0;->for:Landroid/support/v4/q51;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/rj0;->for:Landroid/support/v4/q51;

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/rj0;->do:Landroid/support/v4/co0;

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rj0;->if:Landroid/support/v4/ug0;

    return-object v0
.end method
