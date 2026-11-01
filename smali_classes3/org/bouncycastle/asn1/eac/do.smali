.class public Lorg/bouncycastle/asn1/eac/do;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static new:I = 0x1

.field private static try:I = 0x2


# instance fields
.field private do:Lorg/bouncycastle/asn1/eac/for;

.field private for:I

.field private if:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/do;->while(Lorg/bouncycastle/asn1/do;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/for;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/do;->if:[B

    iget p1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    sget p2, Lorg/bouncycastle/asn1/eac/do;->new:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    sget p2, Lorg/bouncycastle/asn1/eac/do;->try:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/else;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/do;->throw(Lorg/bouncycastle/asn1/else;)V

    return-void
.end method

.method public static const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/do;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/do;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/do;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/eac/do;

    invoke-static {p0}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/do;-><init>(Lorg/bouncycastle/asn1/do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Landroid/support/v4/return;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/return;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private throw(Lorg/bouncycastle/asn1/else;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/do;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/do;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/do;->while(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private while(Lorg/bouncycastle/asn1/do;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/bouncycastle/asn1/do;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/bouncycastle/asn1/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v2

    const/16 v3, 0x37

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/eac/for;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/for;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    iget v1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    sget v2, Lorg/bouncycastle/asn1/eac/do;->new:I

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/do;->if:[B

    iget v1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    sget v2, Lorg/bouncycastle/asn1/eac/do;->try:I

    :goto_1
    or-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    iget v0, p0, Lorg/bouncycastle/asn1/eac/do;->for:I

    sget v1, Lorg/bouncycastle/asn1/eac/do;->try:I

    sget v2, Lorg/bouncycastle/asn1/eac/do;->new:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/eac/case;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/eac/case;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/for;->case()Lorg/bouncycastle/asn1/eac/new;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/new;->new()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/case;-><init>(I)V

    return-object v0
.end method

.method public case()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->this()I

    move-result v0

    return v0
.end method

.method public catch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->case()Lorg/bouncycastle/asn1/eac/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/new;->new()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public class()Landroid/support/v4/sg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->else()Landroid/support/v4/sg;

    move-result-object v0

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/eac/else;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->new()Lorg/bouncycastle/asn1/eac/else;

    move-result-object v0

    return-object v0
.end method

.method public final()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->case()Lorg/bouncycastle/asn1/eac/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/new;->new()I

    move-result v0

    return v0
.end method

.method public goto()Lorg/bouncycastle/asn1/eac/else;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->try()Lorg/bouncycastle/asn1/eac/else;

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/xg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->break()Landroid/support/v4/xg;

    move-result-object v0

    return-object v0
.end method

.method public super()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/catch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->case()Lorg/bouncycastle/asn1/eac/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/new;->case()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-instance v4, Lorg/bouncycastle/asn1/j;

    iget-object v5, p0, Lorg/bouncycastle/asn1/eac/do;->if:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/transient;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/transient;-><init>(ILandroid/support/v4/import;)V

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public try()Lorg/bouncycastle/asn1/eac/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/do;->do:Lorg/bouncycastle/asn1/eac/for;

    return-object v0
.end method
