.class public Lorg/bouncycastle/asn1/cms/else;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private for:Ljava/lang/Object;

.field private if:Lorg/bouncycastle/asn1/goto;

.field private new:Z

.field private try:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/else;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/else;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/else;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->throw()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/else;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/else;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/else;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/else;->new:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/else;->try:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/else;->new:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public else()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public for()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->import()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/else;->new:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/else;->try:Z

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/else;->for:Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new()Lorg/bouncycastle/asn1/cms/new;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cms/new;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/else;->do:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/new;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0
.end method
