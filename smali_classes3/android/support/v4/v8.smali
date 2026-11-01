.class public Landroid/support/v4/v8;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/m92;

.field private for:Lorg/bouncycastle/asn1/class;

.field private if:Landroid/support/v4/b1;

.field private new:Lorg/bouncycastle/asn1/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/m92;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v8;->do:Landroid/support/v4/m92;

    iput-object p2, p0, Landroid/support/v4/v8;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/v8;->for:Lorg/bouncycastle/asn1/class;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/v8;->new:Lorg/bouncycastle/asn1/g;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/m92;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/g;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/v8;->do:Landroid/support/v4/m92;

    iput-object p2, p0, Landroid/support/v4/v8;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/v8;->for:Lorg/bouncycastle/asn1/class;

    iput-object p4, p0, Landroid/support/v4/v8;->new:Lorg/bouncycastle/asn1/g;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/m92;->try(Ljava/lang/Object;)Landroid/support/v4/m92;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v8;->do:Landroid/support/v4/m92;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v8;->if:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v8;->for:Lorg/bouncycastle/asn1/class;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/v8;->new:Lorg/bouncycastle/asn1/g;

    :cond_0
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/v8;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/v8;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/v8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/v8;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/v8;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v8;->new:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method

.method public goto()Landroid/support/v4/m92;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v8;->do:Landroid/support/v4/m92;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v8;->for:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/v8;->do:Landroid/support/v4/m92;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v8;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v8;->for:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/v8;->new:Lorg/bouncycastle/asn1/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v8;->if:Landroid/support/v4/b1;

    return-object v0
.end method
