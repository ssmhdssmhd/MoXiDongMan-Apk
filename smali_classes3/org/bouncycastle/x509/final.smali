.class public Lorg/bouncycastle/x509/final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/x509/util/StreamParser;


# instance fields
.field private do:Ljava/security/Provider;

.field private if:Lorg/bouncycastle/x509/super;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/x509/super;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/final;->do:Ljava/security/Provider;

    iput-object p2, p0, Lorg/bouncycastle/x509/final;->if:Lorg/bouncycastle/x509/super;

    return-void
.end method

.method private static do(Lorg/bouncycastle/x509/throw$do;)Lorg/bouncycastle/x509/final;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/throw$do;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/super;

    new-instance v1, Lorg/bouncycastle/x509/final;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/throw$do;->if()Ljava/security/Provider;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/x509/final;-><init>(Ljava/security/Provider;Lorg/bouncycastle/x509/super;)V

    return-object v1
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/final;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/t31;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/throw;->this(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/x509/final;->new(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/final;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;)Lorg/bouncycastle/x509/final;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/t31;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/throw;->else(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/throw$do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/x509/final;->do(Lorg/bouncycastle/x509/throw$do;)Lorg/bouncycastle/x509/final;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Landroid/support/v4/t31;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/t31;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static new(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/final;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/t31;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/x509/throw;->goto(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/throw$do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/x509/final;->do(Lorg/bouncycastle/x509/throw$do;)Lorg/bouncycastle/x509/final;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/support/v4/t31;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/t31;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/final;->if:Lorg/bouncycastle/x509/super;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/super;->do(Ljava/io/InputStream;)V

    return-void
.end method

.method public else([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/final;->if:Lorg/bouncycastle/x509/super;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/super;->do(Ljava/io/InputStream;)V

    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/x12;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/final;->if:Lorg/bouncycastle/x509/super;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/super;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/x12;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/final;->if:Lorg/bouncycastle/x509/super;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/super;->for()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/final;->do:Ljava/security/Provider;

    return-object v0
.end method
