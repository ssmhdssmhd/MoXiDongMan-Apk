.class public Landroid/support/v4/dh2;
.super Lorg/bouncycastle/asn1/x509/this;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x509/this;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/asn1/x509/this;->if(Ljava/lang/String;I)Lorg/bouncycastle/asn1/final;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t recode value for oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->implements:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->b:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->finally:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/d;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/d;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->goto:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->const:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->default:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/x509/goto;->protected:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/bouncycastle/asn1/v;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/m;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_1
    new-instance p1, Lorg/bouncycastle/asn1/g;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/g;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
