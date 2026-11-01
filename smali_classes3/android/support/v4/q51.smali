.class public Landroid/support/v4/q51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final case:I = 0x1

.field public static final else:I = 0x2

.field public static final try:I


# instance fields
.field public do:Lorg/bouncycastle/asn1/new;

.field public for:Landroid/support/v4/b1;

.field public if:Lorg/bouncycastle/asn1/catch;

.field public new:Lorg/bouncycastle/asn1/instanceof;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/catch;Landroid/support/v4/b1;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/new;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/new;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/q51;->do:Lorg/bouncycastle/asn1/new;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Landroid/support/v4/q51;->if:Lorg/bouncycastle/asn1/catch;

    :cond_0
    iput-object p3, p0, Landroid/support/v4/q51;->for:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/q51;->new:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/new;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/new;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q51;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/q51;->if:Lorg/bouncycastle/asn1/catch;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/q51;->for:Landroid/support/v4/b1;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/q51;->new:Lorg/bouncycastle/asn1/instanceof;

    return-void

    :cond_1
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

    throw v0
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/q51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/q51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/q51;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/q51;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/q51;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/q51;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/q51;->case(Ljava/lang/Object;)Landroid/support/v4/q51;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public goto()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q51;->new:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q51;->for:Landroid/support/v4/b1;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q51;->if:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/q51;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q51;->if:Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/q51;->for:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q51;->new:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q51;->do:Lorg/bouncycastle/asn1/new;

    return-object v0
.end method
