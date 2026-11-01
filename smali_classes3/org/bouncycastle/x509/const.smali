.class public Lorg/bouncycastle/x509/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Store;


# instance fields
.field private do:Ljava/security/Provider;

.field private if:Landroid/support/v4/nh2;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Landroid/support/v4/nh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/const;->do:Ljava/security/Provider;

    iput-object p2, p0, Lorg/bouncycastle/x509/const;->if:Landroid/support/v4/nh2;

    return-void
.end method

.method private static do(Lorg/bouncycastle/x509/throw$do;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/const;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/throw$do;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/nh2;

    invoke-virtual {v0, p1}, Landroid/support/v4/nh2;->if(Lorg/bouncycastle/x509/X509StoreParameters;)V

    new-instance p1, Lorg/bouncycastle/x509/const;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/throw$do;->if()Ljava/security/Provider;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/x509/const;-><init>(Ljava/security/Provider;Landroid/support/v4/nh2;)V

    return-object p1
.end method

.method public static for(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/bouncycastle/x509/const;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/u31;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/x509/throw;->this(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/x509/const;->new(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/const;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/const;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/u31;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/throw;->else(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/throw$do;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/x509/const;->do(Lorg/bouncycastle/x509/throw$do;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/const;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/support/v4/u31;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/u31;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/const;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/u31;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/x509/throw;->goto(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/throw$do;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/x509/const;->do(Lorg/bouncycastle/x509/throw$do;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/const;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/support/v4/u31;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/u31;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/const;->if:Landroid/support/v4/nh2;

    invoke-virtual {v0, p1}, Landroid/support/v4/nh2;->do(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public try()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/const;->do:Ljava/security/Provider;

    return-object v0
.end method
