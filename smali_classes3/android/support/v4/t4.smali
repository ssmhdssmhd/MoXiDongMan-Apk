.class public Landroid/support/v4/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Landroid/support/v4/import;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->for(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/p4;->else(Ljava/lang/Object;)Landroid/support/v4/p4;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/p4;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/support/v4/t4;->if(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/p4;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/p4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/support/v4/p4;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/t4;->if(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/p4;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/w4;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/w4;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/t4;-><init>(Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Landroid/support/v4/t4;->for(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/p4;->else(Ljava/lang/Object;)Landroid/support/v4/p4;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/p4;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/support/v4/t4;->if(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/p4;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private if(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/p4;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/support/v4/p4;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public break()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Landroid/support/v4/t4;->for(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public case(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/t4;
    .locals 2

    new-instance v0, Landroid/support/v4/t4;

    iget-object v1, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Landroid/support/v4/t4;-><init>(Ljava/util/Hashtable;)V

    iget-object v1, v0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public do(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)Landroid/support/v4/t4;
    .locals 3

    new-instance v0, Landroid/support/v4/t4;

    iget-object v1, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Landroid/support/v4/t4;-><init>(Ljava/util/Hashtable;)V

    new-instance v1, Landroid/support/v4/p4;

    new-instance v2, Lorg/bouncycastle/asn1/q;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Landroid/support/v4/p4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/t4;->if(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/p4;)V

    return-object v0
.end method

.method public else()I
    .locals 4

    iget-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public goto()Landroid/support/v4/import;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/p4;->else(Ljava/lang/Object;)Landroid/support/v4/p4;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/support/v4/p4;->else(Ljava/lang/Object;)Landroid/support/v4/p4;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/p4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/p4;

    return-object p1

    :cond_0
    check-cast p1, Landroid/support/v4/p4;

    return-object p1
.end method

.method public this()Landroid/support/v4/w4;
    .locals 2

    new-instance v0, Landroid/support/v4/w4;

    invoke-virtual {p0}, Landroid/support/v4/t4;->goto()Landroid/support/v4/import;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/w4;-><init>(Landroid/support/v4/import;)V

    return-object v0
.end method

.method public try(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/import;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/t4;->do:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Vector;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/p4;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Landroid/support/v4/p4;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    return-object v0
.end method
