.class public Lorg/bouncycastle/asn1/eac/if;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final case:I = 0x2

.field private static final try:I = 0x1


# instance fields
.field private final do:Lorg/bouncycastle/asn1/do;

.field private for:[B

.field private if:Lorg/bouncycastle/asn1/eac/for;

.field private new:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->for:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->new:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/if;->do:Lorg/bouncycastle/asn1/do;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->goto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/do;->throw(I)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/if;->break(Lorg/bouncycastle/asn1/do;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/if;->new:[B

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/if;->break(Lorg/bouncycastle/asn1/do;)V

    :goto_0
    return-void
.end method

.method private break(Lorg/bouncycastle/asn1/do;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/do;->throw(I)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v3

    const/16 v4, 0x37

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/asn1/eac/for;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/for;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/eac/if;->if:Lorg/bouncycastle/asn1/eac/for;

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tag, not an CV Certificate Request element:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/eac/if;->for:[B

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CARDHOLDER_CERTIFICATE in request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE in request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/if;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/if;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/if;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/eac/if;

    invoke-static {p0}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/if;-><init>(Lorg/bouncycastle/asn1/do;)V
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


# virtual methods
.method public else()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public goto()Landroid/support/v4/ug1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->if:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/for;->class()Landroid/support/v4/ug1;

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/eac/for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->if:Lorg/bouncycastle/asn1/eac/for;

    return-object v0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->new:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->do:Lorg/bouncycastle/asn1/do;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/if;->if:Lorg/bouncycastle/asn1/eac/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-instance v4, Lorg/bouncycastle/asn1/j;

    iget-object v5, p0, Lorg/bouncycastle/asn1/eac/if;->for:[B

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

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/if;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
