.class public abstract Lorg/bouncycastle/asn1/try;
.super Lorg/bouncycastle/asn1/final;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/catch;

.field public for:Lorg/bouncycastle/asn1/final;

.field public if:Lorg/bouncycastle/asn1/goto;

.field public new:I

.field public try:Lorg/bouncycastle/asn1/final;


# direct methods
.method public constructor <init>(Landroid/support/v4/import;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/final;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/try;->throw(Landroid/support/v4/import;I)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/catch;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/catch;

    iput-object v1, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/asn1/try;->throw(Landroid/support/v4/import;I)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/try;->throw(Landroid/support/v4/import;I)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/try;->throw(Landroid/support/v4/import;I)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Lorg/bouncycastle/asn1/import;

    if-eqz p1, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/try;->native(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input vector too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/final;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/try;->import(Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/try;->return(Lorg/bouncycastle/asn1/goto;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/try;->while(Lorg/bouncycastle/asn1/final;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/try;->native(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/final;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/try;->public(Lorg/bouncycastle/asn1/final;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;Lorg/bouncycastle/asn1/u;)V
    .locals 6

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/final;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/try;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V

    return-void
.end method

.method private import(Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method private native(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/try;->new:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private public(Lorg/bouncycastle/asn1/final;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method private return(Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method private throw(Landroid/support/v4/import;I)Lorg/bouncycastle/asn1/final;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->for(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few objects in input vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while(Lorg/bouncycastle/asn1/final;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public catch()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public const()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/try;->new:I

    return v0
.end method

.method public final()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/final;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/final;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public new(Lorg/bouncycastle/asn1/final;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/try;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/try;

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    iget-object p1, p1, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public super()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/final;
    .locals 7

    instance-of v0, p0, Lorg/bouncycastle/asn1/synchronized;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/synchronized;

    iget-object v2, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    iget-object v3, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    iget-object v4, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    iget v5, p0, Lorg/bouncycastle/asn1/try;->new:I

    iget-object v6, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/synchronized;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V

    return-object v0
.end method
